var DeviceDetailsPlugin = function(){
    
}

DeviceDetailsPlugin.prototype.getValue = function(key,win,fail) {
    PhoneGap.exec(win, fail, "DeviceDetailsPlugin1", "GET_USER_KEY", [key]); 
   }

DeviceDetailsPlugin.prototype.setValue = function(key,value,win,fail){
    PhoneGap.exec(win, fail, "DeviceDetailsPlugin1", "UPDATE_USER_KEY", [key,value]);
    }   
PhoneGap.addConstructor(function() {
    PhoneGap.addPlugin("DeviceDetailsPlugin", new DeviceDetailsPlugin());
    PluginManager.addService("DeviceDetailsPlugin1","com.mobisols.tollpayments.plugins.DataPlugin");
});