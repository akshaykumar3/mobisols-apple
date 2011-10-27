var ClientConfigPlugin = function(){
    
}

ClientConfigPlugin.prototype.getClientConfig = function(key,win,fail) {
    PhoneGap.exec(win, fail, "ClientConfigPlugin1", "GET_CLIENT_CONFIG", [key]); 
   }

ClientConfigPlugin.prototype.setClientConfig = function(json,win,fail){
    PhoneGap.exec(win, fail, "ClientConfigPlugin1", "UPDATE_CLIENT_CONFIG", [json]);
}   
PhoneGap.addConstructor(function() {
    PhoneGap.addPlugin("ClientConfigPlugin", new ClientConfigPlugin());
    PluginManager.addService("ClientConfigPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
 });