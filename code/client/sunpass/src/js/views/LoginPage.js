gtp.views.LoginPage = {
	xtype: 'panel',
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
				if(!gtp.views.Viewport.down('#lpemailid').getValue()) {
					Ext.Msg.alert(gtp.dict.loginform_username);
				}
				else if(!gtp.views.Viewport.down('#lppassword').getValue()) {
					Ext.Msg.alert(gtp.dict.loginform_password);
				}
				else {
					gtp.views.Viewport.setLoading({
						msg: 'Signing in..'
					});
					var un = Ext.getCmp('lpemailid').getValue();
					var pwd = Ext.getCmp('lppassword').getValue();
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','logging')).get('url'),
						params: {
							json: Ext.encode({
								userName: un,
								password: pwd,
								deviceDetails: {
									deviceId: gtp.deviceId,
									deviceName: gtp.detectDeviceType()
								} 
							})
						},
						success: function(response){
							gtp.views.Viewport.setLoading(false);
							var decres=Ext.decode(response.responseText);
							var res=decres.response.response;
							
							if(decres.status == 'success') {
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

	                                if(!gtp.tolls) {
		                                gtp.getTolls();
	                                }
	                                
									if(Ext.is.iPhone) {
		                                var ddp = window.plugins.DeviceDetailsPlugin;
		                                if(ddp) {
			                                ddp.setDetails(Ext.encode({
			                                    deviceId: gtp.deviceId,
			                                    username: un,
			                                    password: pwd
			                                }));
		                                }
		                                // if user app is enabled. invoke heartbeat plugin upon launch.
		                                var actp = window.plugins.ActivatePlugin;
		                                if(actp && res.isActive == 'Y') {
		                                    actp.activate();
		                                }
									}
									else if(Ext.is.Android) {
										window.plugins.DeviceDetailsPlugin.setValue('username',un,function(){},function(){});
										window.plugins.DeviceDetailsPlugin.setValue('password',pwd,function(){},function(){});
										
		                                // if user app is enabled. invoke heartbeat plugin upon launch.
									}
	                                																		
								}
								else if(res.userExists=="Y" && res.passwordCorrect=="N"){
									Ext.Msg.alert('Incorrect',gtp.dict.loginform_pwd_fail);
								}
								else {
									Ext.Msg.alert('Incorrect', gtp.dict.login_failure);
								}
							}
							gtp.showNotifications(decres.response.notifications);
							gtp.parse(decres.response.commands);
						},
						failure: function(response){
							gtp.views.Viewport.setLoading(false);
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
				gtp.views.Viewport.setActiveItem('regpage', 'fade');
			}
		}]				
	}]
};