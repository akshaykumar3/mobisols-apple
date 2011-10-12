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
			text: 'help',
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
					var ac = homeform.down('#activecar');
					var sp = homeform.down('#serviceplan');
					if(newValue == 1 && oldValue == 0) {
						// Things todo.
						// Check whether atleast one car is valid.
						// Check whether payment details are valid.
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
								/*cl.setValue(resobj.response.city + resobj.response.state);
								to.setValue(resobj.response.tolloperator);
								at.setValue(resobj.response.avgtoll);
								pt.setValue(resobj.response.price);*/
						      	gtp.showNotifications(res.notifications);
							},
							failure: function(response){
								console.log('failure with status'+response.status);
								/*cl.setValue('Tallahassee, Florida');
								to.setValue(TollsData.getAt(0).get('tolloperator'));
								at.setValue(TollsData.getAt(0).get('avgtoll'));
								pt.setValue(TollsData.getAt(0).get('tollperday'));*/
							}
						});
						
						if(ac.getValue()) {
							var htfp = gtp.tabpanel.getComponent(0);
							htfp.load(Ext.ModelMgr.create({
								currentlocation: 'Tallahassee, Florida',
								tolloperator: TollsData.getAt(0).get('tolloperator'),
								avgtoll: TollsData.getAt(0).get('avgtoll'),
								tollperday: TollsData.getAt(0).get('tollperday')
							},'TollOperator'));
							
							setTimeout("requestHeartBeat()",5000);
							// This invokes client side heartbeat.
							gtp.clientsidehb();
							message='Settings are saved, Car '+Ext.getCmp('activecar').getValue()+' is active';
							Ext.Msg.alert('Activated',message);
							ac.setDisabled(true);
							sp.setDisabled(true);
						}
						else
							Ext.Msg.alert('Car should be selected');
					}
					else if(newValue == 0 && oldValue ==1) {
						gtp.isAppEnabled=0;
						cl.setValue("");
						to.setValue("");
						at.setValue("");
						pt.setValue("");
						ac.setDisabled(false);
						sp.setDisabled(false);
					}
				},
				beforechange: function(slider, thumb, newValue, oldValue) {
					var hc = Ext.getCmp('home');
					if(newValue == 1 && oldValue ==0)
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','activate')).get('url'),
						method: 'POST',
						params: {
							json: Ext.encode({
								active: 'Y',
								serviceId: '1',
								activeVehicleId: carsList.data.getAt(carsList.findExact('reg',hc.down('#activecar').getValue())).get('vehicleId')
							})
						},
						success: function(response) {
							gtp.log('Application is active');
							console.log(response.responseText);
					      	gtp.showNotifications(Ext.decode(response).notifications);
						},
						failure: function(res) {
							gtp.log(res.status+' Error, Activating the application');
						}
					});
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
			id: 'activecar',
			store: carsList,
			displayField: 'reg',
			valueField: 'reg'
		},{
			xtype: 'selectfield',
			name: 'serviceplan',
			id: 'serviceplan',
			label: 'Service',
			required: true
		}]
	},{
		xtype: 'fieldset',
		id: 'curlocservices',
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
			name: 'tolloperator',
			disabled: true,
			id: 'operator',
			label: 'Operator'
		},{
			xtype: 'textfield',
			name: 'avgtoll',
			disabled: true,
			id: 'avgtoll',
			label: 'AvgToll'
		},{
			xtype: 'textfield',
			name: 'tollperday',
			disabled: true,
			id: 'pdtoll',
			label: 'Per Day'
		}]
	}]
};