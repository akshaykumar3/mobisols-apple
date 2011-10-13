gtp.tabs.changepwd = {
	xtype: 'panel',
	layout: 'vbox',
	fullscreen: true,
	id: 'changepwd_view',
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
			placeHolder: 'Re-enter new Password'
		}]
	},{
		xtype: 'button',
		ui: 'confirm-round',
		text: 'change',
		handler: function(dis, eve) {
			var disform = gtp.tabpanel.getComponent('changepwd_view');
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
					Ext.Msg.alert('Password is changed');
					gtp.showNotifications(resobj.notifications);
					gtp.parse(resobj.commands);
					gtp.tabpanel.setActiveItem('basicform');
				},
				failure: function(res) {
					Ext.Msg.alert('Error changing password');
					gtp.log('Failure in changing password, error status '+res.status);
				}
			});
		}
	}]
};