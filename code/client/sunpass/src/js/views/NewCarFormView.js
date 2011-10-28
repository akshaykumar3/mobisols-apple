gtp.tabs.NewCarFormView = {
	id: 'addcar',
	xtype: 'formpanel',
	scroll: 'vertical',
	listeners: {
		beforeactivate: function(co) {
			co.reset();
			co.load(Ext.ModelMgr.create({
				startDate: gtp.today(),
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
				gtp.tabpanel.getActiveItem().setActiveItem('mycars');
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
				var acfd = gtp.tabpanel.getActiveItem().down('#addcar').getValues(true);
				if(acfd.endDate)
				var validEndDate = gtp.dateValidity(gtp.today(), acfd.endDate);
				
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
					gtp.tabpanel.setLoading({
						msg: 'Adding Vehicle..'
					});
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
								startDate: gtp.today().format('M j, Y g:i:s A'), // Valid date format on server side.
								endDate: (acfd.endDate == null) ? null : acfd.endDate.format('M j, Y g:i:s A'),
								ownerType: acfd.ownerType, 
								vehicleId: null,
								vin: null,
								make: acfd.make,
								model: acfd.model,
								color: acfd.color,
								manufacturedYear: acfd.manufacture_year
							})
						},
						success: function(response){
							gtp.tabpanel.setLoading(false);
							gtp.log('User Added a car successfully');
							var resobj = Ext.decode(response.responseText);
							console.log(response.responseText);
							if(resobj.status == 'success') {
								if(resobj.response.vehicleId > 0) {
									carsList.insert(0,Ext.ModelMgr.create({
										state: acfd.st,
										reg: acfd.rg,
										type: acfd.tp,
										startDate: acfd.startDate,
										endDate: acfd.endDate,
										vehicleId: resobj.response.vehicleId,
										ownerType: acfd.ownerType,
										vin: null,
										make: acfd.make,
										model: acfd.model,
										year: acfd.manufacture_year,
										color: acfd.color
									},'Cars'));
								}
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
							gtp.tabpanel.getActiveItem().setActiveItem('mycars');
						},
						failure: function(response){
							gtp.tabpanel.setLoading(false);
							Ext.Msg.alert(gtp.dict.newcar_failure);
							gtp.tabpanel.getActiveItem().setActiveItem('mycars');
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
		},{
			xtype: 'textfield',
			id: 'make',
			name: 'make',
			label: 'Make'
		},{
			xtype: 'textfield',
			id: 'model',
			name: 'model',
			label: 'Model'
		},{
			xtype: 'textfield',
			id: 'manufacture_year',
			name: 'year',
			label: 'year'	
		},{
			xtype: 'textfield',
			id: 'color',
			name: 'color',
			label: 'Color'
		}]
	},{
		xtype: 'fieldset',
		title: 'Car Period',
		defaults: {
			xtype: 'datepickerfield'
		},
		items: [{
			xtype: 'selectfield',
			id: 'ownerType',
			name: 'ownerType',
			options: [{
				text: '',
				value: ''
			}]
		},{
			label: 'From',
			id: 'startDate',
			name: 'startDate',
			disabled: true,
			value: gtp.today()
		},{
			label: 'To',
			id: 'endDate',
			name: 'endDate',
			picker: {
				yearFrom: gtp.today().getFullYear(),
				yearTo: gtp.today().getFullYear()+10
			}
		}]
	}]
};