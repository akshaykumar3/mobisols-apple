Ext.ns('gtp.tabs');

gtp.tabs.CarDetailView = {
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
					gtp.tabpanel.setActiveItem('mycars');
				}
			},{
				xtype: 'spacer'
			},{
				text: 'done',
				id: 'changevd',
				ui: 'action',
				disabled: true,
				handler: function(button, event) {
					
					var updateCar = gtp.tabpanel.getComponent('details').getRecord();
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
							    endDate: Ext.getCmp('dpto').getValue().format('M j, Y g:i:s A'),
								ownerType: updateCar.get('ownerType'), 
								vehicleId: updateCar.get('vehicleId')
							})
						},
						success: function(response){
							var resobj=Ext.decode(response.responseText);
							var obj=resobj.response;
							gtp.tabpanel.setActiveItem('mycars');
							Ext.Msg.alert(obj.description);
							updateCar.set('endDate',Ext.getCmp('dpto').getValue());
							Ext.getCmp('changevd').setDisabled(true);
						},
						failure: function(response){
							Ext.Msg.alert('Error in updating car details');
							gtp.tabpanel.setActiveItem('mycars');
						}
					});
				}
			}]
		}],
		items:[{
			xtype: 'fieldset',
			title: 'CarInfo',
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
			}]
		},{
			xtype: 'fieldset',
			title: 'Car Period',
			defaults: {
				xtype: 'datepickerfield'
			},
			items: [{
				label: 'From',
				name: 'startDate',
				id: 'dpfrom',
				disabled: true,
				value: gtp.today
			},{
				label: 'To',
				name: 'endDate',
				id: 'dpto',
				picker: {
					yearFrom: gtp.today.getFullYear(),
					yearTo: gtp.today.getFullYear()+10
				},
				listeners: {
					change: function(curobj, newValue, oldValue) {
						if(newValue != oldValue) {
							Ext.getCmp('changevd').setDisabled(false);
						}
					}
				}
			}]
		},{
			xtype: 'button',
			text: 'Delete Car',
			handler: function(but, event) {
				
				var stmod = gtp.tabpanel.getComponent('details').getRecord();
				Ext.Ajax.request({
					url: webServices.getAt(webServices.findExact('service','deletevehicle')).get('url'),
					method: 'DELETE',
					params: {
						json: Ext.encode({
							state: stmod.get('state'),
							registration: stmod.get('reg'),
							type: stmod.get('type'),
							isActive: stmod.get('isActive'),
							startDate: stmod.get('startDate').format('M j, Y g:i:s A'),
						    //endDate: gtp.checkDateString(stmod.get('endDate')),
							ownerType: stmod.get('ownerType'), 
							vehicleId: stmod.get('vehicleId')
						})
					},
					success: function(response){
						var resobj=Ext.decode(response.responseText);
						var obj=resobj.response;
						if(obj.success == "Y") {
							carsList.removeAt(carsList.indexOf(stmod));
							Ext.Msg.alert('Removed Car successfully');
						}
						gtp.tabpanel.setActiveItem('mycars');
					},
					failure: function(response){
						Ext.Msg.alert('Error in deleting the car');
					}
				});
			}
		}]
	};
