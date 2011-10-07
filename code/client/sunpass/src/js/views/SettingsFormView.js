gtp.tabs.SettingsFormView = {
	title: 'Settings',
	xtype: 'formpanel',
	//layout: 'card',
	id: 'basicform',
	scroll: 'vertical',
	iconCls: 'AccountSettings',
	cls: 'card4',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Settings',
		dock: 'top',
		layout: {
			pack: 'right'
		},
		items: [{
			xtype: 'button',
			text: 'edit',
			ui: 'confirm',
			id: 'savesettings',
			handler: function(button, event) {
				if(button.getText() == 'edit') {
					gtp.tabpanel.getComponent(3).enable();
					gtp.tabpanel.getComponent('basicform').down('#userid').setDisabled(true);
					button.setText('save');
					button.setDisabled(true);
				}
				else if(button.getText() == 'save' && gtp.settingschanged) {
					gtp.tabpanel.getComponent(3).disable();
					button.setText('edit');
					button.setDisabled(false);
					
					var pay_det = gtp.tabpanel.getComponent(3).getRecord();
					var statecode = gtp.tabpanel.getComponent('basicform').down('#billstate').getValue();
					if(statecode.length > 2)
						statecode = gtp.stores.States.getAt(gtp.stores.States.findExact('StateName',statecode)).get('StateCode');
					var validZipCode = gtp.validateZipCode(statecode, pay_det.get('city'), pay_det.get('zipcode'));
					
					var validExpDate;
					if(pay_det.get('expmonth') && pay_det.get('expyear'))
						validExpDate = gtp.expiryDateValidity(pay_det.get('expmonth'), pay_det.get('expyear'));
					
					if(!pay_det.get('expmonth'))
						Ext.Msg.alert('Alert','Exp month cannot be empty');
					else if(!pay_det.get('expyear'))
						Ext.Msg.alert('Alert', 'Exp year cannot be empty');
					else if(!validExpDate)
						Ext.Msg.alert('Invalid','Expiry Date');
					else if(!validZipCode)
						Ext.Msg.alert('Invalid','Enter Valid zip code');
					else 
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','paymentdetails')).get('url'),
						method: 'POST',
						params: {
							json: Ext.encode({
								ccName: pay_det.get('name'),
								cardNumber: pay_det.get('ccnumber'),
								expMonth: pay_det.get('expmonth'),
								expYear: pay_det.get('expyear'),
								bankRouting: 123,
								ccCVV: 123456,
								bankAccount: pay_det.get('acnumber'),
								address1: pay_det.get('address'),
								city: pay_det.get('city'),
								state: pay_det.get('state'),
								country: pay_det.get('country'),
								zip: pay_det.get('zipcode')
							})
						},
						success: function(response) {
							console.log('Posting payment details success');
							var resobj = Ext.decode(response.responseText);
							console.log('Payment details response '+response.responseText);
						    gtp.settingschanged = false;
						    gtp.arePaymentDetailsValid = true;
						    if(resobj.status == 'success')
						    Ext.Msg.alert('Success','Payment Details changed');
						},
						failure: function(response) {
							Ext.Msg.alert('Error','Changing Payment Details');
							console.log('Failed in posting payment details');
							gtp.log('Failed in posting papyment details');
						}
					});
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
						gtp.tabpanel.getComponent(3).updateRecord(gtp.tabpanel.getComponent(3).getRecord());
						gtp.settingschanged=true;
						var savebutton=Ext.getCmp('savesettings');
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
			placeHolder: 'XXXX-XXXX-XXXX-XXXX',
			useClearIcon: true
		},{
			xtype: 'gtp.views.ErrorField',
			fieldname: 'ccnumber'
		},{
			xtype: 'selectfield',
			name: 'cardtype',
			id: 'cardtype',
			label: 'Cc type'
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
		},{
			xtype: 'textfield',
			name: 'acnumber',
			id: 'bankaccount',
			label: 'A/c No',
			useClearIcon: true
		}]
	},{
		xtype: 'fieldset',
		title: 'Billing Details',
		defaults: {
			listeners: {
				change: function(curobj,newValue,oldValue) {
					if(newValue != oldValue) {
						gtp.tabpanel.getComponent(3).updateRecord(gtp.tabpanel.getComponent(3).getRecord());
						gtp.settingschanged=true;
						var savebutton=Ext.getCmp('savesettings');
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
			xtype: 'textfield',
			name: 'address',
			label: 'Address',
			id: 'addr1',
			useClearIcon: true
		},{
			xtype: 'textfield',
			name: 'city',
			label: 'City',
			id: 'billcity',
			useClearIcon: true
		},{
			xtype: 'selectfield',
			name: 'state',
			label: 'State',
			id: 'billstate',
			store: gtp.stores.States,
			displayField: 'StateName',
			valueField: 'StateCode'
		},{
			xtype: 'selectfield',
			id: 'country',
			name: 'country',
			label: 'Country',
			store: gtp.stores.Countries,
			displayField: 'CountryName',
			valueField: 'CountryCode'
		},{
			xtype: 'textfield',
			name: 'zipcode',
			label: 'Zip',
			id: 'zip',
			useClearIcon: true
		},{
			xtype: 'numberfield',
			name: 'phoneno',
			id: 'phoneno',
			label: 'Number'
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
		text: 'Change Password',
		handler: function(button, event) {
			new Ext.Panel({
				items: [{
					html: 'Current Password'
				},{
					xtype: 'textfield',
					name: 'currentpwd'
				},{
					html: 'New Password'
				},{
					xtype: 'textfield',
					name: 'newpassword'
				},{
					html: 'Confirm Password'
				},{
					xtype: 'textfield',
					name: 'confirmnewpwd'
				},{
					xtype: 'button',
					text: 'submit',
					handler: function(button, event) {
						// Todo.
					}
				}]
			});
		}
	}],
	listeners: {
		render: function(curobj) {
			curobj.disable();
		}
	}
};