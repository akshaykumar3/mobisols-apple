Ext.ns('gtp.utils.dataStore');

gtp.db = window.openDatabase("Mtp", "1.0", "Mobile Toll Pass", 100000);

gtp.utils.dataStore.getConfiguration = function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','clientconfig')).get('url'),
		method: 'GET',
		params: {
			json: Ext.encode({				
				componentName: 'iphone',
				version: '1.0',
				key: 'tollpass'
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

