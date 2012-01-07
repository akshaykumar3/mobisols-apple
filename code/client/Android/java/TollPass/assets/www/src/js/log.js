Ext.ns('gtp.log');

gtp.log = function(message) {
	gtp.stores.Log.insert(0,Ext.ModelMgr.create({
		message: message
	},'Message'));
};