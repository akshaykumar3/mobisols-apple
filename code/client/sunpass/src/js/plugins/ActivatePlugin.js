var ActivatePlugin = function(){
    
};

if(Ext.is.iPhone) {
	ActivatePlugin.prototype.activate = function() {
	    console.log('activate plugin is invoked from javascript');
	    PhoneGap.exec('Activate.setActive'); 
	};

	ActivatePlugin.prototype.deactivate = function(){
	    PhoneGap.exec('Activate.setInactive');
	};

	PhoneGap.addConstructor(function() {
	    if(!window.plugins) {
	        console.log('ActiPlug window.plugins created');
	        window.plugins = {};
	    }
	    window.plugins.ActivatePlugin = new ActivatePlugin();
	    return window.plugins.ActivatePlugin;
	});
}

else if(Ext.is.Android) {
	ActivatePlugin.prototype.activate = function(win,fail) {
	    PhoneGap.exec(win, fail, "ActivatePlugin1", "ACTIVATE", []); 
	   };

	ActivatePlugin.prototype.deactivate = function(win,fail){
	    PhoneGap.exec(win, fail, "ActivatePlugin1", "DEACTIVATE", []);
	};
	
	PhoneGap.addConstructor(function() {
	    
	    PhoneGap.addPlugin("ActivatePlugin", new ActivatePlugin());
	    PluginManager.addService("ActivatePlugin1","com.mobisols.tollpayments.plugins.ActivatePlugin");
	 });
}

