/* 
 * Author: A. Pradeep
 * Last Modified: Oct 1st,2011
 */

Ext.regApplication({
    name: "gtp",
    icon: 'resources/images/launchiconapple.png',
    tabletStartupScreen: 'resources/images/launchimageipad.png',
    phoneStartupScreen: 'resources/images/launchimageiphone.png',
    glossOnIcon: false,
    today: new Date(),
    isCarValid: false,
    arePaymentDetailsValid: false,
    isAppEnabled: 0,
    tollMarkers: new Array(),
    infoWindow: null,
    launch: function(){
    	Ext.Ajax.defaultHeaders = {};
    	var devret=this.getDeviceId();
    	if(devret!="FAILED")
    	{
    		this.launchLoginPage({
	    		deviceId: devret, 
	    		type: this.detectDeviceType()
	    	});
    	}
    	else
    	{
    		this.pan=new Ext.Panel({
    			fullscreen: true,
    			html: gtp.dict.dev_reg_errormsg
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
    getDeviceId: function(){
    	// open the database check if the device id is present.
    	// create the database 
    	if(gtp.utils.dataStore.getValueOfKey('gtp-deviceID'))
    		return gtp.utils.dataStore.getValueOfKey('gtp-deviceID');
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
    				var obj=Ext.decode(response.responseText);
    				console.log('Generated device ID is: '+obj.response.deviceId);
    				gtp.log('Device Registration success');
    				gtp.utils.dataStore.setValueOfKey('gtp-deviceID',obj.response.deviceId);
    				return obj.response.deviceId;
    			},
    			failure: function(response){
    				// Check the status. if the response status is 404. 
    				// Prompt a message saying could not connect to internet.
    				// Todo--- Failure could be of any. like 500 or some other error status.
    				// Write code to show message accordingly.
    				if(response.status==404)
    					return "FAILED";
    				else if(response.status == 500)
    					return "FAILED";
    				console.log('error in device registration web service');
    				gtp.log(response.status+' Error in registering device');
    			}
    		});
    	}
    }
});

