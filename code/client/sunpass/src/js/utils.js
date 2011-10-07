Ext.ns('gtp.utils.dataStore');

gtp.db = window.openDatabase("Mtp", "1.0", "Mobile Toll Pass", 100000);

gtp.utils.dataStore.getConfiguration = function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','clientconfig')).get('url'),
		method: 'GET',
		params: {
			json: Ext.encode({				
				componentName: gtp.detectDeviceType,
				version: '1.0'// This will be hard coded value on the client side.
			})
		},
		success: function(response) {
			console.log('Client Configuration response '+response.responseText);
			var obj=Ext.decode(response.responseText);
			gtp.cfg=obj.response;
		},
		failure: function(response) {
			console.log("Client config failure with status "+response.status);
		}
	});
};

gtp.utils.dataStore.getValueOfKey=function(key) {
	if(localStorage.getItem(Encryption.encrypt(key)))
		return Encryption.decrypt(localStorage.getItem(Encryption.encrypt(key)));
	else
		return null;
};

gtp.utils.dataStore.setValueOfKey=function(key,value) {
	localStorage.setItem(Encryption.encrypt(key),Encryption.encrypt(value));
};

