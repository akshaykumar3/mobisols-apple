gtp.views.RegPage = {
	xtype: 'formpanel',
	scroll: 'vertical',
	id: 'regpage',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Register',
		items: [{
			text: 'Login',
			ui: 'action',
			handler: function(button, event){
				gtp.views.Viewport.setActiveItem('loginpage',{
					type: 'slide',
					direction: 'right'
				});
			}
		}]
	}],
	items: [{
		xytpe: 'fieldset',
		items: [{
			xtype: 'zipfield',
			id: 'rpemailid',
			name: 'rpemailid',
			style: {
				borderRadius: '0.4em'
			},
			placeHolder: 'Enter Phone No'
		}]
	},{
		xtype: 'fieldset',
		instructions: 'You will receive a text message with pin that you can use to login',
		items: [{
			xtype: 'button',
			ui: 'action',
			text: 'Register',
			handler: function(button, event){
				
				// Suppress keyboard from view.
				Ext.get('rmKeyboard').dom.focus();
				
				var eid = Ext.getCmp('rpemailid').getValue();
				// Validate Phone Number.
				if(!gtp.validatePhoneNumber(eid)) {
					Ext.Msg.alert(gtp.dict.regform_invalidphoneno);
				}
				else
				{
					gtp.views.Viewport.setLoading({
						msg: 'please wait..'
					});
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','regnewuser')).get('url'),
						method: 'POST',
						params: {
							json: Ext.encode({
								userName: eid,
								deviceDetails: {
									deviceId: gtp.deviceId,
									deviceName: gtp.detectDeviceType()
								}
							})
						},
						success: function(response) {
							gtp.views.Viewport.setLoading(false);
							console.log('user registration response '+response.responseText);
							var resobj = Ext.decode(response.responseText);
							if(resobj.status == 'success') {
								gtp.utils.dataStore.setValueOfKey('username', eid);
								if(resobj.response.response.deviceExists == 'Y')
									gtp.views.Viewport.down('#lpemailid').setValue(eid);
								gtp.views.Viewport.down('#lppassword').setValue('');
								gtp.views.Viewport.setActiveItem('loginpage', 'fade');
							}
							gtp.showNotifications(resobj.response.notifications);
							gtp.parse(resobj.response.commands);
						},
						failure: function(response) {
							gtp.views.Viewport.setLoading(false);
							gtp.log('user registration failed with status code'+response.status);
							console.log('user registration failed with status code'+response.status);
						}
					});
				}
			}
		}]
	}],
	listeners: {
		beforeactivate: function(dis) {
			dis.down('#rpemailid').setValue('');
		}
	}
};