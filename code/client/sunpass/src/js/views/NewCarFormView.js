gtp.views.NewCarFormView = {
	id: 'addcar',
	xtype: 'formpanel',
	scroll: 'vertical',
	listeners: {
		beforeactivate: function(co) {
			if(co.getRecord()) {
				console.log('after record creation');
				co.reset();
			} else {
				console.log('before record created');
				co.load(Ext.ModelMgr.create({
					startDate: gtp.today(),
					endDate: '',
					isActive: 'N'
				},'Cars'));
			}
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
				gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
					type: 'slide',
					direction: 'right'
				});
			}
		},{
			xtype: 'spacer'
		},{
			xtype: 'button',
			id: 'addcarconfirm',
			text: 'add',
			ui: 'action',
			disabled: true,
			handler: function(button, event) {
				var acfd = gtp.tabpanel.getActiveItem().down('#addcar').getValues(true);
				if(acfd.endDate)
				var validEndDate = gtp.dateValidity(gtp.today(), acfd.endDate);
				
				if(acfd.st == "") {
					Ext.Msg.alert('Enter state field');
				} 
				else if(acfd.rg == "") {
					Ext.Msg.alert("Enter registration number");
				}
				else if(!gtp.validateCar(acfd.rg, acfd.st)) {
					Ext.Msg.alert('Invalid','Registration Number');
				}
				else if(acfd.endDate && !validEndDate) {
					Ext.Msg.alert('End Date','Incorrect Value');
				}
				else if(!acfd.ownerType) {
					Ext.Msg.alert('Specify Ownership');
				}
				else if(acfd.ownerType == 'Rental' && (acfd.endDate == null || acfd.endDate == '')) {
					Ext.Msg.alert('Rental Car', 'Specify End Date');
				}
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
								isActive: "Y",
								startDate: gtp.today().format('M j, Y g:i:s A'), // Valid date format on server side.
								endDate: (acfd.endDate == null || acfd.endDate == '') ? null : acfd.endDate.format('M j, Y g:i:s A'),
								ownerType: (acfd.ownerType == '' || acfd.ownerType == null) ? null:acfd.ownerType, 
								vehicleId: null,
								vin: null,
								make: (acfd.make == '' || acfd.make == null) ? null : acfd.make,
								model: (acfd.model == '' || acfd.model == null) ? null : acfd.model,
								color: (acfd.color == '' || acfd.color == null) ? null : acfd.color,
								manufacturedYear: (acfd.year == '' || acfd.year == null) ? null : acfd.year
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
										startDate: gtp.today(),
										endDate: acfd.endDate,
										vehicleId: resobj.response.vehicleId,
										ownerType: acfd.ownerType,
										make: acfd.make,
										model: acfd.model,
										year: acfd.year,
										color: acfd.color
									},'Cars'));
									
									var avbt=gtp.tabpanel.getActiveItem().down('#home').down('#addvehicle');
									if(avbt.getText() == 'Add Vehicle') {
										avbt.setText(acfd.rg);
									}
									else {
										avbt.setText(avbt.getText()+", "+acfd.rg);
									}
									if(!gtp.isCarValid) {
										gtp.isCarValid = true;
									}
								}
								gtp.tabpanel.getActiveItem().setActiveItem('mycars',{
									type: 'slide',
									direction: 'right'
								});
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
						},
						failure: function(response){
							gtp.tabpanel.setLoading(false);
							if(response.status == 500)
							Ext.Msg.alert('Server Error',gtp.dict.newcar_failure);
							else
								Ext.Msg.alert('Error',gtp.dict.newcar_failure);
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
			useClearIcon: true,
			id: 'rg',
			name: 'rg',
			listeners: {
				keyup: function(dis, e) {
					dis.setValue(dis.getValue().toUpperCase());
				}
			}
		},{
			xtype: 'selectfield',
			id: 'make',
			name: 'make',
			label: 'Make',
			store: gtp.stores.Makers,
			displayField: 'MakerName',
			valueField: 'MakerName',
			listeners: {
				change: function(dis, value) {
					 var disform = gtp.tabpanel.getActiveItem().down('#addcar');
					 var modelSelectField  = disform.down('#model'); 
					 
					 modelSelectField.store.clearFilter();
					 var makeStore = gtp.stores.Makers;
					 modelSelectField.store.filter({
						property: 'MakerID',
						value: makeStore.getAt(makeStore.findExact('MakerName', value)).get('MakerID'),
						exactMatch: true
					 });
					 
					 var firstModel = modelSelectField.store.getAt(0);
					 if(firstModel) {
						 modelSelectField.setValue(firstModel.data.ModelName);
					 } else {
						 modelSelectField.setValue('');
					 }
				}
			}
		},{
			xtype: 'selectfield',
			id: 'model',
			name: 'model',
			label: 'Model',
			store: gtp.stores.VehicleModels,
			displayField: 'ModelName',
			valueField: 'ModelName'
		},{
			xtype: 'selectfield',
			name: 'year',
			id: 'year',
			label: 'year',
			store: gtp.stores.ManYears,
			displayField: 'year',
			valueField: 'year'
		},{
			xtype: 'textfield',
			id: 'color',
			name: 'color',
			useClearIcon: true,
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
			label: 'Ownership',
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
			renderData: {
				placeHolder: 'No End Date'
			},
			picker: {
				yearFrom: gtp.today().getFullYear(),
				yearTo: gtp.today().getFullYear()+10
			}
		}]
	}]
};