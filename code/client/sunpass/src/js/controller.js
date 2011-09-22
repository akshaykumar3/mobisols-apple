// Controllers are defined here.

gtp.controller=Ext.regController("load",{
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
					border: '10 5 3 10',
					id: 'lpemailid',
					value: gtp.utils.dataStore.getValueOfKey('username')
				},{
					html: 'password:',
					align: 'left'
				},{
					xtype: 'passwordfield',
					border: '10 5 3 10',
					id: 'lppassword',
					value: gtp.utils.dataStore.getValueOfKey('password')
				},{
					layout: 'hbox',
					items: [{
						xtype: 'button',
						ui: 'round',
						text: 'Sign in',
						handler: function(){
							if(!Ext.getCmp('lpemailid').getValue())
							{
								Ext.Msg.alert('UserName Required');
							}
							else if(!Ext.getCmp('lppassword').getValue())
							{
								Ext.Msg.alert('Password required');
							}
							else
							{
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','logging')).get('url'),
									params: {
										json: Ext.encode({
											userName: Ext.getCmp('lpemailid').getValue(),
											password: Ext.getCmp('lppassword').getValue(),
											deviceDetails: {
												deviceId: options.deviceDetails.deviceId,
												deviceName: options.deviceDetails.type
											} 
										})
									},
									success: function(response){
										console.log('Login succeded response: '+response.responseText);
										var decres=Ext.decode(response.responseText);
										var res=decres.response.response;
										console.log(res.userExists);
										
										if(res.userExists=="Y" && res.passwordCorrect=="Y") {
											// Store username and password locally.
											gtp.utils.dataStore.setValueOfKey('username',Ext.getCmp('lpemailid').getValue());
											gtp.utils.dataStore.setValueOfKey('password',Ext.getCmp('lppassword').getValue());
											
											var encodedString=base64_encode(Ext.getCmp('lpemailid').getValue()+':'+Ext.getCmp('lppassword').getValue());
											Ext.Ajax.defaultHeaders.Authorization= "Basic "+encodedString;
											Ext.dispatch({
												controller: 'load',
												action: 'view',
												loginDetails: {
													username: Ext.getCmp('lpemailid').getValue(),
													password: Ext.getCmp('lppassword').getValue()
												}
											});
										}
										else if(res.userExists=="Y" && res.passwordCorrect=="N"){
											Ext.Msg.alert('Password is incorrect');
										}
										else
										Ext.Msg.alert('username or password is incorrect');	
									},
									failure: function(response){
										console.log('Login Authentication failed with status: '+response.status);
									}
								});
							}
						}
					},{
						//html: '<a onclick="gtp.registerLaunch()"><u><font color="#2e4bc5"> Register</font></u></a>'
						xtype: 'button',
						text: 'Register',
						ui: 'round',
						handler: function(){
							gtp.views.loginPage.setActiveItem('regpage', 'fade');
						}
					}]				
				}]
			},{
				id: 'regpage',
				layout: {
					type:'vbox',
					pack: 'center'
				},
				items: [{
					pack: 'left',
					html: 'email ID:'
				},{
					xtype: 'emailfield',
					border: '10 5 3 10',
					id: 'rpemailid'
				},{
					html: 'Password:',
					pack: 'left'
				},{
					xtype: 'passwordfield',
					border: '10 5 3 10',
					id: 'rppassword'
				},{
					html: 'Confirm Password:',
					pack: 'left'
				},{
					xtype: 'passwordfield',
					border: '10 5 3 10',
					id: 'conpwd'
				},{
					layout: 'hbox',
					items: [{
						xtype: 'button',
						ui: 'round',
						style: 'margin-left: 1px',
						text: 'Register',
						handler: function(){
							if(Ext.getCmp('rppassword').getValue() == Ext.getCmp('conpwd').getValue())
							{
								console.log('registration: passwords matched');
								console.log(webServices.getAt(webServices.findExact('service','regnewuser')).get('url'));
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','regnewuser')).get('url'),
									method: 'POST',
									params: {
										json: Ext.encode({
											userName: Ext.getCmp('rpemailid').getValue(),
											password: Ext.getCmp('rppassword').getValue(),
											deviceDetails: {
												deviceId: options.deviceDetails.deviceId,
												deviceName: options.deviceDetails.type
											}
										})
									},
									success: function(response) {
										console.log(Ext.decode(response.responseText));
										var encodedString=base64_encode(Ext.getCmp('rpemailid').getValue()+':'+Ext.getCmp('rppassword').getValue());
										Ext.Ajax.defaultHeaders.Authorization= "Basic "+encodedString;
										Ext.dispatch({
											controller: 'load',
											action: 'view',
											loginDetails: {
												username: Ext.getCmp('rpemailid').getValue(),
												password: Ext.getCmp('rppassword').getValue()
											}
										});
									},
									failure: function(response) {
										console.log('user registration failed with status code'+response.status);
									}
								});
							}
							else
							Ext.Msg.alert('Passwords do not match');
						}
					},{
						xtype: 'button',
						ui: 'round',
						text: 'Go back',
						handler: function(){
							gtp.views.loginPage.setActiveItem('loginpage', 'fade');
						}
					}]
				}]
			}]
		});
	},
	view: function(options){
		console.log('i am from controller view action');
		var mylocation_marker, markernotset=true;
		
		gtp.geo = new Ext.util.GeoLocation({
		    autoUpdate: true,
		    listeners: {
		        locationupdate: function (geo) {
		            console.log('Got New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
		            if(markernotset){
						mylocation_marker=new google.maps.Marker({
							position: new google.maps.LatLng(geo.latitude,geo.longitude),
							title: 'U are here right now',
							icon: 'resources/images/blue_dot.png',
							map: Ext.getCmp('mappanel').map
						});
						Ext.getCmp('mappanel').map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
						markernotset=false;
					}
					else
					mylocation_marker.setPosition(new google.maps.LatLng(geo.latitude,geo.longitude));
					//Ext.getCmp('mappanel').map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
		        },
		        locationerror: function (   geo,
		                                    bTimeout, 
		                                    bPermissionDenied, 
		                                    bLocationUnavailable, 
		                                    message) {
		            if(bTimeout){
		            	//console.log('timeout occurred');
		                //Ext.Msg.alert('Timeout occurred.');
		            }
		            else{
		            	//console.log('error finding gps location');
		            	//console.log('error message: '+message);
		                //Ext.Msg.alert('Error message: '+ message); 
		            }
		        }
		    }
		});
		
		Ext.Ajax.request({
	      url: webServices.getAt(webServices.findExact('service','acdetails')).get('url'),
	      method: 'GET',
	      params: {
	      	user_name: options.loginDetails.username,
	      	client_id: 1
	      },
	      success: function(result) {
	      	console.log('Account Details request is sent successfully');
	      	console.log(result.responseText);
	      	var res=Ext.decode(result.responseText);
	      	
	      	if(res.response) {
			  	var pay_details=res.response.paymentDetails;
			  	var vehicle_details=res.response.vehicleDetails;
			  	var paidtoll_details=res.response.tollPayments;
		      	
		      	for(var i=0;i<vehicle_details.length;i++)
		      	{
		      		if(vehicle_details[i].isActive){
		      			Ext.getCmp('activecar').setValue(vehicle_details[i].registration);
		      		}
		      		carsList.insert(0,Ext.ModelMgr.create({
						state: vehicle_details[i].State,
						reg: vehicle_details[i].registration,
						type: vehicle_details[i].type,
						startDate: new Date(vehicle_details[i].startDate),
						endDate: new Date(vehicle_details[i].endDate)
					},'Cars'));
					Ext.getCmp('activecar').setOptions([{
						text: vehicle_details[i].registration,
						value: vehicle_details[i].registration
					}],true);
				}
		      	
		      	var userSettings = Ext.ModelMgr.create({
		      		userid: options.loginDetails.username,
		      		ccnumber: pay_details.cardNumber,
		      		expdate: Date.parseDate(pay_details.expYear,'M j, Y g:i:s A'),
		      		acnumber: pay_details.bankAccount,
		      		name: pay_details.ccName,
		      		address: pay_details.address1,
		      		state: pay_details.state,
		      		city: pay_details.city,
		      		zipcode: pay_details.zip
		      	},'Settings');
		      	
		      	gtp.tabpanel.getComponent(3).load(userSettings);
		      	
		      	for(i=0;i<paidtoll_details.length;i++)
		      	{
		      		//12-6-2011 21:16:12
		      		console.log(Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'));
			      	paidTolls.insert(0,Ext.ModelMgr.create({
						date: Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'),
						amount: paidtoll_details[i].price,
						location: paidtoll_details[i].tollDetails.tollOperator +' '+ paidtoll_details[i].tollDetails.city,
						reg: paidtoll_details[i].registration
					},'PaidTolls'));
				}
	      	}
	      },
	      failure: function(result) {
	     	console.log('Account Details failure with status code'+result.status);
	      }
	   	});
		
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','cctypes')).get('url'),
			success: function(response) {
				var resobj=Ext.decode(response.responseText);
				var ccl=resobj.response.ccTypeList;
				var ctsfid=Ext.getCmp('cardtype');
				for(var i=0; i<ccl.length; i++) {
					ctsfid.setOptions([{
						text: ccl[i].name,
						value: ccl[i].name
					}],true);
				}
			},
			failure: function(response) {
				console.log('Fetching CCtypelist failure with status '+response.status);
			}
		});
		
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','serviceplans')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				var spl = resobj.response.servicePlanList;
				var spsfid = Ext.getCmp('serviceplan'); 
				for(var i=0; i<spl.length; i++) {
					spsfid.setOptions([{
						text: spl[i].name,
						value: spl[i].name
					}],true);
				}
			},
			failure: function(response) {
				console.log('Fetching Sevices list failed');
			}
		});
		
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','vehicletypes')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				var vtl = resobj.response.vehicleTypeList;
				var vtsfid = Ext.getCmp('tp'); 
				for(var i=0; i<vtl.length; i++) {
					vtsfid.setOptions([{
						text: vtl[i].name,
						value: vtl[i].name
					}],true);
				}
			},
			failure: function(response) {
				console.log('Fetching Sevices list failed');
			}
		});

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
			items: [{
				title: 'Home',
				xtype: 'formpanel',
				id: 'home',
				scroll: 'vertical',
				iconCls: 'home',
				cls: 'card1',
				dockedItems: [{
					xtype: 'toolbar',
					dock: 'top',
					title: 'Mobile Toll Pass',
					layout: {
						pack: 'left'
					},
					items: [{
						iconMask: true,
						ui: 'plain',
						iconCls: 'SunPassLogo'
					},{
						xtype: 'spacer'
					},{
						text: 'help',
						ui: 'green'
					}]
				}],
				items: [{
					xtype: 'fieldset',
					items: [{
						xtype: 'togglefield',
						id: 'tfd',
						animationDuration: 200,
						name: 'enable',
						label: 'Enable',
						listeners: {
							el: {
								click: function(slider, thumb, newValue, oldValue) {
									
									console.log('toggle button is clicked');
									if( this == Ext.getCmp('tfd') )
										console.log('speculation is true');
									var toggle=Ext.getCmp('tfd');
									var cl=Ext.getCmp('curloc');
									var to=Ext.getCmp('operator');
									var at=Ext.getCmp('avgtoll');
									var pt=Ext.getCmp('pdtoll');
									if(toggle.value==0) {
										gtp.isAppEnabled=1;
										console.log('toggled');
										toggle.value=1;
										var clat,clong;
										if(gtp.geo.latitude || gtp.geo.longitude){
											clat=gtp.geo.latitude;
											clong=gtp.geo.longitude;
										}
										else{
											clat=37.1345;
											clong=-130.121;
										}
										/*Ext.Ajax.request({
											url: webServices.getAt(webServices.findExact('service','nearesttoll')).get('url'),
											params: {
												json: Ext.encode({
													latitude: clat,
													longitude: clong
												})
											},
											success: function(response){
												console.log('Nearest Toll Webservice request fetched');
												console.log(response.responseText);
												var resobj=Ext.decode(response.responseText);
												cl.setValue(resobj.response.city + resobj.response.state);
												to.setValue(resobj.response.tolloperator);
												at.setValue(resobj.response.avgtoll);
												pt.setValue(resobj.response.price);
											},
											failure: function(response){
												console.log('failure with status'+response.status);
												cl.setValue('Tallahassee, Florida');
												to.setValue(TollsData.getAt(0).get('tolloperator'));
												at.setValue(TollsData.getAt(0).get('avgtoll'));
												pt.setValue(TollsData.getAt(0).get('tollperday'));
											}
										});*/
										
										if(Ext.getCmp('activecar').getValue())
										{
											cl.setValue('Tallahassee, Florida');
											to.setValue(TollsData.getAt(0).get('tolloperator'));
											at.setValue(TollsData.getAt(0).get('avgtoll'));
											pt.setValue(TollsData.getAt(0).get('tollperday'));
											setTimeout("requestHeartBeat()",5000);
											// This invokes client side heartbeat.
											gtp.clientsidehb();
	    									message='Settings are saved, Car '+Ext.getCmp('activecar').getValue()+' is active';
											Ext.Msg.alert('Activated',message);
											Ext.getCmp('activecar').disabled=true;
										}
										else
										{
											Ext.Msg.alert('Car should be selected');
										}
									} else {
										gtp.isAppEnabled=0;
										console.log(toggle.value);
										cl.setValue("");
										to.setValue("");
										at.setValue("");
										pt.setValue("");
										toggle.value=0;
										Ext.getCmp('activecar').disabled=false;
									}
								}
							},
							drag: function(slider, thumb, value) {
								console.log('toggle field value is '+value);
							}
						}
					}]
				},{
					xtype: 'fieldset',
					title: 'Configuration',
					items: [{
						xtype: 'selectfield',
						name: 'activecar',
						label: 'ActiveCar',
						id: 'activecar'
					},{
						xtype: 'selectfield',
						name: 'serviceplan',
						id: 'serviceplan',
						label: 'Service',
						required: true,
						options: [{
							text: 'daily',
							value: 'daily'
						}]
					}]
				},{
					xtype: 'fieldset',
					title: 'Current Location Operator',
					items: [{
						xtype: 'textfield',
						name: 'currentlocation',
						id: 'curloc',
						label: 'CurLoc',
						disabled: true,
						autoCapitalize : true,
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'operator',
						disabled: true,
						id: 'operator',
						label: 'Operator'
					},{
						xtype: 'textfield',
						name: 'averagetoll',
						disabled: true,
						id: 'avgtoll',
						label: 'AvgToll'
					},{
						xtype: 'textfield',
						name: 'perdaytoll',
						disabled: true,
						id: 'pdtoll',
						label: 'Per Day'
					}]
				}]
			},{
				title: 'My cars',
				iconCls: 'Car',
				id: 'mycars',
				cls: 'card2',
				items: [{
					xtype: 'panel',
					fullscreen: true,
					layout: 'fit',
					id: 'dp',
					dockedItems:[{
						xtype: 'toolbar',
						id: 'mycarstb',
						dock: 'top',
						title: 'My Cars',
						layout: {
							pack: 'right'
						},
						items: [{
							iconMask: true,
							ui: 'plain',
							iconCls: 'add',
							handler: function(button, event) {
								gtp.showtabs=true;
								var temp = gtp.tabpanel.getComponent('addcar').getValues();
								temp.state = "";
								temp.rg = "";
								temp.tp = "";
								temp.startDate = gtp.today;
								temp.endDate = null;
								gtp.tabpanel.setActiveItem('addcar');
							}
						}]
					}],
					items: [{
						xtype: 'list',
						id: 'listid',
						fullscreen: true,
						store: carsList,
						singleSelect: true,
						scroll: 'vertical',
						itemTpl: '<div class="contact"><strong>{reg}</strong>, {state}</div>',
						setActiveItem: this,
						onItemDisclosure: true,
						listeners: {
							itemtap: function(co,index,item,e) {
								console.log('clicked item '+index+' in the list');
								gtp.showtabs=true;
								var record=co.getRecord(co.getNode(index));
								
								gtp.tabpanel.getComponent('details').load(Ext.ModelMgr.create({
									reg: record.get('reg'),
									state: record.get('state'),
									type: record.get('type'),
									startDate: record.get('startDate'),
									endDate: record.get('endDate')
								},'Cars'));
								
								gtp.tabpanel.setActiveItem('details', 'fade');
							},
							itemswipe: function(co,index,item,e) {
								var st=co.getStore();
								var stmod=st.getAt(index);
								console.log('item '+index+' is swiped');
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','addcar')).get('url'),
									method: 'DELETE',
									params: {
										json: Ext.encode({
											state: stmod.get('state'),
											registration: stmod.get('reg'),
											type: stmod.get('type'),
											isActive: stmod.get('active'),
											startDate: stmod.get('startDate').format('Y-m-d H:i:s'),
										    endDate: stmod.get('endDate').format('Y-m-d H:i:s'),
											ownerType: 'primary owner', 
											vehicleId: 1
										})
									},
									success: function(response){
										var resobj=Ext.decode(response.responseText);
										var obj=resobj.response;
										if(obj.success == "Y") {
											st.removeAt(index);
											st.refresh();
										}
									},
									failure: function(response){
										Ext.Msg.alert('Error in deleting the car');
									}
								});
							}
						}
					}]
				}]
			},{
				title: 'Paid tolls',
				id: 'CashStack',
				iconCls: 'CashStack',
				cls: 'demo-list',
				items: [{
					xtype: 'list',
					grouped: true,
					fullscreen: true,
					scroll: 'vertical',
					store: paidTolls,
					itemTpl: '<div class="contact">{amount}$ on <strong>{date}</strong> @ {location} - {reg}</div>'
				}]
			},{
				title: 'Settings',
				xtype: 'formpanel',
				id: 'basicform',
				scroll: 'vertical',
				iconCls: 'AccountSettings',
				cls: 'card4',
				dockedItems: [{
					xtype: 'toolbar',
					title: 'Settings',
					dock: 'top',
					items: [{
						xtype: 'button',
						text: 'edit',
						ui: 'edit',
						handler: function(but, event) {
							console.log('handler');
							if(this.getText() == 'edit') {
								gtp.tabpanel.getComponent(3).enable();
								but.setText('save');
							}
							else {
								gtp.tabpanel.getComponent(3).disable();
								this.setText('edit');
							}
						}
					},{
						xtype: 'spacer'
					},{
						xtype: 'button',
						text: 'save',
						ui: 'confirm',
						disabled: true,
						id: 'savesettings',
						handler: function(button, event) {
							if(gtp.settingschanged) {
								var pay_det = gtp.tabpanel.getComponent(3).getRecord();
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','paymentdetails')).get('url'),
									method: 'POST',
									params: {
										json: Ext.encode({
											ccName: pay_det.get('name'),
											cardNumber: pay_det.get('ccnumber'),
											expMonth: pay_det.get('expdate').MONTH,
											expYear: pay_det.get('expdate').YEAR,
											bankRouting: 123,
											ccCVV: 123456,
											bankAccount: pay_det.get('acnumber'),
											address1: pay_det.get('address'),
											city: pay_det.get('city'),
											state: pay_det.get('state'),
											country: 'US',
											zip: pay_det.get('zipcode')
										})
									},
									success: function(response) {
										console.log('Posting payment details success');
										var resobj = Ext.decode(response.responseText);
										console.log('Payment details response '+response.responseText);
									    button.setDisabled(true);
									    gtp.settingschanged = false;
									    if(resobj.status == 'success')
									    Ext.Msg.alert('Payment Details changed');
									},
									failure: function(response) {
										Ext.Msg.alert('Payment Details not changed');
										console.log('Failed in posting payment details');
									}
								});
							}
						}
					}]
				}],
				items: [{
					xtype: 'fieldset',
					title: 'Payment info',
					defaults: {
						listeners: {
							change: function(curobj,newValue,oldValue) {
								if(newValue != oldValue) {
									gtp.settingschanged=true;
									var savebutton=Ext.getCmp('savesettings');
									savebutton.setDisabled(false);	
								}
							}
						}
					},
					items: [{
						xtype: 'textfield',
						name: 'ccnumber',
						id: 'ccnumber',
						label: 'Cdt card#',
						placeHolder: 'XXXX-XXXX-XXXX-XXXX',
						useClearIcon: true
					},{
						xtype: 'selectfield',
						name: 'cardtype',
						id: 'cardtype',
						label: 'Cc type'
					},{
						xtype: 'datepickerfield',
						name: 'expdate',
						id: 'expirydate',
						label: 'Exp date',
						picker: {
							yearFrom: 2011
						}
					},{
						xtype: 'textfield',
						name: 'acnumber',
						id: 'bankaccount',
						label: 'A/c No',
						useClearIcon: true
					},{
						xtype: 'checkboxfield',
						id: 'autopay',
						label: 'Auto-pay'
					},{
						xtype: 'hiddenfield',
						name: 'secret',
						value: false
					}]
				},{
					xtype: 'fieldset',
					title: 'Billing Details',
					items: [{
						xtype: 'textfield',
						name: 'name',
						label: 'Name',
						id: 'billname',
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'address',
						label: 'Address',
						id: 'addr1',
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'city',
						label: 'City',
						id: 'billcity',
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'state',
						label: 'State',
						id: 'billstate',
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'zipcode',
						label: 'Zip',
						id: 'zip',
						useClearIcon: true
					}]
				},{
					xtype: 'fieldset',
					title: 'Account info',
					items: [{
						xtype: 'textfield',
						name: 'userid',
						id: 'userid',
						label: 'UserID',
						cls: 'customField',
						placeHolder: 'userID',
						autoCapitalize : false
					}]
				},{
					xtype: 'button',
					text: 'change Password',
					ui: 'green',
					handler: function(button, event) {
						new Ext.Panel({
							cardSwitchAnimation: 'fade',
							items: [{
								html: 'Current Password'
							},{
								xtype: 'textfield',
								name: 'currentpwd'
							},{
								html: 'New Password'
							},{
								xtype: 'textfield',
								name: 'newpassword'
							},{
								html: 'Confirm Password'
							},{
								xtype: 'textfield',
								name: 'confirmpwd'
							},{
								xtype: 'button',
								text: 'submit',
								handler: function(button, event) {
									gtp.tabpanel.setActiveItem('basicform','fade');
								}
							}]
						});
					}
				}],
				listeners: {
					render: function(curobj) {
						console.log('Settings card view is rendered');
						curobj.disable();
					}
				}
			},{
				title: 'Map',
				id: 'mappanel',
				xtype: 'map',
				//useCurrentLocation: true,
				// if useCurrentLocation is set, By default map centers around palo alto if location is not fetched.
				// If u want to control centering the map donot set the useCurrentLocation set to true.
				mapOptions: {
					//center: google.maps ? new google.maps.LatLng(32.95008700,-117.10962200) : null,
					zoom: 15
				},
				cls: 'card5',
				iconCls: 'MapIcon',
				listeners: {
					maprender: function(comp, map) {
						console.log('map is rendered');
						console.log('map centered at lat: '+ map.getCenter().lat() +' long: '+ map.getCenter().lng());
						
						// Fetch tolldetails list
						gtp.getTolls();

					},
					centerchange: function(comp,map, center) {
						// Update current location.
						//gtp.geo.updateLocation();
					},
				}
			},{
				id: 'addcar',
				xtype: 'formpanel',
				scroll: 'vertical',
				dockedItems: [{
					xtype: 'toolbar',
					title: 'New Car',
					dock: 'top',
					items: [{
						text: 'My Cars',
						ui: 'back',
						handler: function(button, event) {
							gtp.tabpanel.setActiveItem('mycars','fade');
						}
					},{
						xtype: 'spacer'
					},{
						text: 'ok',
						ui: 'confirm',
						handler: function(button, event) {
							var acfd = gtp.tabpanel.getComponent('addcar').getValues(true);
							console.log('State is '+acfd.state);
							if(acfd.state == "")
								Ext.Msg.alert('enter state field');
							else if(acfd.rg == "")
								Ext.Msg.alert("Enter registration number");
							else if(acfd.tp == "")
								Ext.Msg.alert('Select car type');
							else {
								Ext.Ajax.request({
									url: webServices.getAt(webServices.findExact('service','addcar')).get('url'),
									method: 'POST',
									params: {
										json: Ext.encode({
											state: acfd.state,
											registration: acfd.rg,
											type: acfd.tp,
											isActive: "N",
											//startDate: '',//gtp.today.format('Y-m-d H:i:s'),
										    //endDate: '',
											ownerType: 'primary owner', 
											vehicleId: 1
										})
									},
									success: function(response){
										console.log('Add car webservice success');
										carsList.insert(0,Ext.ModelMgr.create({
											state: acfd.state,
											reg: acfd.rg,
											type: acfd.tp
										},'Cars'));
										Ext.getCmp('activecar').setOptions([{
											text: acfd.rg,
											value: acfd.rg
										}],true);
									},
									failure: function(response){
										Ext.Msg.alert('Error in adding the car');
									}
								});
								gtp.tabpanel.setActiveItem('mycars','fade');
							}
						}
					}]
				}],
				items:[{
					xtype: 'fieldset',
					title: 'CarInfo',
					items:[{
						xtype: 'selectfield',
						id: 'st',
						label: 'State',
						required: true,
						options: [{
							text: ' ',
							value: ''
						},{
							text: 'Alabama',
							value: 'Alabama'
						},{
							text: 'Alaska',
							value: 'AL'
						},{
							text: 'Arizona',
							value: 'AZ'
						}]
					},{
						xtype: 'textfield',
						label: 'Reg',
						required: true,
						id: 'rg'
					},{
						xtype: 'selectfield',
						label: 'Type',
						id: 'tp',
						required: true
					},{
						xtype: 'selectfield',
						label: 'Make',
						id: 'carmaker',
						required: true,
					},{
						xtype: 'selectfield',
						label: 'Model',
						id: 'md',
						required: true
					}]
				},{
					xtype: 'fieldset',
					title: 'Car Period',
					defaults: {
						xtype: 'datepickerfield'
					},
					items: [{
						label: 'From',
						id: 'startDate',
						disabled: true,
						value: gtp.today
					},{
						label: 'To',
						id: 'endDate',
						picker: {
							yearFrom: gtp.today.getFullYear(),
						}
					}]
				}]
			},gtp.tabs.CarDetailView],
			listeners: {
				beforecardswitch: function(curobj, newCard, oldCard, index, animated) {
					if(oldCard.getId()== 'basicform' && gtp.settingschanged) {
						console.log('true');
						return true;
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
	}
});
