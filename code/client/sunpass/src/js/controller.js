// controller for creating a new instance of application.
gtp.controllers = Ext.regController("load",{
	show: function(options) {
		
		gtp.views.loginPage=new Ext.Panel({
			fullscreen: true,
			layout: 'card',
			items: [{
				id: 'loginpage',
				layout: {
					type: 'vbox',
					pack: 'center'
				},
				items: [{
					html: 'Username:'
				},{
					xtype: 'emailfield',
					id: 'lpemailid',
					placeHolder: 'Email',
					border: '10 5 3 10',
					value: gtp.utils.dataStore.getValueOfKey('username')
				},{
					html: 'password:',
					align: 'left'
				},{
					xtype: 'passwordfield',
					id: 'lppassword',
					placeHolder: 'Password',
					border: '10 5 3 10',
					value: gtp.utils.dataStore.getValueOfKey('password')
				},{
					layout: 'hbox',
					items: [{
						xtype: 'button',
						ui: 'round',
						text: 'Sign in',
						handler: function(button, event){
							if(!gtp.views.loginPage.down('#lpemailid').getValue()) {
								Ext.Msg.alert(gtp.dict.loginform_username);
							}
							else if(!gtp.views.loginPage.down('#lppassword').getValue()) {
								Ext.Msg.alert(gtp.dict.loginform_password);
							}
							else {
								gtp.views.loginPage.setLoading(true);
								button.setDisabled(true);
								var rnu = Ext.getCmp('regnu');
								rnu.setDisabled(true);
								var un = Ext.getCmp('lpemailid').getValue();
								var pwd = Ext.getCmp('lppassword').getValue();
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','logging')).get('url'),
									params: {
										json: Ext.encode({
											userName: un,
											password: pwd,
											deviceDetails: {
												deviceId: options.deviceDetails.deviceId,
												deviceName: options.deviceDetails.type
											} 
										})
									},
									success: function(response){
										gtp.views.loginPage.setLoading(false);
										var decres=Ext.decode(response.responseText);
										var res=decres.response.response;
										
										if(res.userExists=="Y" && res.passwordCorrect=="Y") {
											// Store username and password locally.
											gtp.utils.dataStore.setValueOfKey('username', un);
											gtp.utils.dataStore.setValueOfKey('password', pwd);
											
											var encodedString=base64_encode(un+':'+pwd);
											Ext.Ajax.defaultHeaders.Authorization= "Basic "+encodedString;
											Ext.dispatch({
												controller: 'load',
												action: 'view',
												loginDetails: {
													username: un,
													password: pwd
												}
											});
										}
										else if(res.userExists=="Y" && res.passwordCorrect=="N"){
											button.setDisabled(false);
											rnu.setDisabled(false);
											Ext.Msg.alert('Incorrect',gtp.dict.loginform_pwd_fail);
										}
										else {
											Ext.Msg.alert(gtp.dict.login_failure);
											rnu.setDisabled(false);
											button.setDisabled(false);
										}
									},
									failure: function(response){
										gtp.views.loginPage.setLoading(false);
										button.setDisabled(false);
										rnu.setDisabled(false);
										Ext.Msg.alert(gtp.dict.login_failure);
										gtp.log('Login Authentication failed with status: '+response.status);
										console.log('Login Authentication failed with status: '+response.status);
									}
								});
							}
						}
					},{
						xtype: 'button',
						id: 'regnu',
						text: 'Register',
						ui: 'round',
						handler: function(){
							gtp.views.loginPage.setActiveItem('regpage', 'fade');
						}
					}]				
				}]
			},{
				xtype: 'form',
				id: 'regpage',
				layout: {
					type:'vbox',
					pack: 'center'
				},
				items: [{
					xytpe: 'fieldset',
					items: [{
						xtype: 'emailfield',
						id: 'rpemailid',
						name: 'emailid',
						placeHolder: 'Email',
						border: '10 5 3 10'
					},{
						xtype: 'passwordfield',
						id: 'rppassword',
						name: 'password',
						placeHolder: 'Password',
						border: '10 5 3 10'
					},{
						xtype: 'passwordfield',
						id: 'conpwd',
						name: 'confirmpassword',
						placeHolder: 'Confirm Password',
						border: '10 5 3 10'
					}]
				},{
					layout: 'hbox',
					items: [{
						xtype: 'button',
						ui: 'round',
						style: 'margin-left: 1px',
						text: 'Register',
						handler: function(button, event){
							var eid = Ext.getCmp('rpemailid').getValue();
							var pwd = Ext.getCmp('rppassword').getValue();
							var cpwd = Ext.getCmp('conpwd').getValue();
							if(!gtp.validateEmail(eid))
								Ext.Msg.alert(gtp.dict.regform_invalidemail);
							else if(pwd.length < 8)
								Ext.Msg.alert('Password','Minimum 8 characters');
							else if(pwd != cpwd)
								Ext.Msg.alert(gtp.dict.regform_pwds);
							else
							{
								gtp.views.loginPage.setLoading(true);
								button.setDisabled(true);
								console.log(webServices.getAt(webServices.findExact('service','regnewuser')).get('url'));
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','regnewuser')).get('url'),
									method: 'POST',
									params: {
										json: Ext.encode({
											userName: eid,
											password: pwd,
											deviceDetails: {
												deviceId: options.deviceDetails.deviceId,
												deviceName: options.deviceDetails.type
											}
										})
									},
									success: function(response) {
										gtp.views.loginPage.setLoading(false);
										console.log('user registration response '+response.responseText);
										var resobj = Ext.decode(response.responseText);
										if(resobj.status != 'success')
											Ext.Msg.alert('Invalid', resobj.response.description);
										// Store username and password locally.
										gtp.utils.dataStore.setValueOfKey('username', eid);
										gtp.utils.dataStore.setValueOfKey('password', pwd);
										gtp.views.loginPage.down('#lpemailid').setValue('');
										gtp.views.loginPage.down('#lppassword').setValue('');
										gtp.showNotifications(resobj.response.notifications);
										gtp.parse(resobj.response.commands);
										gtp.views.loginPage.setActiveItem('loginpage', 'fade');
									},
									failure: function(response) {
										gtp.views.loginPage.setLoading(false);
										button.setDisabled(false);
										gtp.log('user registration failed with status code'+response.status);
										console.log('user registration failed with status code'+response.status);
									}
								});
							}
						}
					},{
						xtype: 'button',
						ui: 'round',
						text: 'Go back',
						handler: function(button, event){
							gtp.views.loginPage.setActiveItem('loginpage');
						}
					}]
				}]
			}]
		});
	},
	view: function(options){
		// Destroy panels created for login page and registration page.
		// Since there is no log out for a user. Those pages are no more useful.
		// This adds fastness to the application.
		gtp.views.loginPage.destroy();
		
		gtp.tabpanel = new Ext.TabPanel({
			tabBar: {
				dock: 'bottom',
				layout: {
					pack: 'center'
				}
			},
			layout: 'card',
			defaultActiveTab: 'home',
			fullscreen: true,
			ui: 'light',
			cardSwitchAnimation: {
				type: 'fade',
				cover: true
			},
			items: [gtp.tabs.HomeScreenView,
			        gtp.tabs.CarsListView,
			        gtp.tabs.PaidTollsListView,
			        gtp.tabs.SettingsFormView,
			        gtp.tabs.MapView,
			        gtp.tabs.NewCarFormView,
			        gtp.tabs.CarDetailView],			
			listeners: {
				beforecardswitch: function(curobj, newCard, oldCard, index, animated) {
					if(newCard.getId() == 'mycars') {
						gtp.carsvisited = true;
						Ext.getCmp('mycarstb').show();
					}
					
					if(newCard.getId() != 'mycars'  && !gtp.carsvisited)
						Ext.getCmp('mycarstb').hide();
					else if(!gtp.carsvisited)
						Ext.getCmp('mycarstb').show();
					
					if(oldCard.getId()== 'basicform' && gtp.settingschanged) {
						// Do ajax call to save the payment details. Same when clicked on the save button.
						return true;
					}
					else if(oldCard.getId() == 'basicform' && !gtp.settingschanged) {
						oldCard.disable();
						var savebutton = Ext.getCmp('savesettings');
						savebutton.setDisabled(false);
						savebutton.setText('edit');
					}
					else if(oldCard.getId() == 'addcar' && newCard.getId() == 'details' && gtp.showtabs) {
						gtp.showtabs=false;
						return false;
					}
					else if(oldCard.getId() == 'addcar' && newCard.getId() != 'details' && gtp.showtabs) {
						gtp.showtabs=false;
						return true;
					}
					else if(oldCard.getId() == 'details' && newCard.getId() == 'addcar' && gtp.showtabs) {
						gtp.showtabs=false;
						return false;
					}
					else if(oldCard.getId() == 'details' && newCard.getId() != 'addcar' && gtp.showtabs) {
						gtp.showtabs=false;
						return true;
					}
					else if(newCard.getId() == 'addcar' && !gtp.showtabs)
						return false;
					else if(newCard.getId() == 'details' && !gtp.showtabs)
						return false;
				}
			}
		});
		
		// Fetches User Data and adds them to stores.
		gtp.FetchUserData(options);
	}
});

