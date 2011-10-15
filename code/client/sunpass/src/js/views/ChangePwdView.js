gtp.tabs.ChangePwdView = {
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
			xtype: 'textfield',
			id: 'chpwd_curpwd',
			placeHolder: 'Current Password'
		},{
			xtype: 'textfield',
			id: 'chpwd_newpwd',
			placeHolder: 'New Password'
		},{
			xtype: 'textfield',
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
				else
				Ext.Ajax.request({
					url: webServices.getAt(webServices.findExact('service','changepassword')).get('url'),
					method: 'POST',
					params: {
						password: newpwd
					},
					success: function(res) {
						var resobj = Ext.decode(res.responseText);
						console.log(res.responseText);
				      	gtp.showNotifications(resobj.response.notifications);
				      	gtp.parse(resobj.response.commands);
						gtp.tabpanel.getComponent(3).setActiveItem('settingsform');
					},
					failure: function(res) {
						Ext.Msg.alert('Error changing password');
						gtp.log('Failure in changing password, error status '+res.status);
					}
				});
			}
		}]
	}]
};