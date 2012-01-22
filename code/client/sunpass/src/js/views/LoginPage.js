gtp.views.LoginPage = {
	xtype: 'panel',
	id: 'loginpage',
	layout: {
		type: 'vbox',
		pack: 'center'
	},
	items: [{
		html: 'PhoneNumber:'
	},{
		xtype: 'zipfield',
		id: 'lpemailid',
		placeHolder: 'Phone Number',
		border: '10 5 3 10',
		value: gtp.utils.dataStore.getValueOfKey('username')
	},{
		html: 'password:',
		align: 'left'
	},{
		xtype: 'zipfield',
		id: 'lppassword',
		placeHolder: 'Pin',
		border: '10 5 3 10',
		value: gtp.utils.dataStore.getValueOfKey('password')
	},{
		layout: 'hbox',
		items: [{
			xtype: 'button',
			ui: 'round',
			text: 'Sign in',
			handler: function(button, event){
				// Suppress keyboard from view.
				Ext.get('rmKeyboard').dom.focus();
				
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
			},
			listeners: {
			    keyup: function(fld, e){
			        if (e.browserEvent.keyCode == 13) {
			            e.stopEvent();
			            fld.fieldEl.dom.blur()
			        }
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