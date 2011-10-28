var ClientConfigPlugin = function(){
    
};

if(Ext.is.iPhone) {
	ClientConfigPlugin.prototype.getClientConfig = function() {
	    // discuss and implement.
	};

	ClientConfigPlugin.prototype.setClientConfig = function(config){
	    // config is encoded json.
	    console.log('client config plugin invoked in javascript');
	    PhoneGap.exec('ClientConfig.setConfiguration', config);
	}; 

	PhoneGap.addConstructor(function() {
	    if(!window.plugins) {
	        console.log('window.plugins created');
	        window.plugins = {};
	    }
	    window.plugins.ClientConfig = new ClientConfigPlugin();
	    return window.plugins.ClientConfig;
	});	
}

else if(Ext.is.Android) {
	ClientConfigPlugin.prototype.getClientConfig = function(key,win,fail) {
	    PhoneGap.exec(win, fail, "ClientConfigPlugin1", "GET_CLIENT_CONFIG", [key]); 
	   };

	ClientConfigPlugin.prototype.setClientConfig = function(json,win,fail){
	    PhoneGap.exec(win, fail, "ClientConfigPlugin1", "UPDATE_CLIENT_CONFIG", [json]);
	};
	
	PhoneGap.addConstructor(function() {
	    PhoneGap.addPlugin("ClientConfigPlugin", new ClientConfigPlugin());
	    PluginManager.addService("ClientConfigPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
	 });	
}
