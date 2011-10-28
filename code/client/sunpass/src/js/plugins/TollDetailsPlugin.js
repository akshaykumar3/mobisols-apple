var TollDetailsPlugin = function(){
    
};

if(Ext.is.iPhone) {
	TollDetailsPlugin.prototype.setDetails = function(encodedJson){
	    PhoneGap.exec('TollLocations.setTollDetails', encodedJson); 
	};   

	PhoneGap.addConstructor(function() {
	    if(!window.plugins) 
	        window.plugins = {};
	    window.plugins.TollDetailsPlugin= new TollDetailsPlugin();
	    return window.plugins.TollDetailsPlugin;
	});	
}
else if(Ext.is.Android) {
	TollDetailsPlugin.prototype.getValue = function(win,fail) {
	    PhoneGap.exec(win, fail, "TollDetailsPlugin1", "GET_TOLL_LOC", []); 
	   };

	TollDetailsPlugin.prototype.setValue = function(json,win,fail){
	    PhoneGap.exec(win, fail, "TollDetailsPlugin1", "UPDATE_TOLL_LOC", [json]);
	    };
	    
	PhoneGap.addConstructor(function() {
	    PhoneGap.addPlugin("TollDetailsPlugin", new TollDetailsPlugin());
	    PluginManager.addService("TollDetailsPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
	});
}
