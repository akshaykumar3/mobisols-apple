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
					componentName: 'server',
					version: '1.0'// This will be hard coded value on the client side.
				})
			},
			success: function(response) {
				var obj = Ext.decode(response.responseText);
				if(obj.status == 'success') {
					gtp.cfg = obj.response;
					if(Ext.is.iPhone) {
	                    var ccp = window.plugins.ClientConfig;
	                    ccp.setClientConfig(Ext.encode(gtp.cfg));
					}
					else if(Ext.is.Android) {
						window.plugins.ClientConfigPlugin.setClientConfig(obj.response,function(result){},function(error){});
					}
				}
		      	gtp.showNotifications(obj.response.notifications);
		      	gtp.parse(obj.response.commands);
			},
			failure: function(response) {
				console.log("Client config failure with status "+response.status);
			}
		});
	},
	
	killapp: function(options) {
		gtp.tabpanel.destroy();
		gtp.views.Viewport.show();
	},
	
	errorHandler: function(options) {
		if(gtp.tabpanel) {
			gtp.tabpanel.hide();
			if(!gtp.views.Viewport.isHidden()) {
				gtp.views.Viewport.hide();
			}
			gtp.views.Viewport = new Ext.Panel({
    			fullscreen: true,
    			html: options.message
    		});
		}
	},
	
	commandAck: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','cmdacknow')).get('url'),
			method: 'GET',
			success: function(response) {
				var obj = Ext.decode(response.responseText);
				if(obj.status == 'success') {
					// perform logic here.
				}
				gtp.showNotifications(obj.response.notifications);
				gtp.parse(obj.response.commands);
			},
			failure: function(response) {
				gtp.log(response.error+'command acknowledge service');
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
	}, 
	
	activate: function(options) {
        var but = Ext.getCmp('home').down('#tfd');
        but.setText('Deactivate');
        but.getEl().removeCls('x-button-confirm');
        but.getEl().addCls('x-button-decline');
		if(window.plugins.ActivatePlugin) {
			window.plugins.ActivatePlugin.activate();
		}
	},
	
	deactivate: function(options) {
        var but = Ext.getCmp('home').down('#tfd');
        but.setText('Activate');
        but.getEl().removeCls('x-button-decline');
        but.getEl().addCls('x-button-confirm');
		if(window.plugins.ActivatePlugin) {
			window.plugins.ActivatePlugin.deactivate();
		}
	},
	
	showTab: function(options) {
		
	},
	
	loginuser: function(options) {
		gtp.views.Viewport.setLoading({
			msg: 'Signing in..'
		},true);
		var un = Ext.getCmp('lpemailid').getValue();
		var pwd = Ext.getCmp('lppassword').getValue();
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','logging')).get('url'),
			params: {
				json: Ext.encode({
					userName: un,
					password: pwd,
					deviceDetails: {
						deviceId: gtp.deviceId,
						deviceName: gtp.detectDeviceType()
					} 
				})
			},
			success: function(response){
				gtp.views.Viewport.setLoading(false);
				var decres=Ext.decode(response.responseText);
				var res=decres.response.response;
				
				if(decres.status == 'success') {
					if(res.userExists=="Y" && res.passwordCorrect=="Y") {
						// Get client Configuration.
				    	Ext.dispatch({
				    		controller: 'get',
				    		action: 'configuration'
				    	});
						
						// Store username and password locally.
						gtp.utils.dataStore.setValueOfKey('username', un);
						gtp.utils.dataStore.setValueOfKey('password', pwd);
						
						var encodedString=base64_encode(un+':'+pwd);
						Ext.Ajax.defaultHeaders.Authorization= "Basic "+encodedString;
						Ext.dispatch({
							controller: 'load',
							action: 'view',
							loginDetails: {
								username: un,
								password: pwd
							}
						});

                        if(!gtp.tolls) {
                            gtp.getTolls();
                        }
                        
						if(Ext.is.iPhone) {
                            var ddp = window.plugins.DeviceDetailsPlugin;
                            if(ddp) {
                                ddp.setDetails(Ext.encode({
                                    deviceId: gtp.deviceId,
                                    username: un,
                                    password: pwd
                                }));
                            }
                            // if user app is enabled. invoke heartbeat plugin upon launch.
                            var actp = window.plugins.ActivatePlugin;
                            if(actp && res.isActive == 'Y') {
                                actp.activate();
                            }
						}
						else if(Ext.is.Android) {
							window.plugins.DeviceDetailsPlugin.setValue('username',un,function(){},function(){});
							window.plugins.DeviceDetailsPlugin.setValue('password',pwd,function(){},function(){});

							if(res.isActive == 'Y') {
								window.plugins.ActivatePlugin.activate();
							}
						}
						
						if(res.isActive == 'Y') {
                            var but = Ext.getCmp('home').down('#tfd');
                            but.setText('Deactivate');
                            but.getEl().removeCls('x-button-confirm');
                            but.getEl().addCls('x-button-decline');
						}
                        																		
					}
					else if(res.userExists=="Y" && res.passwordCorrect=="N"){
						Ext.Msg.alert('Incorrect',gtp.dict.loginform_pwd_fail);
					}
					else {
						Ext.Msg.alert('Incorrect', gtp.dict.login_failure);
					}
				}
				gtp.showNotifications(decres.response.notifications);
				gtp.parse(decres.response.commands);
			},
			failure: function(response){
				gtp.views.Viewport.setLoading(false);
				Ext.Msg.alert(gtp.dict.login_failure);
				gtp.log('Login Authentication failed with status: '+response.status);
				console.log('Login Authentication failed with status: '+response.status);
			}
		});
		
	}
});
