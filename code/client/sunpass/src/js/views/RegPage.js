gtp.views.RegPage = {
	xtype: 'formpanel',
	id: 'regpage',
	layout: {
		type:'vbox',
		pack: 'center'
	},
	items: [{
		xytpe: 'fieldset',
		items: [{
			xtype: 'emailfield',
			id: 'rpemailid',
			name: 'emailid',
			placeHolder: 'Email',
			border: '10 5 3 10'
		},{
			xtype: 'passwordfield',
			id: 'rppassword',
			name: 'password',
			placeHolder: 'Password',
			border: '10 5 3 10'
		},{
			xtype: 'passwordfield',
			id: 'conpwd',
			name: 'confirmpassword',
			placeHolder: 'Confirm Password',
			border: '10 5 3 10'
		}]
	},{
		layout: 'hbox',
		items: [{
			xtype: 'button',
			ui: 'round',
			style: 'margin-left: 1px',
			text: 'Register',
			handler: function(button, event){
				var eid = Ext.getCmp('rpemailid').getValue();
				var pwd = Ext.getCmp('rppassword').getValue();
				var cpwd = Ext.getCmp('conpwd').getValue();
				if(!gtp.validateEmail(eid))
					Ext.Msg.alert(gtp.dict.regform_invalidemail);
				else if(pwd.length < gtp.cfg.keyValues.password)
					Ext.Msg.alert('Password','Minimum '+gtp.cfg.keyValues.password+' characters');
				else if(pwd != cpwd)
					Ext.Msg.alert(gtp.dict.regform_pwds);
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
								password: pwd,
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
								gtp.utils.dataStore.setValueOfKey('password', pwd);
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
		},{
			xtype: 'button',
			ui: 'round',
			text: 'Go back',
			handler: function(button, event){
				gtp.views.Viewport.setActiveItem('loginpage');
			}
		}]
	}],
	listeners: {
		beforeactivate: function(dis) {
			dis.down('#rpemailid').setValue('');
			dis.down('#rppassword').setValue('');
			dis.down('#conpwd').setValue('');
		}
	}
};