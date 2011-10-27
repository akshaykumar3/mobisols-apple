var TollLocationPlugin = function(){
    
}

TollLocationPlugin.prototype.getValue = function(win,fail) {
    PhoneGap.exec(win, fail, "TollLocationPlugin1", "GET_TOLL_LOC", []); 
   }

TollLocationPlugin.prototype.setValue = function(json,win,fail){
    PhoneGap.exec(win, fail, "TollLocationPlugin1", "UPDATE_TOLL_LOC", [json]);
    }   
PhoneGap.addConstructor(function() {
    PhoneGap.addPlugin("TollLocationPlugin", new TollLocationPlugin());
    PluginManager.addService("TollLocationPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
});