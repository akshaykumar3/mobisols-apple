/**
 * 
 */
var plugin = function(){
    
}

plugin.prototype.callPlugin = function(win,fail) {
    PhoneGap.exec(win, fail, "TollpassPlugin", "saveClientConfiguration", []); 
   };
    
PhoneGap.addConstructor(function() {
    PhoneGap.addPlugin("plugin", new plugin());
    PluginManager.addService("TollpassPlugin","com.mobisols.tollpayments.TollpassPlugin");
 });