Ext.ns('gtp.tabs');

gtp.tabs.HomeScreenView = {
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
			text: 'About',
			handler: function(but, eve) {
				if(!this.popup) {
					this.popup = new Ext.Panel({
						floating: true,
						modal: true,
						centered: true,
						width: 300,
						height: 400,
						styleHtmlContent: true,
						scroll: 'vertical',
						html: '<h1><b>Home</b></h1>'+ 
						'<p>This screen shows u the current location and '+
						'gives u feature to enable the application.'+
						' It gives the details of the nearest toll operator</p>'+
						'<br/><h2><b> My cars </b></h2>'+
						'<p> This contains the list of vehicles added by the user,'+
						' it allowes user to add, edit and delete a vehicle</p>'+
						'<br/><h3><b> Paid Tolls </b></h3>'+
						'<p> This shows the list of the tolls user has paid using the tollpass services</p>'+
						'<br/><h3><b> Settings </b></h3>'+
						'<p>This contains users payment details and billing details</p>'
					});
					this.popup.show('pop');
				}
				else
					this.popup.show('pop');
			}
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
				change: function(slider, thumb, newValue, oldValue) {
					
					var homeform = Ext.getCmp('home');
					var cl = homeform.down('#curloc');
					var to = homeform.down('#operator');
					var at = homeform.down('#avgtoll');
					var pt = homeform.down('#pdtoll');
					if(newValue == 1 && oldValue == 0) {

						gtp.isAppEnabled=1;
						var clat, clong;
						clat = gtp.getGeoLatitude();
						clong = gtp.getGeoLongitude();
						
						Ext.Ajax.request({
							url: webServices.getAt(webServices.findExact('service','nearesttoll')).get('url'),
							method: 'GET',
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
								if( resobj.status == 'success' ) {
									//cl.setValue(resobj.response.city + resobj.response.state);
									to.setValue(resobj.response.tollOperator);
									at.setValue(resobj.response.averagePrice);
									pt.setValue(resobj.response.tollPrice);
								}
						      	gtp.showNotifications(resobj.response.notifications);
						      	gtp.parse(resobj.response.commands);
							},
							failure: function(response){
								console.log('Nearest toll failure with status '+response.status);
								gtp.log('Nearest toll failure with status '+response.status);
							}
						});

						if(gtp.isCarValid && gtp.arePaymentDetailsValid) {
							//setTimeout("requestHeartBeat()",1000);
							// This invokes client side heartbeat.
							//gtp.clientsidehb();
							message='Settings are saved';
							Ext.Msg.alert('Activated',message);
							gtp.tabpanel.getActiveItem().down('#tfd').disable();
						}
						else {
							if(!gtp.isCarValid) {
								Ext.Msg.alert('Please add a vehicle');
								gtp.tabpanel.setActiveItem('carsviewport');
								gtp.tabpanel.getActiveItem().setActiveItem('addcar');
							}
							else if(!gtp.arePaymentDetailsValid) {
								Ext.Msg.alert('Please fill payment details');
								gtp.tabpanel.setActiveItem('basicform');
								gtp.tabpanel.getActiveItem().setActiveItem('settingsform');
							}
						}
					}
					else if(newValue == 0 && oldValue ==1) {
						gtp.isAppEnabled=0;
						cl.setValue("");
						to.setValue("");
						at.setValue("");
						pt.setValue("");
						if(Ext.is.iPhone) {
	                        var actp = window.plugins.ActivatePlugin;
	                        actp.deactivate();
						}
						else if(Ext.is.Android) {
							window.plugins.ActivatePlugin.deactivate(function(){},function(){});
						}
					}
				},
				beforechange: function(slider, thumb, newValue, oldValue) {
					if(newValue == 1 && oldValue ==0) {
						Ext.Ajax.request({
							url: webServices.getAt(webServices.findExact('service','activate')).get('url'),
							method: 'POST',
							params: {
								json: Ext.encode({
									active: 'Y',
									serviceId: '1'
								})
							},
							success: function(response) {
								gtp.log('Application is active');
								console.log(response.responseText);
								var resobj = Ext.decode(response.responseText);
								if(resobj.status == 'success' && resobj.response.active == 'Y'){
									if(Ext.is.iPhone) {
	                                    var actp = window.plugins.ActivatePlugin;
	                                    actp.activate();
	                                    console.log('activate plugin is called');
									}
									else if(Ext.is.Android) {
										window.plugins.ActivatePlugin.activate(function(){},function(){});
									}
								}
						      	gtp.showNotifications(resobj.response.notifications);
						      	gtp.parse(resobj.response.commands);
							},
							failure: function(res) {
								gtp.log(res.status+' Error, Activating the application');
							}
						});
						return true;
					}
				}
			}
		}]
	},{
		xtype: 'fieldset',
		id: 'curlocservices',
		title: 'Nearest Toll',
		items: [{
			xtype: 'textfield',
			name: 'currentlocation',
			id: 'curloc',
			label: 'Location',
			disabled: true
		},{
			xtype: 'textfield',
			name: 'tolloperator',
			disabled: true,
			id: 'operator',
			label: 'toll operator'
		},{
			xtype: 'textfield',
			name: 'avgtoll',
			disabled: true,
			id: 'avgtoll',
			label: 'toll price'
		},{
			xtype: 'textfield',
			name: 'tollperday',
			disabled: true,
			id: 'pdtoll',
			label: 'service fee'
		}]
	}],
	listeners: {
		beforeactivate: function(dis) {
			if(!gtp.isCarValid || !gtp.arePaymentDetailsValid) {
				var td = dis.down('#tfd');
				if(td.getValue() == 1) 
					td.toggle();
			}
		}
	}
};