var DeviceDetailsPlugin = function(){
    
};

if(Ext.is.iPhone) {
	DeviceDetailsPlugin.prototype.getValue = function() {
	    // need to discuss and code.
	};

	DeviceDetailsPlugin.prototype.setDetails = function(encodedJson){
	    console.log(' dev details plugin javascript invoked');
	    PhoneGap.exec('DeviceDetails.setDetails', encodedJson); 
	};   

	PhoneGap.addConstructor(function() {
	    if(!window.plugins) {
	        console.log('window.plugins created');
	        window.plugins = {};
	    }
	    window.plugins.DeviceDetailsPlugin= new DeviceDetailsPlugin();
	    return window.plugins.DeviceDetailsPlugin;
	});	
}
else if(Ext.is.Android) {
	DeviceDetailsPlugin.prototype.getValue = function(key,win,fail) {
	    PhoneGap.exec(win, fail, "DeviceDetailsPlugin1", "GET_USER_KEY", [key]); 
	   };

	DeviceDetailsPlugin.prototype.setValue = function(key,value,win,fail){
	    PhoneGap.exec(win, fail, "DeviceDetailsPlugin1", "UPDATE_USER_KEY", [key,value]);
	    };
	    
	PhoneGap.addConstructor(function() {
	    PhoneGap.addPlugin("DeviceDetailsPlugin", new DeviceDetailsPlugin());
	    PluginManager.addService("DeviceDetailsPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
	});
}
