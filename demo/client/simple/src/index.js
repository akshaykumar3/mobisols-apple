Ext.setup({
	icon: 'icon.png',
	tabletStartupScreen: 'tablet_startup.png',
	phoneStartupScreen: 'phone_startup.png',
	glossOnIcon: false,
	onReady: function() {
		
 
		var value=1;
		
		var currDate = new Date();

		var position = new google.maps.LatLng(37.49885,-122.198452);
		var position1=new google.maps.LatLng(37.42980,-122.210674);
		var position2=new google.maps.LatLng(37.4875,-122.138523);
		var markerDetails = new Array({
			covered: true,
			description: "toll no 1, $2",
			url: "www.tollno1.com"
		}, {
			covered: false,
			description: "toll no 2, $2",
			url: "www.tollno2.com"
		}
		);
		infowindow = new google.maps.InfoWindow({
			content: 'Palo Alto entry Toll, 1$</br> Click <a href="www.tollno1.com">here</a> to visit toll website'
		});
		infowindow1=new google.maps.InfoWindow({
			content: markerDetails[0].description+'  '+markerDetails[0].url
		});
		infowindow2=new google.maps.InfoWindow({
			content: markerDetails[1].description+'  '+markerDetails[1].url
		});

		var imageMarker=new google.maps.MarkerImage(
		'resources/images/covered.png',
		new google.maps.Size(20,34),
		new google.maps.Point(0,0),
		new google.maps.Point(16,31)
		);

		newcomponent=new Ext.Component({
			tpl: [
			'I am wrapped to a component'
			]
		});

		var curl,avgt,pt,tollop;

		var center;

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

			/*defaults: {
			 scroll: 'vertical'
			 },*/
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
					xtype: 'fieldset',
					title: 'Car & Service',
					id: 'fset',
					instructions: 'using credit card below',
					defaults: {
						// labelAlign: 'right'
						labelWidth: '35%'
					},
					items: [{
						xtype: 'textfield',
						name: 'carReg',
						id: 'carReg',
						label: 'Pay tolls for',
						value: '4GPB522',
						//placeHolder: 'San Diego, CA',
						autoCapitalize : true,
						useClearIcon: true
					},{
						xtype: 'selectfield',
						name: 'state',
						id: 'state',
						label: 'of State',
						required: true,
						options: [
							{text: ' ', value: '' }, 
							{text: 'Alabama', value: 'AL' }, 
							{text: 'Alaska', value: 'AK'}, 
							{text: 'Arizona', value: 'AZ'},
							{text: 'Arkansas', value: 'AR'}, 
							{text: 'California', value: 'CA'}, 
							{text: 'Colorado', value: 'CO'}, 
							{text: 'Connecticut', value: 'CT'}, 
							{text: 'Delaware', value: 'DE'}, 
							{text: 'District Of Columbia', value: 'DC'}, 
							{text: 'Florida', value: 'FL'}, 
							{text: 'Georgia', value: 'GA'}, 
							{text: 'Hawaii', value: 'HI'}, 
							{text: 'Idaho', value: 'ID'}, 
							{text: 'Illinois', value: 'IL'}, 
							{text: 'Indiana', value: 'IN'}, 
							{text: 'Iowa', value: 'IA'}, 
							{text: 'Kansas', value: 'KS'}, 
							{text: 'Kentucky', value: 'KY'}, 
							{text: 'Louisiana', value: 'LA'}, 
							{text: 'Maine', value: 'ME'}, 
							{text: 'Maryland', value: 'MD'}, 
							{text: 'Massachusetts', value: 'MA'}, 
							{text: 'Michigan', value: 'MI'}, 
							{text: 'Minnesota', value: 'MN'}, 
							{text: 'Mississippi', value: 'MS'}, 
							{text: 'Missouri', value: 'MO'}, 
							{text: 'Montana', value: 'MT'}, 
							{text: 'Nebraska', value: 'NE'}, 
							{text: 'Nevada ', value: 'NV'}, 
							{text: 'New Hampshire', value: 'NH'}, 
							{text: 'New Jersey', value: 'NJ'}, 
							{text: 'New Mexico', value: 'NM'}, 
							{text: 'New York', value: 'NY'}, 
							{text: 'North Carolina', value: 'NC'}, 
							{text: 'North Dakota', value: 'ND'}, 
							{text: 'Ohio', value: 'OH'}, 
							{text: 'Oklahoma ', value: 'OK'}, 
							{text: 'Oregon', value: 'OR'}, 
							{text: 'Pennsylvania', value: 'PA'}, 
							{text: 'Rhode Island', value: 'RI'}, 
							{text: 'South Carolina', value: 'SC'}, 
							{text: 'South Dakota', value: 'SD'}, 
							{text: 'Tennessee', value: 'TN'}, 
							{text: 'Texas', value: 'TX'}, 
							{text: 'Utah', value: 'UT'}, 
							{text: 'Vermont', value: 'VT'}, 
							{text: 'Virginia', value: 'VA'}, 
							{text: 'Washington', value: 'WA'}, 
							{text: 'West Virginia', value: 'WV'}, 
							{text: 'Wisconsin', value: 'WI'}, 
							{text: 'Wyoming', value: 'WY'}
						]
						
					},{
						xtype: 'datepickerfield',
						id: 'from',
						name: 'from',
						label: 'From',
						picker: {
							yearFrom: currDate.getFullYear(),
							yearTo:currDate.getFullYear()
						},
						value :
						{
							year:currDate.getFullYear(),
							month:currDate.getMonth()+1,
							day:currDate.getDate()
						}
					},{
						xtype: 'datepickerfield',
						id: 'to',
						name: 'to',
						label: 'To',
						picker: {
							yearFrom: currDate.getFullYear(),
							yearTo:currDate.getFullYear()
						},
						value :
						{
							year:currDate.getFullYear(),
							month:currDate.getMonth()+1,
							day:currDate.getDate()
						}
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
						}]
					}
					]
				},{

					xtype: 'list',
					name: 'cc',
					id: 'cc',
					store:creditCard,
					label: 'Credit card',
					itemTpl: '<div class="contact"><strong>{num}</strong></div>',
					onItemDisclosure: function(record) {
						//Ext.Msg.alert('Tap', 'Disclose more info for ');
						Ext.dispatch({
							controller: app.controllers.contacts,
							action: 'show',
							id: record.getId()
						});
					}
				}
				,{
					layout: 'vbox',
					defaults: {
						xtype: 'button',
						flex: 1,
						style: 'margin: .5em;'
					},
					items: [{
						text: 'Activate',
						scope: this,
						hasDisabled: false,
						handler: function(btn) {
							var form = Ext.getCmp('home');

							if (btn.hasDisabled) {
								form.enable();
								btn.hasDisabled = false;
								btn.setText('Activate');
							} else {
								form.disable();
								btn.hasDisabled = true;
								btn.setText('Disable');
							}
						}
					}]
				}]
			},
			{ 
				title: 'Paid tolls',
				id: 'paidtolls',
				iconCls: 'downloads',
				
				//badgeText:'4',
				layout: Ext.is.Phone ? 'fit' : {
					type: 'vbox',
					align: 'center',
					pack: 'center'
				},
			
			
				cls: 'demo-list',
				items: [{
					
					//width: Ext.is.Phone ? undefined : 300,
					//height: 500,
					xtype: 'list',
					scroll: 'vertical',
					store: paidTolls,
					grouped : true,
					itemTpl: '<div class="contact">{amount}  @ {location} </div>'
					
				}]
			},{
				title: 'Map',
				id: 'mappanel',
				xtype: 'map',
				mapOptions: {
					center: new google.maps.LatLng(37.44885,-122.158592),
					//center: new google.maps.LatLng(gtGeo.latitude, gtGeo.longitude),
					zoom: 12
				},
				cls: 'card5',
				iconCls: 'locate',
				listeners: {
					maprender: function(comp, map) {
						//map.setCenter(new google.maps.LatLng(gtGeo.latitude, gtGeo.longitude));
						var marker1= new google.maps.Marker({
							position: position,
							title: 'Toll Road 1, Price $1',
							map: map
						});
						var marker2=new google.maps.Marker({
							position: position1,
							title: 'Toll Road 2, Price $1.5',
							map: map
						});
						var marker3=new google.maps.Marker({
							position: position2,
							title: 'Toll road 3, Price $2.0',
							map: map
						});
						google.maps.event.addListener(marker1, 'click', function() {
							infowindow.open(map, marker1);
						});
						google.maps.event.addListener(marker2, 'click', function() {
							infowindow1.open(map,marker2);
						});
						google.maps.event.addListener(marker3, 'click', function() {
							infowindow2.open(map,marker3);
						});
					}
				}
			}

			]
		});

	}
});