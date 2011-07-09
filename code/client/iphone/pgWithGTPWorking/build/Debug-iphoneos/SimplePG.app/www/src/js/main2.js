/*	Implemented Getting Toll Locations inside ViewPort
 * 	Written inside the centerchange event 
 */

Ext.setup({
	icon: 'resources/images/icon.png',
	tabletStartupScreen: 'resources/images/tablet_startup.png',
	phoneStartupScreen: 'resources/images/phone_startup.png',
	glossOnIcon: false,
	onReady: function() {
		
		var mylocation_marker, markernotset=true;
		
		var geo = new Ext.util.GeoLocation({
		    autoUpdate: false,
		    listeners: {
		        locationupdate: function (geo) {
		        	console.log('Got new location');
		            console.log('New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
		            gotNewLocation = true;
		            if(markernotset){
						mylocation_marker=new google.maps.Marker({
							position: new google.maps.LatLng(geo.latitude,geo.longitude),
							title: 'U are here right now',
							icon: 'resources/images/blue_dot.png',
							map: Ext.getCmp('mappanel').map
						});
						markernotset=false;
					}
					else if(geo.latitude || geo.longitude){
						mylocation_marker.setPosition(new google.maps.LatLng(geo.latitude,geo.longitude));
					}
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

		geo.updateLocation();
		
		console.log('Page is setup ');
		
		var car_model_instance= Ext.ModelMgr.create({
			state: 'RF',
			reg: 'S23WP',
			type: 'truck'
		},'Cars');
		
		paidTolls.insert(0,Ext.ModelMgr.create({
			date: '1/11/2010',
			amount: 2,
			location: 'newyork' ,
			reg: '4GBSV'
		},'PaidTolls'));

		console.log(carsList.getAt(0).get('reg'));
		console.log(TollsData.getAt(0).get('tolloperator'));
		console.log(tolldetails.getAt(1).get('latitude'));

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
	      	
	      	Ext.getCmp('ccnumber').setValue(pay_details.cardNumber);
	      	Ext.getCmp('cardtype').setValue(pay_details.cardType);
	      	Ext.getCmp('expirydate').setValue(Date.parseDate(pay_details.expDate,'M j, Y g:i:s A'),true);
	      	Ext.getCmp('bankaccount').setValue(pay_details.bankAccount);
	      	console.log('expiry date '+Date.parseDate(pay_details.expDate,'M j, Y g:i:s A').format('Y-m-d'));
	      	
	      	console.log(pay_details.cardNumber);
	      	console.log(pay_details.expDate);
	      	console.log(pay_details.cardType);
	      	console.log(pay_details.bankAccount);
	      	
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
			console.log(paidTolls.getAt(0).get('date'));
			console.log(paidTolls.getAt(0).get('amount'));
	      	console.log(paidTolls.getAt(0).get('location'));
	      	console.log(paidTolls.getAt(0).get('reg'));
	      
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
							console.log('new car added, count is now '+carsList.getCount());
							Ext.Ajax.request({
								url: 'localhost:6004/webservices/services/AddCar',
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
			}/*,{
				xtype: 'button',
				text: 'done',
				handler: function(){
					tabpanel.setActiveItem('mycars');
				}
			}*/]
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
									toggle.value=1;
									var clat,clong;
									if(geo.latitude || geo.longitude){
										clat=geo.latitude;
										clong=geo.longitude;
									}
									else{
										clat=37.1345;
										clong=-130.121;
									}
									Ext.Ajax.request({
										url: 'localhost:6004/webservices/services/GetLocation',
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
											cl.setValue('San Diego');
											to.setValue(TollsData.getAt(0).get('tolloperator'));
											at.setValue(TollsData.getAt(0).get('avgtoll'));
											pt.setValue(TollsData.getAt(0).get('tollperday'));
										}
									})
									cl.setValue(getLocation());
									
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
						xtype: 'textfield',
						name: 'activecar',
						label: 'ActiveCar',
						id: 'activecar'
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
						singleSelect: true,
						scroll: 'vertical',
						itemTpl: '<div class="contact"><strong>{reg}</strong> - {state} - {type}</div>',
						setActiveItem: this,
						onItemDisclosure: function(){
							console.log('clicked an item in the list');
							var record=Ext.getCmp('listid').getSelectedRecords();
							
							console.log(record);
							
							Ext.getCmp('DetailPanel.state').setValue(record[0].get('state'));
							Ext.getCmp('DetailPanel.reg').setValue(record[0].get('reg'));
							Ext.getCmp('DetailPanel.type').setValue(record[0].get('type'));
							tabpanel.setActiveItem('details');
							console.log('is selected '+this.isSelected(record[0]));	
						}
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
					itemTpl: '<div class="contact">{amount}$ on <strong>{date}</strong> @ {location} - {reg}</div>'
				}]
			},{
				title: 'Settings',
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
						name: 'userid',
						label: 'UserID',
						placeHolder: 'userID',
						autoCapitalize : false,
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
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'Address',
						id: 'addr1',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'City',
						id: 'billcity',
						useClearIcon: true
					},{
						xtype: 'textfield',
						label: 'State',
						id: 'billstate',
						useClearIcon: true
					}]
				}]
			},{
				title: 'Map',
				id: 'mappanel',
				xtype: 'map',
				useCurrentLocation: true,
				mapOptions: {
					zoom: 12
				},
				cls: 'card5',
				iconCls: 'locate',
				listeners: {
					maprender: function(comp, map) {
						geo.updateLocation();
						
						console.log('map is rendered');
						console.log('map centered at lat: '+map.getCenter().lat()+' long: '+map.getCenter().lng());
						
						//map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
						
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
						console.log(bounds);						
						var northEast = bounds.getNorthEast();
					  	var southWest = bounds.getSouthWest();
					  	
					  	if(geo.latitude || geo.longitude)
						{
							Ext.Ajax.request({
								url: 'http://mbtest.dyndns.dk:6004/webservices/services/TollDetailsList',
								params: {
									json: Ext.encode({
										latitude2: southWest.lat(),
										longitude2: southWest.lng(),
										latitude1: northEast.lat(),
										longitude1: northEast.lng()
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
											position: new google.maps.LatLng(lomobj[i].lat,lomobj[i].longt),
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
		//setTimeout("requestHeartBeat()",5000);
	}
});