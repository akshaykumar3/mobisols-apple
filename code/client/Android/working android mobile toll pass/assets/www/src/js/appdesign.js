/* 
 * Author: A. Pradeep
 * Last Modified: July 16,2011
 */

Ext.regApplication({
    name: "gtp",
    icon: 'resources/images/launchiconapple.png',
    tabletStartupScreen: 'resources/images/launchimageipad.png',
    phoneStartupScreen: 'resources/images/launchimageiphone.png',
    glossOnIcon: false,
    responseFetched: true,
    today: new Date(),
    isAppEnabled: 0,
    tollMarkers: new Array(),
    infoWindows: new Array(),
    launch: function(){
    	console.log('application is launched');
    	Ext.Ajax.defaultHeaders = {
    		//'Accept': 'application/json'
    	};
    	var devret=this.getDeviceId();
    	//gtp.clientsidehb();
    	if(devret!="FAILED")
    	{
    		this.launchLoginPage({
	    		deviceId: devret, 
	    		type: this.detectDeviceType()
	    	});
    	}
    	else
    	{
    		console.log('i am from else');
    		this.pan=new Ext.Panel({
    			fullscreen: true,
    			html: 'Could not connect to server'
    		});
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
    registerLaunch: function(){
    	console.log('device is registered');
    	gtp.views.loginPage.setActiveItem('regpage');
    },
    getDeviceId: function(){
    	// open the database check if the device id is present.
    	// create the database 
    	if(gtp.utils.dataStore.getValueOfKey('gtp-deviceID'))
    	{
    		console.log(gtp.utils.dataStore.getValueOfKey('gtp-deviceID'));
    		return gtp.utils.dataStore.getValueOfKey('gtp-deviceID');
    	}
    	else
    	{
    		Ext.Ajax.request({
    			url: webServices.getAt(webServices.findExact('service','registerdevice')).get('url'),
    			params: {
    				json: Ext.encode({
    					deviceName: this.detectDeviceType()
    				})
    			},
    			success: function(response){
    				console.log("response status"+response.status);
    				var obj=Ext.decode(response.responseText);
    				console.log('Device Registration response '+response.responseText);
    				console.log('Generated device ID is: '+obj.response.deviceId);
    				gtp.utils.dataStore.setValueOfKey('gtp-deviceID',obj.response.deviceId);
    				return obj.response.deviceId;
    			},
    			failure: function(response){
    				// Check the status. if the response status is 404. 
    				// Prompt a message saying could not connect to internet.
    				if(response.status==404)
    				{
    					return "FAILED";
    	    		}
    				console.log('error in device registration web service');
    			}
    		});
    	}
    }
});
