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
							json: Ext.encode({
								state: updateCar.get('state'),
								registration: updateCar.get('reg'),
								type: updateCar.get('type'),
								isActive: 'N',//stmod.get('active'),
								startDate: updateCar.get('startDate').format('Y-m-d H:i:s'),
							    endDate: updateCar.get('endDate').format('Y-m-d H:i:s'),
								ownerType: 'primary owner', 
								vehicleId: 1
							})
						},
						success: function(response){
							var resobj=Ext.decode(response.responseText);
							var obj=resobj.response;
							console.log(response.responseText);
						},
						failure: function(response){
							Ext.Msg.alert('Error in updating car details');
						}
					});
					gtp.tabpanel.setActiveItem('mycars');
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
				id: 'DetailPanel.state'
			},{
				xtype: 'textfield',
				name: 'reg',
				label: 'Reg',
				disabled: true,
				id: 'DetailPanel.reg'
			},{
				xtype: 'textfield',
				name: 'type',
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
				name: 'startDate',
				id: 'DetailPanel.from',
				disabled: true,
				value: gtp.today
			},{
				label: 'To',
				name: 'endDate',
				id: 'DetailPanel.to',
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
		}]
	};
