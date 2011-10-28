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
		gtp.views.Viewport.show();
		gtp.tabpanel.destroy();
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
	}, 
	
	DoDeviceRegistration: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','registerdevice')).get('url'),
			params: {
				json: Ext.encode({
					deviceName: gtp.detectDeviceType()
				})
			},
			success: function(response){
				var obj=Ext.decode(response.responseText);
				gtp.log('Device Registration success');
				gtp.showNotifications(obj.response.notifications);
				gtp.parse(obj.response.commands);
				if(obj.status == 'success') {
					console.log('Generated device ID is: '+obj.response.deviceId);
					gtp.utils.dataStore.setValueOfKey('gtp-deviceID',obj.response.deviceId);
					gtp.deviceId = obj.response.deviceId;
				}
				else if(obj.status == 'fail'){
					gtp.views.Viewport.destroy();
					var message = "Server down temporarily, Please try after some time";
					gtp.views.Viewport = new Ext.Panel({
		    			fullscreen: true,
		    			html: message
		    		});
				}
			},
			failure: function(response){
				console.log(response.status+' Error in registering device');
				gtp.views.Viewport.destroy();
				var message = "Error in connecting to server, Please check your internet connection";
				if(response.status==404)
					message = "There was an error contacting the server. Please try launching again";
				else if(response.status == 500)
					message = "Server down temporarily, Please try after some time";
				gtp.views.Viewport = new Ext.Panel({
	    			fullscreen: true,
	    			html: message
	    		});
			}
		});
	}
});
