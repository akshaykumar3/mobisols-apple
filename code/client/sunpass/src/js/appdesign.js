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
    	this.launchLoginPage({
    		uuid: '00012121235923472398461',
    		type: this.detectDeviceType()
    	});
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
    	return 'iphone'
    	else if(Ext.is.Android)
    	return 'android'
    	else if(Ext.is.Blackberry)
    	return 'blackberry'
    	else if(Ext.is.iPod)
    	return 'ipod'
    	else if(Ext.is.iPad)
    	return 'ipad'
    	else if(Ext.is.Desktop)
    	return 'desktop'
    },
    registerLaunch: function(){
    	console.log('device is registered');
    	gtp.views.loginPage.setActiveItem('regpage');
    },
    getDeviceId: function(){
    	if(localStorage.getItem('gtp-deviceID'))
    	{
    		return localStorage.getItem('gtp-deviceID'); 
    	}
    }
});

