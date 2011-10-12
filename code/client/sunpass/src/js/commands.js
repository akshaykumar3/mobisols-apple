// Controllers are defined here.
// Controller for processing commands.
gtp.controllers.invokeCommand = Ext.regController("command",{
	punch: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','punchme')).get('url'),
			method: 'POST',
			params: {
				json: Ext.encode({
					punch: 12
				})
			},
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				gtp.showNotifications(resobj.response.notifications);
				gtp.parse(resobj.response.commands);
			},
			failure: function(res) {
				gtp.responseFailureHandler(res);
			}
		});
	},
	refreshConfiguration: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','clientconfig')).get('url'),
			method: 'GET',
			params: {
				json: Ext.encode({				
					componentName: gtp.detectDeviceType,
					version: '1.0'// This will be hard coded value on the client side.
				})
			},
			success: function(response) {
				console.log('Client Configuration response '+response.responseText);
				var obj=Ext.decode(response.responseText);
				gtp.cfg=obj.response;
				gtp.showNotifications(obj.response.notifications);
				gtp.parse(obj.response.commands);
			},
			failure: function(response) {
				console.log("Client config failure with status "+response.status);
				gtp.responseFailureHandler(response);
				gtp.log("Client config failure with status "+response.status);
			}
		});
	},
	hearbeat: function(options) {
		setTimeout("requestHeartBeat()", options.time * 1000); 
	},
	killapp: function(options) {
		Ext.Msg.alert('Mismatch', 'Re-enter ur password');
		gtp.tabpanel.destroy();
		gtp.views.loginPage.enable();
	},
	commandAck: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','cmdacknow')).get('url'),
			method: 'GET',
			success: function(response) {
				var obj = Ext.decode(response.responseText);
				gtp.showNotifications(obj.response.notifications);
				gtp.parse(obj.response.commands);
			},
			failure: function(response) {
				
			}
		});
	}
});
