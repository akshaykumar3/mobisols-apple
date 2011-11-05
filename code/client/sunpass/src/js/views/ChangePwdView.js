gtp.views.ChangePwdView = {
	xtype: 'panel',
	layout: 'vbox',
	id: 'changepwd_view',
	scroll: 'vertical',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Password Reset',
		items: [{
			text: 'Settings',
			ui: 'back',
			handler: function(but, eve) {
				gtp.tabpanel.getActiveItem().setActiveItem('settingsform');
			}
		}]
	}],
	items: [{
		xtype: 'fieldset',
		id: 'changepwd_fds',
		items: [{
			xtype: 'passwordfield',
			id: 'chpwd_curpwd',
			placeHolder: 'Current Password'
		},{
			xtype: 'passwordfield',
			id: 'chpwd_newpwd',
			placeHolder: 'New Password'
		},{
			xtype: 'passwordfield',
			id: 'chpwd_conpwd',
			placeHolder: 'Re-enter New Password'
		}]
	},{
		xtype: 'fieldset',
		items: [{
			xtype: 'button',
			ui: 'confirm',
			text: 'change',
			handler: function(dis, eve) {
				var disform = gtp.tabpanel.getComponent(3).down('#changepwd_view');
				var curpwd = disform.down('#chpwd_curpwd').getValue();
				var newpwd = disform.down('#chpwd_newpwd').getValue();
				var conpwd = disform.down('#chpwd_conpwd').getValue();
				if(curpwd != gtp.utils.dataStore.getValueOfKey('password'))
					Ext.Msg.alert('Current password is wrong');
				else if(newpwd != conpwd)
					Ext.Msg.alert('Passwords do not match');
				else {
					Ext.Ajax.request({
						url: webServices.getAt(webServices.findExact('service','changepassword')).get('url'),
						method: 'POST',
						params: {
							password: newpwd
						},
						success: function(res) {
							var resobj = Ext.decode(res.responseText);
							console.log(res.responseText);
							if(resobj.status == 'success') {
								gtp.utils.dataStore.setValueOfKey('password', newpwd);
								gtp.tabpanel.getActiveItem().setActiveItem('settingsform');
								if(Ext.is.iPhone) {
	                                var ddp = window.plugins.DeviceDetailsPlugin;
	                                if(ddp) {
		                                ddp.setDetails(Ext.encode({
		                                    deviceId: gtp.deviceId,
		                                    username: gtp.utils.dataStore.getValueOfKey('username'),
		                                    password: newpwd
		                                }));
	                                }
								}
								else if(Ext.is.Android) {
									window.plugins.DeviceDetailsPlugin.setValue('password',newpwd,function(){},function(){});
								}
							}
					      	gtp.showNotifications(resobj.response.notifications);
					      	gtp.parse(resobj.response.commands);
						},
						failure: function(res) {
							Ext.Msg.alert('Error changing password');
							gtp.log('Failure in changing password, error status '+res.status);
						}
					});
				}
			}
		}]
	}],
	listeners: {
		beforeactivate: function(dis) {
			dis.down('#chpwd_curpwd').setValue('');
			dis.down('#chpwd_newpwd').setValue('');
			dis.down('#chpwd_conpwd').setValue('');
		}
	}
};