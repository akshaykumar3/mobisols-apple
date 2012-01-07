/* 
 * Author: A. Pradeep
 * Last Modified: Nov 5th,2011
 */

Ext.regApplication({
    name: "gtp",
    icon: 'resources/images/launchiconapple.png',
    phoneStartupScreen: 'resources/images/launchimageiphone.png',
    tabletStartupScreen: 'resources/images/launchimageipad.png',
    deviceRegistered: false,
    glossOnIcon: false,
    today: function() {
    	return new Date();
    },
    isCarValid: false,
    arePaymentDetailsValid: false,
    isAppEnabled: 0,
    tollMarkers: new Array(),
    infoWindow: null,
    launch: function(){
    	Ext.Ajax.defaultHeaders = {};
    	Ext.ns('gtp.vars');
    	gtp.vars.PasswordLength = 8;
    	this.deviceRegistered = this.isDeviceRegistered();
    	this.launchLoginPage();
    	if(!this.deviceRegistered) {
    		this.registerDevice();
			gtp.views.Viewport.setLoading(true);
    	}
    	else {
    		gtp.deviceId = gtp.utils.dataStore.getValueOfKey('gtp-deviceID');
    		console.log('device is already registered: '+gtp.deviceId);
    		
        	var un = gtp.utils.dataStore.getValueOfKey('username');
        	var pwd = gtp.utils.dataStore.getValueOfKey('password');
        	if( gtp.views.Viewport && this.deviceId && un && pwd ) {
        		// do auto login of user.
    			Ext.dispatch({
    				controller: 'command',
    				action: 'loginuser'
    			});    		
        	}
    	}
    },
    launchLoginPage: function(){
    	// Login Page is launched here
    	Ext.dispatch({
            controller: 'load',
            action    : 'show',
	    });
    	
    },
    detectDeviceType: function(){
    	if(Ext.is.iPhone)
    	return 'iphone';
    	else if(Ext.is.Android)
    	return 'android';
    	else if(Ext.is.Blackberry)
    	return 'blackberry';
    	else if(Ext.is.iPod)
    	return 'ipod';
    	else if(Ext.is.iPad)
    	return 'ipad';
    	else if(Ext.is.Desktop)
    	return 'desktop';
    },
    isDeviceRegistered: function() {
    	if( gtp.utils.dataStore.getValueOfKey('gtp-deviceID') )
    		return true;
    	else
    		return false;
    },
    registerDevice: function(){
    	// open the database check if the device id is present.
    	// create the database 
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','registerdevice')).get('url'),
			params: {
				json: Ext.encode({
					deviceName: this.detectDeviceType()
				})
			},
			success: function(response){
				gtp.views.Viewport.setLoading(false);
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
				gtp.views.Viewport.setLoading(false);
				// Check the status. if the response status is 404. 
				// Prompt a message saying could not connect to server.
				// Todo--- Failure could be of any. like 500 or some other error status.
				// Write code to show message accordingly.
				gtp.log(response.status+' Error in registering device');
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
    parse: function(commands) {
    	if( commands ) {
        	for(var i=0 ; i<commands.length; i++) {
            	Ext.dispatch({
            		controller: 'command',
            		action: commands[i]
            	});
        	}
    	}
    },
    showNotifications: function(notfs) {
    	if(notfs && notfs[0]) {
    		Ext.Msg.alert('Notification',notfs[0]);
    	}
    },
    responseFailureHandler: function(res, message) {
    	// log to the logger store.
    	gtp.log(message + res.status);
    	var msg;
    	if(res.status == 404) {
    		// Do logic for error handling.
        	msg = "Error contacting the server. Please try again";
    		if(gtp.tabpanel) 
    			gtp.tabpanel.destroy();
			new Ext.Panel({
				fullscreen: true,
				html: msg
			});
    			
    	}
    	else if(res.status == 500) {
        	msg = "Server down temporarily, Please try after some time";
    		if(gtp.tabpanel) {
    			gtp.tabpanel.destroy();
    		}
			new Ext.Panel({
				fullscreen: true,
				html: msg
			});
    	}
    }
});

