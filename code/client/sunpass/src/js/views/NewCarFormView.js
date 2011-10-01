gtp.tabs.NewCarFormView = {
	id: 'addcar',
	xtype: 'formpanel',
	scroll: 'vertical',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'New Car',
		dock: 'top',
		items: [{
			xtype: 'button',
			text: 'My Cars',
			ui: 'back',
			handler: function(button, event) {
				gtp.tabpanel.setActiveItem('mycars');
			}
		},{
			xtype: 'spacer'
		},{
			xtype: 'button',
			id: 'addcarconfirm',
			text: 'add',
			ui: 'confirm',
			disabled: true,
			handler: function(button, event) {
				var acfd = gtp.tabpanel.getComponent('addcar').getValues(true);
				console.log('State is '+acfd.st);
				if(acfd.state == "")
					Ext.Msg.alert('enter state field');
				else if(acfd.rg == "")
					Ext.Msg.alert("Enter registration number");
				else if(acfd.tp == "")
					Ext.Msg.alert('Select car type');
				else if(!gtp.validateCar(acfd.rg, acfd.state))
					Ext.Msg.alert('Invalid Reg No');
				else {
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','addcar')).get('url'),
						method: 'POST',
						params: {
							is_new_vehicle: 'Y',
							json: Ext.encode({
								state: acfd.st,
								registration: acfd.rg,
								type: acfd.tp,
								isActive: "N",
								startDate: gtp.today.format('M j, Y g:i:s A'), // Valid date format on server side.
								ownerType: 'primary owner', 
								vehicleId: 1
							})
						},
						success: function(response){
							console.log('Add car webservice success');
							carsList.insert(0,Ext.ModelMgr.create({
								state: acfd.st,
								reg: acfd.rg,
								type: acfd.tp,
								startDate: acfd.startDate,
								endDate: acfd.endDate
							},'Cars'));
							Ext.getCmp('activecar').setOptions([{
								text: acfd.rg,
								value: acfd.rg
							}],true);
						},
						failure: function(response){
							Ext.Msg.alert('Error in adding the car');
						}
					});
					gtp.tabpanel.setActiveItem('mycars','fade');
				}
			}
		}]
	}],
	items:[{
		xtype: 'fieldset',
		title: 'CarInfo',
		defaults: {
			listeners: {
				change: function(co, newValue, oldValue) {
					if(newValue != oldValue) {
						var ac = Ext.getCmp('addcarconfirm');
						if(ac.isDisabled()) {
							ac.setDisabled(false);
						}
					}
				}
			}
		},
		items:[{
			xtype: 'selectfield',
			id: 'st',
			name: 'st',
			label: 'State',
			placeHolder: 'select state',
			required: true,
			options: [{
				text: 'Florida',
				value: 'Florida'
			},{
				text: 'Illinois',
				value: 'Illinois'
			},{
				text: 'Texas',
				value: 'Texas'
			}]
		},{
			xtype: 'textfield',
			label: 'Reg',
			required: true,
			id: 'rg',
			name: 'rg'
		},{
			xtype: 'selectfield',
			id: 'tp',
			name: 'tp',
			label: 'Type',
			required: true,
			placeHolder: 'select type'
		},{
			xtype: 'selectfield',
			label: 'Make',
			name: 'make',
			id: 'carmaker',
			required: true,
			placeHolder: 'Car Maker'
		},{
			xtype: 'selectfield',
			label: 'Model',
			name: 'model',
			id: 'md',
			required: true,
			placeHolder: 'Car Model'
		}]
	},{
		xtype: 'fieldset',
		title: 'Car Period',
		defaults: {
			xtype: 'datepickerfield'
		},
		items: [{
			label: 'From',
			id: 'startDate',
			disabled: true,
			value: gtp.today
		},{
			label: 'To',
			id: 'endDate',
			name: 'enddate',
			placeHolder: '',
			picker: {
				yearFrom: gtp.today.getFullYear(),
				yearTo: gtp.today.getFullYear()+10
			}
		}]
	}]
};