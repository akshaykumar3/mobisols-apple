Ext.ns('gtp.utils.dataStore');

gtp.db = window.openDatabase("Mtp", "1.0", "Mobile Toll Pass", 100000);

gtp.utils.dataStore.getValueOfKey=function(key) {
	if(localStorage.getItem(Encryption.encrypt(key)))
		return Encryption.decrypt(localStorage.getItem(Encryption.encrypt(key)));
	else
		return null;
};

gtp.utils.dataStore.setValueOfKey=function(key,value) {
	localStorage.setItem(Encryption.encrypt(key),Encryption.encrypt(value));
};

