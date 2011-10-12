gtp.tabs.NewCarFormView = {
	id: 'addcar',
	xtype: 'formpanel',
	scroll: 'vertical',
	listeners: {
		beforeactivate: function(co) {
			co.reset();
			co.load(Ext.ModelMgr.create({
				reg: '',
				state: '',
				type: '',
				startDate: gtp.today,
				endDate: null,
				isActive: 'N',
				ownerType: 'primary owner'
			},'Cars'));
			return true;
		}
	},
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
				if(acfd.endDate)
				var validEndDate = gtp.dateValidity(gtp.today, acfd.endDate);
				
				if(acfd.st == "")
					Ext.Msg.alert('enter state field');
				else if(acfd.rg == "")
					Ext.Msg.alert("Enter registration number");
				else if(acfd.tp == "")
					Ext.Msg.alert('Select car type');
				else if(!gtp.validateCar(acfd.rg, acfd.st))
					Ext.Msg.alert('Invalid','Registration Number');
				else if(acfd.endDate && !validEndDate)
					Ext.Msg.alert('End Date','Incorrect Value');
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
								endDate: (acfd.endDate == null) ? null : acfd.endDate.format('M j, Y g:i:s A'),
								ownerType: 'primary owner', 
								vehicleId: 1
							})
						},
						success: function(response){
							gtp.log('User Added a car successfully');
							var resobj = Ext.decode(response.responseText);
							console.log(response.responseText);
							carsList.insert(0,Ext.ModelMgr.create({
								state: acfd.st,
								reg: acfd.rg,
								type: acfd.tp,
								startDate: gtp.today,//acfd.startDate,
								endDate: acfd.endDate
							},'Cars'));
							Ext.Msg.alert('Success',gtp.dict.newcar_success);
					      	gtp.showNotifications(resobj.notifications);
						},
						failure: function(response){
							Ext.Msg.alert(gtp.dict.newcar_failure);
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
			required: true,
			store: gtp.stores.States,
			displayField: 'StateName',
			valueField: 'StateCode'
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
			placeHolder: 'select type',
			options: [{
				text: '',
				value: ''
			}]
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
			name: 'startDate',
			disabled: true,
			value: gtp.today
		},{
			label: 'To',
			id: 'endDate',
			name: 'endDate',
			picker: {
				yearFrom: gtp.today.getFullYear(),
				yearTo: gtp.today.getFullYear()+10
			}
		}]
	}]
};