var ActivatePlugin = function(){
    
}

ActivatePlugin.prototype.activate = function(win,fail) {
    PhoneGap.exec(win, fail, "ActivatePlugin1", "ACTIVATE", []); 
   }

ActivatePlugin.prototype.deactivate = function(win,fail){
    PhoneGap.exec(win, fail, "ActivatePlugin1", "DEACTIVATE", []);
}   
PhoneGap.addConstructor(function() {
    
    PhoneGap.addPlugin("ActivatePlugin", new ActivatePlugin());
    PluginManager.addService("ActivatePlugin1","com.mobisols.tollpayments.plugins.ActivatePlugin");
 });