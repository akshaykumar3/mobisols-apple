// Controllers are defined here.

gtp.controller=Ext.regController("load",{
	show: function(options) {
		console.log('Login Page loaded');
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
							console.log('Entered Password '+Ext.getCmp('lppassword').getValue());
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
										Ext.dispatch({
											controller: 'load',
											action: 'view',
											loginDetails: {
												username: Ext.getCmp('lpemailid').getValue(),
												password: Ext.getCmp('lppassword').getValue()
											}
										});
									}
								});
								// Do user authertication here.
							}
							//gtp.views.loginPage.setActiveItem('regpage');
						}
					},{
						//html: '<a onclick="gtp.registerLaunch()"><u><font color="#2e4bc5"> Register</font></u></a>'
						xtype: 'button',
						text: 'Register',
						ui: 'round',
						handler: function(){
							gtp.views.loginPage.setActiveItem('regpage');
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
											username: Ext.getCmp('rpemailid').getValue(),
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
							gtp.views.loginPage.setActiveItem('loginpage');
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
		        	console.log('GeoLocation: Got new location');
		            console.log('New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
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
					//Ext.getCmp('mappanel').update(new google.maps.LatLng(geo.latitude,geo.longitude));
					
					console.log('map centered at latitude '+Ext.getCmp('mappanel').map.getCenter().lat());
					console.log('end of location update');	
		        },
		        locationerror: function (   geo,
		                                    bTimeout, 
		                                    bPermissionDenied, 
		                                    bLocationUnavailable, 
		                                    message) {
		            if(bTimeout){
		            	console.log('timeout occurred');
		                //Ext.Msg.alert('Timeout occurred.');
		            }
		            else{
		            	console.log('error finding gps location');
		            	console.log('error message: '+message);
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
	      	
	      	console.log(res);
	      	
	      	var pay_details=res.response.paymentDetails;
	      	var vehicle_details=res.response.vehicleDetails;
	      	var paidtoll_details=res.response.tollPayments;
	      	
	      	console.log('Number of vehicles= '+vehicle_details.length);
	      	console.log('Number of toll payments= '+paidtoll_details.length);
	      	
	      	for(i=0;i<vehicle_details.length;i++)
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
	      	
	      	Ext.getCmp('ccnumber').setValue(pay_details.cardNumber);
	      	//Ext.getCmp('cardtype').setValue(pay_details.cardType);
	      	Ext.getCmp('expirydate').setValue(Date.parseDate(pay_details.expYear,'M j, Y g:i:s A'),true);
	      	Ext.getCmp('bankaccount').setValue(pay_details.bankAccount);
	      	//console.log('expiry date '+Date.parseDate(pay_details.expDate,'M j, Y g:i:s A').format('Y-m-d'));
	      	
	      	for(i=0;i<paidtoll_details.length;i++)
	      	{
	      		//12-6-2011 21:16:12
	      		console.log(Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'));
		      	paidTolls.insert(0,Ext.ModelMgr.create({
					date: Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'),
					amount: paidtoll_details[i].price,
					location: paidtoll_details[i].tollDetails.tollOperator + paidtoll_details[i].tollDetails.city,
					reg: paidtoll_details[i].registration
				}),'PaidTolls');
			}
	      },
	      failure: function(result) {
	     	console.log('Account Details failure with status code'+result.status); 	
	      }
	   	});

		//carsList.insert(0,[{reg: '12345',state: 'LB',type: 'sedan'}]);
		var EntryCar=new Ext.Panel({
			id: 'entrycar',
			cardSwitchAnimation: 'slide',
			scroll: 'vertical',
			layout: 'vbox',
			dockedItems: [{
				xtype: 'toolbar',
				title: 'New Car',
				dock: 'top',
				ui: 'light',
				items: [{
					text: 'back',
					ui: 'back',
					handler: function() {
						tabpanel.setActiveItem('mycars');
					}
				},{
					xtype: 'spacer'
				},{
					text: 'ok',
					ui: 'confirm',
					handler: function() {
						console.log('clicked ok');
						console.log(Ext.getCmp('tp').getValue());
						console.log(Ext.getCmp('st').getValue());
						if(Ext.getCmp('st').getValue()=="")
							Ext.Msg.alert('enter state field');
						else if(Ext.getCmp('rg').getValue()=="")
							Ext.Msg.alert("Enter registration number");
						else {
							Ext.getCmp('activecar').setOptions([{
								text: Ext.getCmp('rg').getValue(),
								value: Ext.getCmp('rg').getValue()
							}],true);
							console.log('new car added, count is now '+carsList.getCount());
							Ext.Ajax.request({
								url: webServices.getAt(webServices.findExact('service','addcar')).get('url'),
								method: 'POST',
								params: {
									json: Ext.encode({
										state: Ext.getCmp('st').getValue(),
										reg: Ext.getCmp('rg').getValue(),
										type: Ext.getCmp('tp').getValue(),
										startDate: new Date(),
										endDate: ''
									})
								},
								success: function(response){
									carsList.insert(0,Ext.ModelMgr.create({
								state: Ext.getCmp('st').getValue(),
								reg: Ext.getCmp('rg').getValue(),
								type: Ext.getCmp('tp').getValue()
								},'Cars'));
								},
								failure: function(response){
									
								}
							});
							tabpanel.setActiveItem('mycars');
						}
					}
				}]
			}],
			items:[{
				xtype: 'fieldset',
				title: 'CarInfo',
				dock: 'top',
				defaults: {
					labelWidth: '40%'
				},
				items:[{
					xtype: 'selectfield',
					name: 'state',
					id: 'st',
					label: 'of State',
					required: true,
					options: [{
						text: ' ',
						value: ''
					},{
						text: 'Alabama',
						value: 'AL'
					},{
						text: 'Alaska',
						value: 'AK'
					},{
						text: 'Arizona',
						value: 'AZ'
					},{
						text: 'Arkansas',
						value: 'AR'
					},{
						text: 'California',
						value: 'CA'
					},{
						text: 'Colorado',
						value: 'CO'
					},{
						text: 'Connecticut',
						value: 'CT'
					},{
						text: 'Delaware',
						value: 'DE'
					},{
						text: 'District Of Columbia',
						value: 'DC'
					},{
						text: 'Florida',
						value: 'FL'
					},{
						text: 'Georgia',
						value: 'GA'
					},{
						text: 'Hawaii',
						value: 'HI'
					},{
						text: 'Idaho',
						value: 'ID'
					},{
						text: 'Illinois',
						value: 'IL'
					},{
						text: 'Indiana',
						value: 'IN'
					},{
						text: 'Iowa',
						value: 'IA'
					},{
						text: 'Kansas',
						value: 'KS'
					},{
						text: 'Kentucky',
						value: 'KY'
					},{
						text: 'Louisiana',
						value: 'LA'
					},{
						text: 'Maine',
						value: 'ME'
					},{
						text: 'Maryland',
						value: 'MD'
					},{
						text: 'Massachusetts',
						value: 'MA'
					},{
						text: 'Michigan',
						value: 'MI'
					},{
						text: 'Minnesota',
						value: 'MN'
					},{
						text: 'Mississippi',
						value: 'MS'
					},{
						text: 'Missouri',
						value: 'MO'
					},{
						text: 'Montana',
						value: 'MT'
					},{
						text: 'Nebraska',
						value: 'NE'
					},{
						text: 'Nevada ',
						value: 'NV'
					},{
						text: 'New Hampshire',
						value: 'NH'
					},{
						text: 'New Jersey',
						value: 'NJ'
					},{
						text: 'New Mexico',
						value: 'NM'
					},{
						text: 'New York',
						value: 'NY'
					},{
						text: 'North Carolina',
						value: 'NC'
					},{
						text: 'North Dakota',
						value: 'ND'
					},{
						text: 'Ohio',
						value: 'OH'
					},{
						text: 'Oklahoma ',
						value: 'OK'
					},{
						text: 'Oregon',
						value: 'OR'
					},{
						text: 'Pennsylvania',
						value: 'PA'
					},{
						text: 'Rhode Island',
						value: 'RI'
					},{
						text: 'South Carolina',
						value: 'SC'
					},{
						text: 'South Dakota',
						value: 'SD'
					},{
						text: 'Tennessee',
						value: 'TN'
					},{
						text: 'Texas',
						value: 'TX'
					},{
						text: 'Utah',
						value: 'UT'
					},{
						text: 'Vermont',
						value: 'VT'
					},{
						text: 'Virginia',
						value: 'VA'
					},{
						text: 'Washington',
						value: 'WA'
					},{
						text: 'West Virginia',
						value: 'WV'
					},{
						text: 'Wisconsin',
						value: 'WI'
					},{
						text: 'Wyoming',
						value: 'WY'
					}
					]
				},{
					xtype: 'textfield',
					label: 'Reg',
					required: true,
					id: 'rg'
				},{
					xtype: 'selectfield',
					label: 'Type',
					id: 'tp',
					required: true,
					options: [{
						text: '2 axle',
						value: '2 axle'
					},{
						text: '3 axle',
						value: '3 axle'
					},{
						text: '4 axle',
						value: '4 axle'
					}]
				}]
			},{
				xtype: 'fieldset',
				title: 'Car Period',
				//dock: 'top',
				defaults: {
					xtype: 'datepickerfield'
				},
				items: [{
					label: 'From',
					disabled: true,
					value: new Date(),
					listener: {
						el: {
							click: function() {

							}
						}
					},
					name: 'sd'
				},{
					label: 'To',
					name: 'ed'
				}]
			}]
		})

		var DetailPanel= new Ext.Panel({
			id: 'detailpanel',
			cardSwitchAnimation: 'slide',
			layout: 'vbox',
			scroll: 'vertical',
			//height: '90%',
			dockedItems: [{
				xtype: 'toolbar',
				title: 'Edit Car',
				dock: 'top',
				ui: 'light',
				items: [{
					text: 'back',
					ui: 'back',
					handler: function() {
						tabpanel.setActiveItem('mycars');
					}
				},{
					xtype: 'spacer'
				},{
					text: 'done',
					ui: 'action',
					handler: function() {
						console.log('clicked done');
						tabpanel.setActiveItem('mycars');
					}
				}]
			}],
			items:[{
				xtype: 'fieldset',
				title: 'CarInfo',
				dock: 'top',
				defaults: {
					labelWidth: '40%'
				},
				items:[{
					xtype: 'textfield',
					label: 'State',
					disabled: true,
					id: 'DetailPanel.state'
				},{
					xtype: 'textfield',
					label: 'Reg',
					disabled: true,
					id: 'DetailPanel.reg'
				},{
					xtype: 'textfield',
					label: 'Type',
					id: 'DetailPanel.type',
					disabled: true
				},{
					xtype: 'togglefield',
					label: 'Activate',
					value: 0,
					id: 'DetailPanel.toggle',
					listeners: {
						el: {
							click: function(){
								console.log('Car is activated');
								if(Ext.getCmp('DetailPanel.toggle').value)
								{
									console.log('i am from if');
									console.log(togglecomp.label);
									Ext.getCmp('DetailPanel.toggle').label='Activate';
									Ext.getCmp('DetailPanel.toggle').value=0;
								}
								else
								{
									console.log('i am from else');
									console.log(togglecomp.label);
									Ext.getCmp('DetailPanel.toggle').label='Deactivate';
									Ext.getCmp('DetailPanel.toggle').value=1;
								}
								var record=Ext.getCmp('listid').getSelectedRecords();
								console.log(record);
							}
						}
					}
				}]
			},{
				xtype: 'fieldset',
				title: 'Car Period',
				defaults: {
					xtype: 'datepickerfield'
				},
				items: [{
					label: 'From',
					id: 'DetailPanel.from',
					disabled: true,
					value: new Date(),
					listener: {
						el: {
							click: function() {
							}
						}
					},
					name: 'sd'
				},{
					label: 'To',
					id: 'DetailPanel.to',
					picker: {
						yearFrom: gtp.today.getFullYear(),
						yearTo: gtp.today.getFullYear()
					},/*
					value: {
						year: gtp.today.getFullYear(),
						month: gtp.today.getMonth()+1,
						day: gtp.getDate()
					},*/
					name: 'ed'
				}]
			}/*,{
				xtype: 'button',
				text: 'done',
				handler: function(){
					tabpanel.setActiveItem('mycars');
				}
			}*/]
		});

		var curl,avgt,pt,tollop;

		var tabpanel = new Ext.TabPanel({
			tabBar: {
				dock: 'bottom',
				layout: {
					pack: 'center'
				}
			},
			defaultActiveTab: 'home',
			fullscreen: true,
			ui: 'light',
			cardSwitchAnimation: {
				type: 'slide',
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
					xtype: 'togglefield',
					id: 'tfd',
					animationDuration: 200,
					//value: 0,
					name: 'enable',
					label: 'Enable',
					listeners: {
						el: {
							click: function() {
								console.log(Ext.getCmp('tfd').value);
								var toggle=Ext.getCmp('tfd');
								var cl=Ext.getCmp('curloc');
								var to=Ext.getCmp('operator');
								var at=Ext.getCmp('avgtoll');
								var pt=Ext.getCmp('pdtoll');
								if(toggle.value==0) {
									console.log(this);
									console.log(Ext.getCmp('tfd'));
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
										url: 'http://mbtest.dyndns.dk:6004/webservices/services/GetLocation',
										params: {
											json: Ext.encode({
												latitude: clat,
												longitude: clong
											})
										},
										success: function(response){
											console.log(response.responseText);
											var resobj=Ext.decode(response.responseText);
											console.log(resobj);
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
									})*/
									
									if(Ext.getCmp('activecar').getValue())
									{
										cl.setValue('Tallahassee, Florida');
										to.setValue(TollsData.getAt(0).get('tolloperator'));
										at.setValue(TollsData.getAt(0).get('avgtoll'));
										pt.setValue(TollsData.getAt(0).get('tollperday'));
										console.log('before heartbeat request');
										setTimeout("requestHeartBeat()",5000);
										console.log('after heartbeat request');
										
										message='Settings are saved, Car '+Ext.getCmp('activecar').getValue()+' is active';
										console.log(message);
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
						scope: this
					}
				},{
					xtype: 'fieldset',
					title: 'Car & Service',
					id: 'fset',
					defaults: {
						// labelAlign: 'right'
						labelWidth: '35%'
					},
					items: [{
						xtype: 'textfield',
						id: 'curloc',
						label: 'CurLoc',
						disabled: true,
						autoCapitalize : true,
						useClearIcon: true
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'operator',
						label: 'Operator'
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'avgtoll',
						label: 'AvgToll'
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'pdtoll',
						label: 'Per Day'
					},{
						xtype: 'selectfield',
						//disabled: true,
						label: 'ActiveCar',
						id: 'activecar',
						options: [{
							text: '4GPB5',
							value: '4GPB5'
						}]
					},{
						xtype: 'selectfield',
						name: 'service',
						label: 'Service',
						required: true,
						options: [{
							text: 'daily',
							value: 'daily'
						},{
							text: 'weekly',
							value: 'weekly'
						},{
							text: 'monthly',
							value: 'monthly'
						}]
					}]
				}]
			},{
				title: 'My cars',
				iconCls: 'Car',
				//badgeText:'4',
				//activeItem: '1',
				layout: 'card',
				xtype: 'panel',
				id: 'mycars',
				/*layout: Ext.is.Phone ? 'fit' : {
				 type: 'vbox',
				 align: 'center',
				 pack: 'center'
				 },*/
				cls: 'card2',
				items: [{
					xtype: 'panel',
					fullscreen: true,
					id: 'dp',
					layout: 'fit',
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
							handler: function() {
								Ext.getCmp('st').setValue('');
								Ext.getCmp('rg').setValue('');
								Ext.getCmp('tp').setValue('');
								tabpanel.setActiveItem('addcar');
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
						onItemDisclosure: function(){
							console.log('clicked an item in the list');
							var record=Ext.getCmp('listid').getSelectedRecords();
							
							console.log(record);
							
							Ext.getCmp('DetailPanel.state').setValue(record[0].get('state'));
							Ext.getCmp('DetailPanel.reg').setValue(record[0].get('reg'));
							Ext.getCmp('DetailPanel.type').setValue(record[0].get('type'));
							if(record[0].get('active'))
							{
								Ext.getCmp('DetailPanel.toggle').value=1;
								Ext.getCmp('DetailPanel.toggle').label='Disable';
							}
							tabpanel.setActiveItem('details');
							console.log('is selected '+this.isSelected(record[0]));	
						}
					}]
				}],
				listeners: {
					body: {
						onclick: function(){
							console.log('my cars tab is active');
						}
					}
				}
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
				xtype: 'form',
				id: 'basicform',
				scroll: 'vertical',
				iconCls: 'AccountSettings',
				cls: 'card4',
				items: [{
					xtype: 'fieldset',
					title: 'Account info',
					instructions: 'Please enter the information above.',
					defaults: {
						// labelAlign: 'right'
						labelWidth: '35%'
					},
					items: [{
						xtype: 'textfield',
						name: 'userid',
						id: 'userid',
						value: options.loginDetails.username,
						label: 'UserID',
						cls: 'customField',
						placeHolder: 'userID',
						autoCapitalize : false
					},{
						xtype: 'passwordfield',
						name: 'password',
						id: 'setpwd',
						value: options.loginDetails.password,
						label: 'Password',
						useClearIcon: true
					}]
				},{
					xtype: 'fieldset',
					title: 'Payment info',
					instructions: 'Please enter the information above.',
					defaults: {
						// labelAlign: 'right'
						labelWidth: '35%'
					},
					items: [{
						xtype: 'textfield',
						id: 'ccnumber',
						label: 'Credit card#',
						placeHolder: 'XXXX-XXXX-XXXX-XXXX',
						useClearIcon: true
					},{
						xtype: 'selectfield',
						id: 'cardtype',
						label: 'Credit card type',
						options: [{
							text: 'Visa',
							value: 'visa'
						},{
							text: 'Master',
							value: 'master'
						},{
							text: 'American Express',
							value: 'amex'
						},{
							text: 'Discover',
							value: 'discover'
						}]
					},{
						xtype: 'datepickerfield',
						id: 'expirydate',
						label: 'Expiry date',
						picker: {
							yearFrom: 2011
						}
					},{
						xtype: 'textfield',
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
					instructions: 'Please provide billing details',
					items: [{
						xtype: 'textfield',
						label: 'Name',
						id: 'billname',
						value: 'Harish',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'Address',
						value: '10009, Paseo Montril',
						id: 'addr1',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'City',
						value: 'San Diego',
						id: 'billcity',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'State',
						value: 'California',
						id: 'billstate',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'Zip',
						value: '92129',
						id: 'zip',
						useClearIcon: true
					}]
				}]
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
						gtp.geo.updateLocation();
						
						console.log('map is rendered');
						console.log('map centered at lat: '+map.getCenter().lat()+' long: '+map.getCenter().lng());
						
						if(google.maps) {
							new google.maps.Marker({
								position: new google.maps.LatLng(32.942888,-117.109406),
								title: 'Paseo Montril',
								//icon: 'resources/images/covered.png',
								map: map
							});
							
							new google.maps.Marker({
								position: new google.maps.LatLng(32.95008700,-117.10962200),
								title: '',
								//icon: 'resources/images/covered.png',
								map: map
							});
							
							var staticmarker=new google.maps.Marker({
								position: new google.maps.LatLng(32.942888,-117.109406),
								icon: 'resources/images/covered.png',
								map: map
							});
							
							staticinfowindow=new google.maps.InfoWindow({
								content: 'Entry Toll Gate <br/>Price: $1<br/>Avg Price: $2'
							});
							
							google.maps.event.addListener(staticmarker,'click',function(){
								staticinfowindow.open(map,staticmarker);
							});
							
							var markertemp=new google.maps.Marker({
								position: new google.maps.LatLng(28.345338,-81.44018),
								icon: 'resources/images/covered.png',
								map: map
							});
							
							infowindowtemp=new google.maps.InfoWindow({
								content: 'Shingle Creek'+'<br/>Price: $1<br/>Avg Price: $2'
							});
							
							google.maps.event.addListener(markertemp,'click',function(){
								infowindowtemp.open(map,markertemp);
							});
						}
					},
					centerchange: function(comp,map, center)
					{
						console.log('responseFetched: '+gtp.responseFetched);
						console.log('geo.latitude: '+gtp.geo.latitude);
						console.log('geo.longitude: '+gtp.geo.longitude);
						
						// responseFetched variable is used to prevent multiple ajax calls.
						// since by scrolling the map this event is fired multiple times. 
						if(gtp.responseFetched)
						{
							gtp.responseFetched=false;
							var bounds = map.getBounds();
							console.log(bounds);						
							var northEast = bounds.getNorthEast();
						  	var southWest = bounds.getSouthWest();
					  	
							Ext.Ajax.request({
								url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
								method: 'GET',
								params: {
									json: Ext.encode({
										latitude1: northEast.lat(),
										longitude1: northEast.lng(),
										latitude2: southWest.lat(),
										longitude2: southWest.lng()
									})
								},
								success: function(response){
									var obj=Ext.decode(response.responseText);
									var lomobj=obj.response.tollDetailsList;
									var iconpath,markertitle;
									
									for(i=0; i<lomobj.length; i++)
									{
										gtp.infoWindows[i]=new google.maps.InfoWindow({
											content: lomobj[i].tollOperator+'<br/>Price: $1<br/>Avg Price: $2'
										});
									}
										
									console.log('info windows created');	
										
									for(i=0; i<lomobj.length; i++)
									{
										if(lomobj[i].isCovered=='Y')
										{
											iconpath='resources/images/covered.png';
											markertitle=lomobj[i].tollOperator;
										}
										else
										{
											iconpath='resources/images/uncovered.png';
											markertitle=lomobj[i].tollOperator;
										}
										
										gtp.tollMarkers[i]=new google.maps.Marker({
											position: new google.maps.LatLng(lomobj[i].latitude,lomobj[i].longitude),
											title: markertitle,
											icon: iconpath,
											map: map
										});
									}
									
									for(i=0; i<lomobj.length; i++)
									{
										google.maps.event.addListener(gtp.tollMarkers[i],'click',function(){
											console.log('clicked toll marker '+i);
											gtp.infoWindows[i].open(map,gtp.tollMarkers[i]);
										});
									}
									
									// Variable is released here.
									gtp.responseFetched=true;
								},
								failure: function(response){
									console.log('viewport request failed with status '+response.status);
									// Variable is released here.
									gtp.responseFetched=true;								
								}
							});
						}
						// --- 
					}
				}
			},{
				id: 'addcar',
				cls: 'carcls',
				items: [EntryCar]
			},{
				id: 'details',
				cls: 'card7',
				items: [DetailPanel]
			}]
		});
	}
})
