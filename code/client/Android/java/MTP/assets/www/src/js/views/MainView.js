gtp.views.MainView = {
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
						width: '80%',
						height: '80%',
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
		title: 'Pay Tolls For',
		items: [{
			xtype: 'button',
			text: 'Add Vehicle',
			id: 'addvehicle',
			handler: function(dis, ev) {
				if(dis.getText() == 'Add Vehicle') {
					gtp.tabpanel.getActiveItem().setActiveItem('addcar',{
						type: 'slide',
						direction: 'left'
					});
				}
				else {
					gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
						type: 'slide',
						direction: 'left'
					});
				}
			}
		}]
	},{
		xtype: 'fieldset',
		title: 'Using',
		items: [{
			xtype: 'button',
			text: 'Payment Details',
			id: 'm_paydetails',
			handler: function(dis, eve) {
				if(dis.getText() == 'Payment Details') {
					gtp.tabpanel.getActiveItem().setActiveItem('settingsform',{
						type: 'slide',
						direction: 'left'
					});
				} 
				else {
					gtp.tabpanel.getActiveItem().setActiveItem('settingsform',{
						type: 'slide',
						direction: 'left'
					});
				}
			}
		}]
	},{
		xtype: 'fieldset',
		items: [{
			xtype: 'textfield',
			label: 'A/c Bal $',
			id: 'acbalance',
			value: '-',
			disabled: true
		}]
	},{
		xtype: 'fieldset',
		items: [{
			xtype: 'button',
			id: 'tfd',
			text: 'Activate',
			ui: 'confirm',
			handler: function(dis, ev) {

				var homeform = Ext.getCmp('home');
				if(dis.getText() == 'Activate') {
					dis.setText('Deactivate');
					dis.getEl().removeCls('x-button-confirm');
					dis.getEl().addCls('x-button-decline');
					gtp.tabpanel.setLoading({
						msg: 'Activating..'
					},true);
					gtp.isAppEnabled=1;
					
					if(gtp.isCarValid && gtp.arePaymentDetailsValid) {
						message='Settings are saved';
						Ext.Msg.alert('Activated',message);
					}
					else {
						if(!gtp.isCarValid) {
							gtp.tabpanel.getActiveItem().setActiveItem('addcar',{
								type: 'slide',
								direction: 'left'
							});
						}
						else if(!gtp.arePaymentDetailsValid) {
							gtp.tabpanel.getActiveItem().setActiveItem('settingsform',{
								type: 'slide',
								direction: 'left'
							});
						}
					}
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
							gtp.tabpanel.setLoading(false);
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
							else if(resobj.status == 'fail') {
								dis.setText('Activate');
								dis.getEl().removeCls('x-button-decline');
								dis.getEl().addCls('x-button-confirm');
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
						},
						failure: function(res) {
							gtp.tabpanel.setLoading(false);
							gtp.log(res.status+' Error, Activating the application');
							Ext.Msg.alert('Server Error', 'Try activating later');
							dis.setText('Activate');
							dis.getEl().removeCls('x-button-decline');
							dis.getEl().addCls('x-button-confirm');
						}
					});
				}
				else if(dis.getText() == 'Deactivate') {
					dis.setText('Activate');
					dis.getEl().removeCls('x-button-decline');
					dis.getEl().addCls('x-button-confirm');
					gtp.isAppEnabled=0;
					
					if(Ext.is.iPhone) {
                        var actp = window.plugins.ActivatePlugin;
                        actp.deactivate();
					}
					else if(Ext.is.Android) {
						window.plugins.ActivatePlugin.deactivate(function(){},function(){});
					}
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','activate')).get('url'),
						method: 'POST',
						params: {
							json: Ext.encode({
								active: 'N',
								serviceId: '1'
							})
						},
						success: function(response) {
							gtp.log('Application is inactive');
							console.log(response.responseText);
							var resobj = Ext.decode(response.responseText);
							if(resobj.status == 'success' && resobj.response.active == 'N'){
								if(Ext.is.iPhone) {
                                    var actp = window.plugins.ActivatePlugin;
                                    actp.deactivate();
                                    console.log('activate plugin is called');
								}
								else if(Ext.is.Android) {
									window.plugins.ActivatePlugin.deactivate(function(){},function(){});
								}
							}
							else if(resobj.status == 'fail') {
								// deal later.
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
						},
						failure: function(res) {
							gtp.log(res.status+' Error, Activating the application');
						}
					});
				}
			}
		}]
	}]
};