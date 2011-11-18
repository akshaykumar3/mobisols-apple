gtp.views.CarDetailView = {
	id: 'details',
	xtype: 'formpanel',
	scroll: 'vertical',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Edit Car',
		dock: 'top',
		items: [{
			text: 'My Cars',
			ui: 'back',
			handler: function(button , event) {
				gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
					type: 'slide',
					direction: 'right'
				});
			}
		},{
			xtype: 'spacer'
		},{
			text: 'done',
			id: 'changevd',
			ui: 'action',
			disabled: true,
			handler: function(button, event) {
				var updateCar = gtp.tabpanel.getActiveItem().down('#details').getRecord();
				var curtab = gtp.tabpanel.getActiveItem().down('#details');
				if(!gtp.dateValidity(gtp.today(), curtab.down('#dpto').getValue()))
					Ext.Msg.alert(gtp.dict.datevalidity);
				else {
					gtp.tabpanel.setLoading({
						msg: 'Updating Vehicle...'
					});
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','addcar')).get('url'),
						method: 'POST',
						params: {
							is_new_vehicle: 'N',
							json: Ext.encode({
								state: updateCar.get('state'),
								registration: updateCar.get('reg'),
								type: updateCar.get('type'),
								isActive: updateCar.get('isActive'),
								startDate: updateCar.get('startDate').format('M j, Y g:i:s A'),
							    endDate: (Ext.getCmp('dpto').getValue() == null) ? null : Ext.getCmp('dpto').getValue().format('M j, Y g:i:s A'),
								ownerType: updateCar.get('ownerType'), 
								vehicleId: updateCar.get('vehicleId'),
								make: (updateCar.get('make') == '' || updateCar.get('make') == null) ? null : updateCar.get('make'),
								model: (updateCar.get('model') == '' || updateCar.get('model') == null) ? null : updateCar.get('model'),
								manufacturedYear: (updateCar.get('year') == '' || updateCar.get('year') == null) ? null : updateCar.get('year'),
								color: (updateCar.get('color') == '' || updateCar.get('color') == null) ? null : updateCar.get('color'),
								vin: null
							})
						},
						success: function(response){
							gtp.tabpanel.setLoading(false);
							var resobj=Ext.decode(response.responseText);
							var obj=resobj.response;
							updateCar.set('endDate',curtab.down('#dpto').getValue());
							Ext.getCmp('changevd').setDisabled(true);
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
							gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
								type: 'slide',
								direction: 'right'
							});
						},
						failure: function(response){
							gtp.tabpanel.setLoading(false);
							gtp.log(response.status+' Error in updating car details');
							Ext.Msg.alert(gtp.dict.updatecar_failure);
							gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
								type: 'slide',
								direction: 'right'
							});
						}
					});
				}
			}
		}]
	}],
	items:[{
		xtype: 'fieldset',
		title: 'CarInfo',
		defaults: {
			listeners: {
				change: function(curobj, newValue, oldValue) {
					if(newValue != oldValue) {
						gtp.tabpanel.getActiveItem().down('#details').updateRecord(gtp.tabpanel.getActiveItem().down('#details').getRecord());
						Ext.getCmp('changevd').setDisabled(false);
					}
				}
			}
		},
		items:[{
			xtype: 'textfield',
			name: 'state',
			label: 'State',
			disabled: true,
			id: 'dpstate'
		},{
			xtype: 'textfield',
			name: 'reg',
			label: 'Reg',
			disabled: true,
			id: 'dpreg'
		},{
			xtype: 'textfield',
			name: 'type',
			label: 'Type',
			id: 'dptype',
			disabled: true
		},{
			xtype: 'textfield',
			id: 'make',
			name: 'make',
			label: 'Make',
			disabled: true
		},{
			xtype: 'textfield',
			id: 'model',
			name: 'model',
			label: 'Model',
			disabled: true
		},{
			xtype: 'textfield',
			id: 'year',
			name: 'year',
			label: 'year',
			disabled: true
		},{
			xtype: 'textfield',
			id: 'color',
			name: 'color',
			label: 'Color',
			disabled: true
		}]
	},{
		xtype: 'fieldset',
		title: 'Car Period',
		defaults: {
			xtype: 'datepickerfield'
		},
		items: [{
			xtype: 'textfield',
			label: 'Ownership',
			id: 'ownerType',
			name: 'ownerType',
			disabled: true	
		},{
			label: 'From',
			name: 'startDate',
			id: 'dpfrom',
			disabled: true
		},{
			label: 'To',
			name: 'endDate',
			id: 'dpto',
			renderData: {
				placeHolder: 'No end date',
			},
			picker: {
				yearFrom: gtp.today().getFullYear(),
				yearTo: gtp.today().getFullYear()+10
			},
			listeners: {
				change: function(curobj, newValue, oldValue) {
					if(newValue != oldValue) {
						gtp.tabpanel.getActiveItem().down('#details').updateRecord(gtp.tabpanel.getActiveItem().down('#details').getRecord());
						gtp.tabpanel.getActiveItem().down('#details').down('#changevd').setDisabled(false);
					}
				}
			}
		}]
	},{
		xtype: 'button',
		ui: 'decline',
		text: 'Delete Car',
		handler: function(but, event) {

			var stmod = gtp.tabpanel.getActiveItem().down('#details').getRecord();
			Ext.Msg.confirm("Confirmation", "Are you sure to delete car?", function(button) {
				if(button == 'yes') {
					gtp.tabpanel.setLoading({
						msg: 'Deleting Vehicle...'
					});
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','deletevehicle')).get('url'),
						method: 'DELETE',
						params: {
							vehicleId: stmod.get('vehicleId')
						},
						success: function(response){
							gtp.tabpanel.setLoading(false);
							var resobj=Ext.decode(response.responseText);
							var obj=resobj.response;
							gtp.log(obj.description);
							if(resobj.status == "success") {
								carsList.removeAt(carsList.findExact('reg', stmod.get('reg')));
								gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
									type: 'slide',
									direction: 'right'
								});
								var avbt=gtp.tabpanel.getActiveItem().down('#home').down('#addvehicle');
								var text = avbt.getText();
								if(text != 'Add Vehicle') {
									if(text.search(stmod.get('reg')+', ') !=-1) {
										avbt.setText( text.replace(stmod.get('reg')+', ', '') );
									} 
									else if(text.search(stmod.get('reg')) !=-1) {
										if( text.search(', '+stmod.get('reg')) !=-1) {
											avbt.setText( text.replace(', '+stmod.get('reg'), '') );
										}
										else {
											avbt.setText('Add Vehicle');
										}
									}
								}
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
						},
						failure: function(response){
							gtp.tabpanel.setLoading(false);
							gtp.log(response.status+' Error deleting the car');
							Ext.Msg.alert(gtp.dict.deletecar_failure);
						}
					});
				}
			}, this);
		}
	}]
};
