Ext.ns('gtp.tables');
Ext.ns('gtp.transactions');

gtp.tables.vml= function() {
	this.sessionId=0;
	this.tollid=0;
	this.distance=0;
};

gtp.tables.vml.insert=function(sid,tid,dis) {
	var vmlinstance= new gtp.tables.vml();
	vmlinstance.sessionId=sid;
	vmlinstance.tollid=tid;
	vmlinstance.distance=dis;
	gtp.db.transaction(this.queryDb,this.errorDb);
};



