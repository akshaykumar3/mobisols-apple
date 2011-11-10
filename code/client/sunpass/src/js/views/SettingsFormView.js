gtp.views.SettingsFormView = {
	xtype: 'formpanel',
	scroll: 'vertical',
	id: 'settingsform',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Settings',
		dock: 'top',
		items: [{
			text: 'home',
			ui: 'back',
			handler: function(dis) {
				gtp.tabpanel.getActiveItem().setActiveItem('home',{
					type: 'slide',
					direction: 'right'
				});
			}
		},{
			xtype: 'spacer'
		},{
			xtype: 'button',
			text: 'edit',
			ui: 'confirm',
			id: 'savesettings',
			handler: function(button, event) {
				if(button.getText() == 'edit') {
					gtp.tabpanel.getActiveItem().down('#settingsform').enable();
					gtp.tabpanel.getActiveItem().down('#settingsform').down('#userid').setDisabled(true);
					button.setText('save');
					//button.setDisabled(true);
				}
				else if(button.getText() == 'save') { 
					
					var setform = gtp.tabpanel.getActiveItem();
					
					var pay_det = setform.down('#settingsform').getRecord();
					var statecode = setform.down('#settingsform').down('#billstate').getValue();
					if(statecode.length > 2)
						statecode = gtp.stores.States.getAt(gtp.stores.States.findExact('StateName',statecode)).get('StateCode');
					var validZipCode = gtp.validateZipCode(statecode, pay_det.get('city'), pay_det.get('zipcode'));
					
					var validExpDate;
					if(pay_det.get('expmonth') && pay_det.get('expyear'))
						validExpDate = gtp.expiryDateValidity(pay_det.get('expmonth'), pay_det.get('expyear'));
					
					var errors = pay_det.validate();
					
					if(errors.isValid()) {
						var fieldset = setform.down('#settingsform').down('#paymentdetails');
						var billfs = setform.down('#settingsform').down('#billingdetails');
						fieldset.items.each(function(item){
							var errorField = fieldset.down('#'+item.name+'ErrorField');
							if(errorField)
								errorField.hide();
							item.removeCls('invalid-field');
						});
						billfs.items.each(function(item){
							var errorField = billfs.down('#'+item.name+'ErrorField');
							if(errorField)
								errorField.hide();
							item.removeCls('invalid-field');
						});
						if(!pay_det.get('expmonth'))
							Ext.Msg.alert('Alert','Exp month cannot be empty');
						else if(!pay_det.get('expyear'))
							Ext.Msg.alert('Alert', 'Exp year cannot be empty');
						else if(!validExpDate)
							Ext.Msg.alert('Invalid','Expiry Date');
						else if(!validZipCode)
							Ext.Msg.alert('Invalid','Enter Valid zip code');
						else {
							gtp.tabpanel.setLoading({
								msg: 'Please wait..'
							});
							Ext.Ajax.request({
								url: webServices.getAt(webServices.findExact('service','paymentdetails')).get('url'),
								method: 'POST',
								params: {
									json: Ext.encode({
										ccName: pay_det.get('name'),
										cardNumber: pay_det.get('ccnumber'),
										expMonth: pay_det.get('expmonth'),
										expYear: pay_det.get('expyear'),
										bankRouting: null,
										ccCVV: null,
										bankAccount: null,
										address1: pay_det.get('address'),
										city: pay_det.get('city'),
										state: pay_det.get('state'),
										country: pay_det.get('country'),
										zip: pay_det.get('zipcode')
									})
								},
								success: function(response) {
									gtp.tabpanel.setLoading(false);
									gtp.log('Posting payment details success');
									var resobj = Ext.decode(response.responseText);
								    if(resobj.status == 'success') {
									    gtp.settingschanged = false; 
									    if(!gtp.arePaymentDetailsValid) {
										    var hme = gtp.tabpanel.getActiveItem().down('#home'); 
									      	hme.down('#m_paydetails').setText(pay_det.get('ccnumber')+' ..');
									    }
									    gtp.arePaymentDetailsValid = true;
								    }
									gtp.showNotifications(resobj.response.notifications);
									gtp.parse(resobj.response.commands);
								},
								failure: function(response) {
									gtp.tabpanel.setLoading(false);
									Ext.Msg.alert('Error','Changing Payment Details');
									console.log('Failed in posting payment details');
									gtp.log('Failed in posting papyment details');
								}
							});
							setform.down('#settingsform').disable();
							button.setText('edit');
							button.setDisabled(false);
						}
					}
					else {
						var dis = setform.down('#settingsform');
						var fieldset = dis.down('#paymentdetails');
						var bill_fs = dis.down('#billingdetails');
						fieldset.items.each(function(item){
							var fieldErrors = errors.getByField(item.name);
							if(fieldErrors.length > 0) {
								var errorField = fieldset.down('#'+item.name+'ErrorField');
								item.addCls('invalid-field');
								errorField.update(fieldErrors);
								errorField.show();
							}
							else if(item.name){
								var errorField = fieldset.down('#'+item.name+'ErrorField');
								if(errorField)
									errorField.hide();
								item.removeCls('invalid-field');
							}
						},this);
						bill_fs.items.each(function(item){
							var fieldErrors = errors.getByField(item.name);
							if(fieldErrors.length > 0) {
								var errorField = bill_fs.down('#'+item.name+'ErrorField');
								item.addCls('invalid-field');
								errorField.update(fieldErrors);
								errorField.show();
							}
							else if(item.name){
								var errorField = bill_fs.down('#'+item.name+'ErrorField');
								if(errorField)
									errorField.hide();
								item.removeCls('invalid-field');
							}
						},this);
					}
					
				}
			}
		}]
	}],
	items: [{
		xtype: 'fieldset',
		id: 'paymentdetails',
		title: 'Payment info',
		defaults: {
			listeners: {
				change: function(curobj,newValue,oldValue) {
					if(newValue != oldValue) {
						var setvp = gtp.tabpanel.getActiveItem();
						setvp.down('#settingsform').updateRecord(setvp.down('#settingsform').getRecord());
						gtp.settingschanged=true;
						var savebutton = setvp.down('#settingsform').down('#savesettings');
						savebutton.setDisabled(false);	
					}
				}
			}
		},
		items: [{
			xtype: 'textfield',
			name: 'ccnumber',
			id: 'ccnumber',
			label: 'Cdt card#',
			placeHolder: 'XXXX XXXX XXXX XXXX',
			useClearIcon: true,
			listeners: {
				keyup: function(dis, e) {
					var len = dis.getValue().length;
					if( ( (len == 4) || (len == 9) || (len == 14) ) && len<20 && len>0)
						dis.setValue(dis.getValue()+' ');
					else if(len > 19)
						Ext.Msg.alert('Invalid','Cdt cd# cannot exceed 16 digits');
				}
			}
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'ccnumber'
		},{
			xtype: 'selectfield',
			name: 'expmonth',
			id: 'expmonth',
			label: 'ExpMonth',
			store: gtp.stores.Months,
			displayField: 'month',
			valueField: 'monthid'
		},{
			xtype: 'selectfield',
			name: 'expyear',
			id: 'expyear',
			label: 'ExpYear',
			store: gtp.stores.Years,
			displayField: 'year',
			valueField: 'year'
		}]
	},{
		xtype: 'fieldset',
		id: 'billingdetails',
		title: 'Billing Details',
		defaults: {
			listeners: {
				change: function(curobj,newValue,oldValue) {
					if(newValue != oldValue) {
						var setvp = gtp.tabpanel.getActiveItem();
						setvp.down('#settingsform').updateRecord(setvp.down('#settingsform').getRecord());
						gtp.settingschanged=true;
						var savebutton = setvp.down('#settingsform').down('#savesettings');
						savebutton.setDisabled(false);	
					}
				}
			}
		},
		items: [{
			xtype: 'textfield',
			name: 'name',
			label: 'Name',
			id: 'billname',
			useClearIcon: true
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'name'
		},{
			xtype: 'textfield',
			name: 'address',
			label: 'Address',
			id: 'addr1',
			useClearIcon: true
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'address'
		},{
			xtype: 'textfield',
			name: 'city',
			label: 'City',
			id: 'billcity',
			useClearIcon: true
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'city'
		},{
			xtype: 'selectfield',
			name: 'state',
			label: 'State',
			id: 'billstate',
			store: gtp.stores.States,
			displayField: 'StateName',
			valueField: 'StateCode'
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'state'
		},{
			xtype: 'selectfield',
			id: 'country',
			name: 'country',
			label: 'Country',
			store: gtp.stores.Countries,
			displayField: 'CountryName',
			valueField: 'CountryCode'
		},{
			xtype: 'numberfield',
			name: 'zipcode',
			label: 'Zip',
			id: 'zip',
			useClearIcon: true
		},{
			xtype: 'zipfield',
			name: 'phoneno',
			id: 'phoneno',
			label: 'Number',
			useClearIcon: true
		}]
	},{
		xtype: 'fieldset',
		title: 'Your Account',
		items: [{
			xtype: 'textfield',
			name: 'userid',
			id: 'userid',
			disabled: true,
			label: 'UserID',
			value: gtp.utils.dataStore.getValueOfKey('username'),
			cls: 'customField'
		}]
	},{
		xtype: 'button',
		text: 'Reset Password',
		handler: function(button, event) {
			gtp.tabpanel.getActiveItem().setActiveItem('changepwd_view',{
				type: 'slide',
				direction: 'left'
			});
		}
	}],
	listeners: {
		render: function(curobj) {
			curobj.disable();
		}
	}
};
