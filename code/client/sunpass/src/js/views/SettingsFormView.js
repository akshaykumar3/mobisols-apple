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
					button.setText('save');
					button.setDisabled(true);
				}
				else if(button.getText() == 'save' && gtp.settingschanged) {
					gtp.tabpanel.getComponent(3).disable();
					button.setText('edit');
					button.setDisabled(false);
					
					var pay_det = gtp.tabpanel.getComponent(3).getRecord();
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','paymentdetails')).get('url'),
						method: 'POST',
						params: {
							json: Ext.encode({
								ccName: pay_det.get('name'),
								cardNumber: pay_det.get('ccnumber'),
								expMonth: pay_det.get('expdate').MONTH,
								expYear: pay_det.get('expdate').YEAR,
								bankRouting: 123,
								ccCVV: 123456,
								bankAccount: pay_det.get('acnumber'),
								address1: pay_det.get('address'),
								city: pay_det.get('city'),
								state: pay_det.get('state'),
								country: 'US',
								zip: pay_det.get('zipcode')
							})
						},
						success: function(response) {
							console.log('Posting payment details success');
							var resobj = Ext.decode(response.responseText);
							console.log('Payment details response '+response.responseText);
						    gtp.settingschanged = false;
						    if(resobj.status == 'success')
						    Ext.Msg.alert('Payment Details changed');
						},
						failure: function(response) {
							Ext.Msg.alert('Payment Details not changed');
							console.log('Failed in posting payment details');
						}
					});
				}
			}
		}]
	}],
	items: [{
		xtype: 'fieldset',
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
			xtype: 'selectfield',
			name: 'cardtype',
			id: 'cardtype',
			label: 'Cc type'
		},{
			xtype: 'datepickerfield',
			name: 'expdate',
			id: 'expirydate',
			label: 'Exp date',
			picker: {
				yearFrom: gtp.today.getFullYear(),
				yearTo: gtp.today.getFullYear()+10
			}
		},{
			xtype: 'textfield',
			name: 'acnumber',
			id: 'bankaccount',
			label: 'A/c No',
			useClearIcon: true
		},{
			xtype: 'checkboxfield',
			id: 'autopay',
			label: 'Auto-pay'
		},{
			xtype: 'hiddenfield',
			name: 'secret',
			value: false
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
			xtype: 'textfield',
			name: 'state',
			label: 'State',
			id: 'billstate',
			useClearIcon: true
		},{
			xtype: 'textfield',
			name: 'zipcode',
			label: 'Zip',
			id: 'zip',
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
			value: gtp.utils.dataStore.getValueOfKey('username'),//options.loginDetails.username,
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
						gtp.tabpanel.show();
					}
				}]
			});
			//gtp.tabpanel.hide();
			//gtp.views.loginPage.hide();
		}
	}],
	listeners: {
		render: function(curobj) {
			curobj.disable();
		}
	}
};