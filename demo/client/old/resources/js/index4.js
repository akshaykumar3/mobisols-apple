Ext.setup({
    icon: 'icon.png',
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    glossOnIcon: false,
    onReady: function() {
		console.log('Page is setup ');
		console.log(carsList.getAt(0).get('reg'));
		console.log(TollsData.getAt(0).get('tolloperator'));
		console.log(TollsData.getAt(0).get('avgtoll'));
		//carsList.insert(0,[{reg: '12345',state: 'LB',type: 'sedan'}]);
		var EntryCar=new Ext.Panel({
			id: 'entrycar',
			scroll: 'vertical',
			dockedItems: [
				{
					xtype: 'toolbar',
					title: 'New Car',
					dock: 'top',
					items: [{
						text: 'back',
						ui: 'action',
						handler: function(){
							tabpanel.setActiveItem('mycar');
						}
					},{
						xtype: 'spacer'
					},{
						text: 'ok',
						ui: 'action',
						handler: function(){
							mycar.setActiveItem('mycar');
						}
					}]
				},{
					xtype: 'fieldset',
					title: 'CarInfo',
					dock: 'top',
					defaults: {
						labelWidth: '40%'
					},
					items: [
						{
							xtype: 'textfield',
							label: 'State',
							id: 'st'
						},
						{
							xtype: 'textfield',
							label: 'Reg',
							id: 'rg'
						},
						{
							xtype: 'selectfield',
							label: 'Type',
							id: 'tp',
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
						}
					]
				},
				{
					xtype: 'fieldset',
					title: 'Car Period',
					dock: 'top',
					items: [
						{
							xtype: 'datepickerfield',
							label: 'Start Date',
							name: 'sd'
						},
						{
							xtype: 'datepickerfield',
							label: 'End Date',
							name: 'ed'
						}
					]
				}
			]
		});

		var value=1;

		var CarList= Ext.extend(Ext.Panel,{
			fullscreen: true,
			cardSwitchAnimation: 'slide',
			layout: 'card',
			dockedItems:[{
			xtype: 'toolbar',
			dock: 'top',
			title: 'My Cars',
			layout: {
				pack: 'right'
			},
			items: [{
				iconMask: true,
				ui: 'plain',
				iconCls: 'add',
				itemId: 'addCar',
				handler: function(){
					this.setActiveItem('entrycar');
				}
			}]
		}],
		items: [{
            //width: Ext.is.Phone ? undefined : 300,
            //height: 500,
            xtype: 'list',
            store: carsList,
			scroll: 'vertical',
            itemTpl: '<div class="contact"><strong>{reg}</strong>  - {state} - {type}</div>',
			onItemDisclosure: function(record, btn, index){
				mycar.setActiveItem('entrycar');
			}
        }]
		});

		var position = new google.maps.LatLng(37.49885,-122.198452);
		var position1=new google.maps.LatLng(37.42980,-122.210674);
		var position2=new google.maps.LatLng(37.4875,-122.138523);
		var markerDetails = new Array( 
					{ covered: true, description: "toll no 1, $2", url: "www.tollno1.com"},
					{ covered: false, description: "toll no 2, $2", url: "www.tollno2.com"}
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
					    xtype: 'togglefield',
						id: 'tfd',
						value: 1,
						name: 'enable',
						label: 'Global toll pass - enable',
						handler: function(){
							console.log("handler");
							var cloc=Ext.getCmp('home');
							cloc.curloc.value="Illinois";
						},
						listeners: {
							//var sign=1;
							el: {
								//sign=sign * -1;
								//document.getElementById(curloc).value="Illinois";
								click: function() { 
									console.log(Ext.getCmp('tfd').value);
									var toggle=Ext.getCmp('tfd');
									var cl=Ext.getCmp('curloc');
									var to=Ext.getCmp('operator');
									var at=Ext.getCmp('avgtoll');
									var pt=Ext.getCmp('pdtoll');
									//toggle.value=1;
									if(toggle.value==0){
										console.log(cl.getValue());
										console.log(toggle.value);
										cl.setValue("San Diego");
										to.setValue(TollsData.getAt(0).get('tolloperator'));
										at.setValue(TollsData.getAt(0).get('avgtoll'));
										pt.setValue(TollsData.getAt(0).get('tollperday'));
										toggle.value=1;
									}else{
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
						instructions: 'Please enter the information above.',
						defaults: {
							// labelAlign: 'right'
							labelWidth: '35%'
						},
						items: [{
							xtype: 'textfield',
							name: 'currloc',
							id: 'curloc',
							label: 'Current location',
							value: 'Illinois',
							//placeHolder: 'San Diego, CA',
							autoCapitalize : true,
							useClearIcon: true
						},{
								xtype: 'textfield',
								name: 'oper',
								id: 'operator',
								label: 'Operator'
							},
							{
								xtype: 'textfield',
								name: 'avgtoll',
								id: 'avgtoll',
								label: 'Avg Toll Price'
							},{
								xtype: 'textfield',
								name: 'perdaytoll',
								id: 'pdtoll',
								label: 'Per Day'
							},
				 {
					xtype: 'selectfield',
					name: 'activecar',
					label: 'ActiveCar',
					options: [{
						text: '4GPB522',
						value: 'type1'
					},{
						text: '4G23VS2',
						value: 'type2'
					}]
				},
				{
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
					}	
				]}]
    }, {
        title: 'My cars',
        iconCls: 'favorites',
        //badgeText:'4',
        activeItem: '1',
		id: 'mycars',
        /*layout: Ext.is.Phone ? 'fit' : {
            type: 'vbox',
            align: 'center',
            pack: 'center'
        },*/
        cls: 'card2',
		dockedItems:[{
			xtype: 'toolbar',
			dock: 'top',
			title: 'My Cars',
			layout: {
				pack: 'right'
			},
			items: [{
				iconMask: true,
				ui: 'plain',
				iconCls: 'add',
				itemId: 'addCar',
				handler: function(){
					tabpanel.setActiveItem('addcar');
				}
			},EntryCar]
		}],
        items: [
				{
            //width: Ext.is.Phone ? undefined : 300,
            //height: 500,
            xtype: 'list',
            store: carsList,
			scroll: 'vertical',
            itemTpl: '<div class="contact"><strong>{reg}</strong>  - {state} - {type}</div>',
			onItemDisclosure: function(record, btn, index){
				tabpanel.setActiveItem('addcar');
			}
        }]
    },{
			title: 'Add Car',
			id: 'addcar',
			iconcls: 'add',
			ui: 'action',
			hidden: true,
			cls: 'carcls',
			items: [
					EntryCar
			]
		},{
        title: 'Paid tolls',
		id: 'paidtolls',
        iconCls: 'downloads',
        cls: 'demo-list',
        items: [{
            xtype: 'list',
			scroll: 'vertical',
            store: paidTolls,
            itemTpl: '<div class="contact">{amount} on <strong>{date}</strong> @ {location} - {reg}</div>' 
        }]
    }, {
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
            },
            {
                xtype: 'textfield',
                name: 'userid',
                label: 'UserID',
                placeHolder: 'userID',
                autoCapitalize : false,
                required: true,
                useClearIcon: true
            }
            , {
                xtype: 'passwordfield',
                name: 'password',
                label: 'Password',
                useClearIcon: true
            } ]},
            {
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
            },  {
                xtype: 'checkboxfield',
                name: 'autopay',
                label: 'Auto-pay'
            },{
                xtype: 'textfield',
                name: 'ccnumber',
                label: 'Credit card#',
                placeHolder: 'XXXX-XXXX-XXXX-XXXX',
                useClearIcon: true
            }
            , {
                xtype: 'datepickerfield',
                name: 'expirydate',
                label: 'Expiry date',
                picker: { yearFrom: 2011 }
            }, {
                xtype: 'selectfield',
                name: 'cardtype',
                label: 'Credit card type',
                options: [{
                    text: 'Visa',
                    value: 'visa'
                },
                {
                    text: 'Master',
                    value: 'master'
                },{
                    text: 'American Express',
                    value: 'amex'
                }, {
                    text: 'Discover',
                    value: 'discover'
                }]
            }, {
                xtype: 'hiddenfield',
                name: 'secret',
                value: false
            }, {
                xtype: 'textareafield',
                name: 'billingadd',
                label: 'Billing address'
            }]
        },
            {
            layout: 'vbox',
            defaults: {xtype: 'button', flex: 1, style: 'margin: .5em;'},
            items: [{
                text: 'Disable fields',
                scope: this,
                hasDisabled: false,
                handler: function(btn){
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
            }, {
                text: 'Reset form',
                handler: function(){
                    Ext.getCmp('basicform').reset();
                }
            }]
        }]
    }, 
				{
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
						maprender: function(comp, map){
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
				}]
        });
		
    }
});