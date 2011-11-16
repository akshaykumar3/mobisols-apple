gtp.views.LoginPage = {
	xtype: 'panel',
	id: 'loginpage',
	layout: {
		type: 'vbox',
		pack: 'center'
	},
	items: [{
		html: 'Username:'
	},{
		xtype: 'zipfield',
		id: 'lpemailid',
		placeHolder: 'Email',
		border: '10 5 3 10',
		value: gtp.utils.dataStore.getValueOfKey('username')
	},{
		html: 'password:',
		align: 'left'
	},{
		xtype: 'passwordfield',
		id: 'lppassword',
		placeHolder: 'Password',
		border: '10 5 3 10',
		value: gtp.utils.dataStore.getValueOfKey('password')
	},{
		layout: 'hbox',
		items: [{
			xtype: 'button',
			ui: 'round',
			text: 'Sign in',
			handler: function(button, event){
				if(!gtp.views.Viewport.down('#lpemailid').getValue()) {
					Ext.Msg.alert(gtp.dict.loginform_username);
				}
				else if(!gtp.views.Viewport.down('#lppassword').getValue()) {
					Ext.Msg.alert(gtp.dict.loginform_password);
				}
				else {
					Ext.dispatch({
						controller: 'command',
						action: 'loginuser'
					});
				}
			}
		},{
			xtype: 'button',
			id: 'regnu',
			text: 'Register',
			ui: 'round',
			handler: function(){
				gtp.views.Viewport.setActiveItem('regpage', 'fade');
			}
		}]				
	}]
};