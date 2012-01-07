var Transaction={};

Transaction.table="";
Transaction.values="";

Transaction.insert = function(table, values) {
	this.table=table;
	this.values=values;
	gtp.db.transaction(this.populateDb,this.insertError,this.insertSucces);
};

Transaction.create = function(table, list) {
	this.table=table;
	this.values=list;
	gtp.db.transaction(this.createTable);
};

Transaction.populateDb = function(tx) {
	tx.executeSql('insert into '+this.table+' values '+'('+this.values+')');
};

Transaction.createTable = function(tx) {
	tx.executeSql('Create table if not exists '+this.table+' ('+this.values+')');
};

Transaction.insertSuccess = function( ) {
	console.log('successfully inserted '+this.values+' into '+this.table);
};

Transaction.insertError = function(err) {
	console.log('Error inserting '+this.values+' into '+this.table);
	console.log('Error processing SQL: '+err.code);
};



