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
				ui: 'action',
				disabled: true,
				handler: function(button, event) {
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
					yearTo: gtp.today.getFullYear()
				}
			}]
		}]
	};
