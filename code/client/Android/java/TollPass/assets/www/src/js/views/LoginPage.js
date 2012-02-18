gtp.views.LoginPage = {
	xtype: 'formpanel',
	id: 'loginpage',
	scroll: 'vertical',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Toll Pass',
		items: [{
			xtype: 'spacer'
		},{
			id: 'regnu',
			text: 'Register',
			ui: 'action',
			handler: function(){
				gtp.views.Viewport.setActiveItem('regpage',{
					type: 'slide',
					direction: 'left'
				});
			}
		}]
	}],
	items: [{
		html: '<img style="height: 114px; width: 114px;" class="center" src="resources/images/mobisolsapplelogo.png" />'
	},{
		xtype: 'fieldset',
		title: 'Log into Toll Pass',
		items: [{
			xtype: 'zipfield',
			id: 'lpemailid',
			placeHolder: 'Phone Number',
			border: '10 5 3 10',
			value: gtp.utils.dataStore.getValueOfKey('username')
		},{
			xtype: 'zipfield',
			id: 'lppassword',
			placeHolder: 'Pin',
			border: '10 5 3 10',
			value: gtp.utils.dataStore.getValueOfKey('password')
		}]
	},{
		xtype: 'fieldset',
		items: [{
			xtype: 'button',
			ui: 'action',
			text: 'Login',
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
			            fld.fieldEl.dom.blur();
			        }
			    }
			}
		}]				
	}]
};