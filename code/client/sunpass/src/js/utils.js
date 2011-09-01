Ext.ns('gtp.utils.dataStore');

gtp.db = window.openDatabase("Mtp", "1.0", "Mobile Toll Pass", 100000);

gtp.utils.dataStore.getConfiguration = function() {
	
};

gtp.utils.dataStore.getValueOfKey=function(key) {
	if(localStorage.getItem(Encryption.encrypt(key)))
		return Encryption.decrypt(localStorage.getItem(Encryption.encrypt(key)));
	else
		return 0;
};

gtp.utils.dataStore.setValueOfKey=function(key,value) {
	localStorage.setItem(Encryption.encrypt(key),Encryption.encrypt(value));
};

gtp.utils.dataStore.getValueOfKeyFromDb=function(key) {
	this.queryDb=QueryDatabase;
	gtp.db.transaction(this.queryDb,this.errorDb);
};

function QueryDatabase(tx) {
	tx.executeSql('SELECT * FROM DEMO', [], querySuccess, errorCb);
}

function querySuccess(tx, results) {
	
}