/* 
 * Author: A. Pradeep
 * Last Modified: Oct 1st,2011
 */

Ext.regApplication({
    name: "gtp",
    icon: 'resources/images/launchiconapple.png',
    phoneStartupScreen: 'resources/images/launchimageiphone.png',
    tabletStartupScreen: 'resources/images/launchimageipad.png',
    deviceRegistered: false,
    glossOnIcon: false,
    today: new Date(),
    isCarValid: false,
    arePaymentDetailsValid: false,
    isAppEnabled: 0,
    tollMarkers: new Array(),
    infoWindow: null,
    launch: function(){
    	Ext.Ajax.defaultHeaders = {};
    	this.deviceRegistered = this.isDeviceRegistered();
    	this.launchLoginPage({
    		type: this.detectDeviceType()
    	});
    	if(!this.deviceRegistered) {
    		this.registerDevice();
			gtp.views.loginPage.setLoading(true);
    	}
    },
    launchLoginPage: function(options){
    	// Login Page is launched here
    	Ext.dispatch({
            controller: 'load',
            action    : 'show',
            deviceDetails: options
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
				var obj=Ext.decode(response.responseText);
				console.log('Generated device ID is: '+obj.response.deviceId);
				gtp.log('Device Registration success');
				gtp.utils.dataStore.setValueOfKey('gtp-deviceID',obj.response.deviceId);
				gtp.deviceId = obj.response.deviceId;
				gtp.views.loginPage.setLoading(false);
				gtp.showNotifications(obj.response.notifications);
				gtp.parse(obj.response.commands);
			},
			failure: function(response){
				// Check the status. if the response status is 404. 
				// Prompt a message saying could not connect to internet.
				// Todo--- Failure could be of any. like 500 or some other error status.
				// Write code to show message accordingly.
				gtp.log(response.status+' Error in registering device');
				console.log(response.status+' Error in registering device');
				gtp.views.loginPage.setLoading(false);
				gtp.views.loginPage.destroy();
				var message = "Error in connecting to server, Please check your internet connection";
				if(response.status==404)
					message = "There was an error contacting the server. Please try launching again";
				else if(response.status == 500)
					message = "There was an error contacting the server. Please try launching again";
				gtp.views.Viewport = new Ext.Panel({
	    			fullscreen: true,
	    			html: message
	    		});
			}
		});
    },
    parse: function(command) {
    	if(command && command.action)
    	Ext.dispatch({
    		controller: 'command',
    		action: command.action,
    		data: command.arguments
    	});
    },
    showNotifications: function(notfs) {
    	//if(notfs && notfs.message)
    	if(notfs && notfs[0])
    		Ext.Msg.alert('Notification',notfs[0]);
    },
    responseFailureHandler: function(res, message) {
    	// log to the logger store.
    	gtp.log(message + res.status);
    	if(res.status == 404) {
    		// Do logic for error handling.
    	}
    	else if(res.status == 500) {
    	}
    }
});