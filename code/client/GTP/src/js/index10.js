Ext.setup({
	icon: 'resources/images/icon.png',
	tabletStartupScreen: 'resources/images/tablet_startup.png',
	phoneStartupScreen: 'resources/images/phone_startup.png',
	glossOnIcon: false,
	onReady: function() {
		
		console.log('Page is setup ');
		console.log(carsList.getAt(0).get('reg'));
		console.log(TollsData.getAt(0).get('tolloperator'));
		console.log(tolldetails.getAt(1).get('latitude'));

		var car_model_instance= Ext.ModelMgr.create({
			state: 'RF',
			reg: 'S23WP',
			type: 'truck'
		},'Cars');

		console.log(carsList.getAt(0).get('reg'));
		console.log('count is '+carsList.getCount());

		carsList.insert(0,car_model_instance);

		console.log('count is now'+carsList.getCount());
		console.log(carsList.getAt(0).get('reg'));

		Ext.Ajax.request({
	      url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AccountDetails',
	      success: function(result) {
	      	console.log('request is sent successfully');
	      	
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
	      	}
	      	console.log(pay_details.cardNumber);
	      	console.log(pay_details.expDate);
	      	console.log(pay_details.cardType);
	      	console.log(pay_details.bankAccount);
	      	
	      	for(i=0;i<paidtoll_details.length;i++)
	      	{
		      	paidTolls.insert(0,Ext.ModelMgr.create({
					date: new Date(paidtoll_details[i].timeStamp),
					amount: paidtoll_details[i].price,
					location: paidtoll_details[i].tollDetails.tollOperator + paidtoll_details[i].tollDetails.city,
					reg: paidtoll_details[i].registration
				}),'PaidTolls');
			}
	      },
	      failure: function(result) {
	     	console.log('failure with status code'+result.status); 	
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
							carsList.insert(0,Ext.ModelMgr.create({
								state: Ext.getCmp('st').getValue(),
								reg: Ext.getCmp('rg').getValue(),
								type: Ext.getCmp('tp').getValue()
							},'Cars'));
							console.log(carsList.getCount());
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
						value: 'twoaxle'
					},{
						text: 'under 7ft 6in',
						value: 'many'
					},{
						text: 'other',
						value: 'other'
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
					name: 'sd',
				},{
					label: 'To',
					name: 'ed'
				}]
			}]
		})

		var DetailPanel= new Ext.Panel({
			id: 'detailpanel',
			layout: 'vbox',
			scroll: 'vertical',
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
					name: 'sd',
				},{
					label: 'To',
					id: 'DetailPanel.to',
					name: 'ed'
				}]
			},{
				xtype: 'button',
				text: 'done',
				handler: function(){
					tabpanel.setActiveItem('mycars');
				}
			}]
		});

		var position = new google.maps.LatLng(17.341288,77.907719);
		//37.49885,-122.198452
		//var mylocation_marker, markernotset=true;
		
		infowindow = new google.maps.InfoWindow({
			content: 'Palo Alto entry Toll, 1$</br> Click <a href="www.tollno1.com">here</a> to visit toll website'
		});
		
		var imageMarker=new google.maps.MarkerImage(
			'resources/images/blue_dot.jpg',
			new google.maps.Size(21,23),
			new google.maps.Point(0,0),
			new google.maps.Point(21,23)
		);

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
				scroll: 'vertical',
				xtype: 'formpanel',
				id: 'home',
				scroll: 'vertical',
				iconCls: 'home',
				cls: 'card1',
				dockedItems: [{
					xtype: 'toolbar',
					dock: 'top',
					ui: 'light',
					title: 'Global Toll Pass',
					layout: {
						pack: 'right'
					},
					ui: 'light',
					items: [{
						text: 'help',
						ui: 'green'
					}]
				}],
				items: [{
					xtype: 'togglefield',
					id: 'tfd',
					animationDuration: 500,
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
									console.log('toggled');
									cl.setValue(getLocation());
									to.setValue(TollsData.getAt(0).get('tolloperator'));
									at.setValue(TollsData.getAt(0).get('avgtoll'));
									pt.setValue(TollsData.getAt(0).get('tollperday'));
									toggle.value=1;
								} else {
									console.log(toggle.value);
									cl.setValue("");
									to.setValue("");
									at.setValue("");
									pt.setValue("");
									toggle.value=0;
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
						name: 'currloc',
						id: 'curloc',
						label: 'CurrLoc',
						value: 'Illinois',
						disabled: true,
						autoCapitalize : true,
						useClearIcon: true
					},{
						xtype: 'textfield',
						disabled: true,
						name: 'oper',
						id: 'operator',
						label: 'Operator'
					},{
						xtype: 'textfield',
						disabled: true,
						name: 'avgtoll',
						id: 'avgtoll',
						label: 'AvgToll'
					},{
						xtype: 'textfield',
						disabled: true,
						name: 'perdaytoll',
						id: 'pdtoll',
						label: 'Per Day'
					},{
						xtype: 'selectfield',
						name: 'activecar',
						label: 'ActiveCar',
						id: 'activecar',
						options: [{
							text: '4GPB522',
							value: '4GPB522'
						},{
							text: '4G23VS2',
							value: '4G23VS2'
						}]
					},{
						xtype: 'selectfield',
						name: 'serviceplan',
						label: 'Service',
						required: true,
						options: [{
							text: 'GT- Pass',
							value: 'gtpass'
						},{
							text: 'L-Pass',
							value: 'lpass'
						},{
							text: 'Fast-Pass',
							value: 'fpass'
						}]
					}]
				}]
			},{
				title: 'My cars',
				iconCls: 'favorites',
				//badgeText:'4',
				//activeItem: '1',
				layout: 'auto',
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
					layout: 'card',
					dockedItems:[{
						xtype: 'toolbar',
						ui: 'light',
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
								tabpanel.setActiveItem('addcar');
							}
						}]
					}],
					items: [{
						xtype: 'list',
						id: 'listid',
						fullscreen: true,
						store: carsList,
						scroll: 'vertical',
						itemTpl: '<div class="contact"><strong>{reg}</strong> - {state} - {type}</div>',
						setActiveItem: this,
						onItemDisclosure: function() {
							console.log('clicked an item in the list');
							var record=Ext.getCmp('listid').getSelectedRecords();
							
							console.log(record);
							
							Ext.getCmp('DetailPanel.state').setValue(record[0].get('state'));
							Ext.getCmp('DetailPanel.reg').setValue(record[0].get('reg'));
							Ext.getCmp('DetailPanel.type').setValue(record[0].get('type'));
							tabpanel.setActiveItem('details');
						}
					},{
						html: 'i am detail panel',
						fullscreen: true,
						id: 'detailpanel',
						tpl: '<div class="contact">{state} {reg} {type}</div>'
					}]
				}]
			},{
				title: 'Paid tolls',
				id: 'paidtolls',
				iconCls: 'downloads',
				cls: 'demo-list',
				items: [{
					xtype: 'list',
					grouped: true,
					fullscreen: true,
					scroll: 'vertical',
					store: paidTolls,
					itemTpl: '<div class="contact">{amount} on <strong>{date}</strong> @ {location} - {reg}</div>'
				}]
			},{
				title: 'Settings',
				scroll: 'vertical',
				xtype: 'form',
				id: 'basicform',
				scroll: 'vertical',
				iconCls: 'settings',
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
						name: 'name',
						label: 'Name',
						placeHolder: 'Tom Roy',
						autoCapitalize : true,
						required: true,
						useClearIcon: true
					},{
						xtype: 'textfield',
						name: 'userid',
						label: 'UserID',
						placeHolder: 'userID',
						autoCapitalize : false,
						required: true,
						useClearIcon: true
					},{
						xtype: 'passwordfield',
						name: 'password',
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
						xtype: 'emailfield',
						name: 'email',
						label: 'Email',
						placeHolder: 'me@sencha.com',
						useClearIcon: true
					},{
						xtype: 'checkboxfield',
						name: 'autopay',
						label: 'Auto-pay'
					},{
						xtype: 'textfield',
						name: 'ccnumber',
						label: 'Credit card#',
						placeHolder: 'XXXX-XXXX-XXXX-XXXX',
						useClearIcon: true
					},{
						xtype: 'datepickerfield',
						name: 'expirydate',
						label: 'Expiry date',
						picker: {
							yearFrom: 2011
						}
					},{
						xtype: 'selectfield',
						name: 'cardtype',
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
						xtype: 'hiddenfield',
						name: 'secret',
						value: false
					},{
						xtype: 'textareafield',
						name: 'billingadd',
						label: 'Billing address'
					}]
				},{
					layout: 'vbox',
					defaults: {
						xtype: 'button',
						flex: 1,
						style: 'margin: .5em;'
					},
					items: [{
						text: 'Disable fields',
						scope: this,
						hasDisabled: false,
						handler: function(btn) {
							var form = Ext.getCmp('basicform');

							if (btn.hasDisabled) {
								form.enable();
								btn.hasDisabled = false;
								btn.setText('Disable fields');
							} else {
								form.disable();
								btn.hasDisabled = true;
								btn.setText('Enable fields');
							}
						}
					},{
						text: 'Reset form',
						handler: function() {
							Ext.getCmp('basicform').reset();
						}
					}]
				}]
			},{
				title: 'Map',
				id: 'mappanel',
				xtype: 'map',
				mapOptions: {
					center: new google.maps.LatLng(37.44885,-122.158592),
					zoom: 12
				},
				cls: 'card5',
				iconCls: 'locate',
				listeners: {
					maprender: function(comp, map) {
						
						geo.updateLocation();
						
						console.log('map is rendered');
						console.log('map centered at lat: '+geo.latitude+' long: '+geo.longitude);
						
						var marker1= new google.maps.Marker({
							position: position,
							icon: 'resources/images/covered.png',
							title: 'Toll Road 1, Price $1',
							map: map
						});
						
						google.maps.event.addListener(marker1, 'click', function() {
							infowindow.open(map, marker1);
						});
					},
					centerchange: function(comp,map, center)
					{
						console.log('centerchange event is triggered');
						var bounds = map.getBounds();
						var southWest = bounds.getSouthWest();
					  	var northEast = bounds.getNorthEast();
					  	if(geo.latitude || geo.longitude)
						{
							Ext.Ajax.Request({
								url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/Viewport',
								params: {
									json: Ext.encode({
										latitude1: southWest.lat(),
										longitude1: southWest.lng(),
										latitude2: northEast.lat(),
										longitude2: northEast.lng()
									})
								},
								success: function(response){
									var lomobj=Ext.decode(response.responseText);
									var iconpath,markertitle;
									
									for(i=0; i<lomobj.length; i++)
									{
										if(lomobj[i].coverage)
										{
											iconpath='resources/images/covered.png';
											markertitle='covered';
										}
										else
										{
											iconpath='resources/images/uncovered.png';
											markertitle='uncovered';
										}
									
										new google.maps.Marker({
											position: new google.maps.LatLng(lomobj[i].lat,lomobj[i].lng),
											title: markertitle,
											icon: iconpath,
											map: map
										});
									}
								},
								failure: function(response){
									console.log('viewport request failed with status '+response.status);								
								}
							})
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
		
		// triggering heart beat function here.. 
		setTimeout("requestHeartBeat()",5000);
	}
});