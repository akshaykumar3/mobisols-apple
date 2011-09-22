// Defining model for cars.
Ext.regModel('Cars', {
	fields: [{
		name: 'reg',
		type: 'string'
	},{
		name: 'state',
		type: 'string'
	},{
		name: 'type',
		type: 'string'
	},{
		name: 'startDate',
		type: 'date'
	},{
		name: 'endDate',
		type: 'date'
	},{
		name: 'active',
		type: 'boolean'
	}]
});

// Model for toll details.
Ext.regModel('Tolls',{
	fields: [{
		name: 'latitude',
		type: 'float'
	},{
		name: 'longitude',
		type: 'float'
	},{
		name: 'covered',
		type: 'boolean'
	},{
		name: 'description',
		type: 'string'
	},{
		name: 'price',
		type: 'float'
	},{
		name: 'url',
		type: 'string'
	},{
		name: 'tollid',
		type: 'int'
	}]
});

// Model for paid toll details.
Ext.regModel('PaidTolls', {
	fields: [{
		name: 'date',
		type: 'string'
	},{
		name: 'amount',
		type: 'number'
	},{
		name: 'location',
		type: 'string'
	},{
		name: 'reg',
		type: 'string'
	}]
});

// Model for webservices._anomFunkMap
Ext.regModel('WebServices',{
	fields: [{
		name: 'url',
		type: 'string'
	},{
		name: 'service',
		type: 'string'
	}]
});

// Model for logging heartbeat details.
Ext.regModel('HeartBeatLog',{
	fields: [{
		name: 'sessionid',
		type: 'int'
	},{
		name: 'tollid',
		type: 'string'
	},{
		name: 'distance',
		type: 'float'
	}]
});

Ext.regModel('Settings',{
	fields: [{
		name: 'userid',
		text: 'string'
	},{
		name: 'ccnumber',
		text: 'int'
	},{
		name: 'cardtype',
		text: 'string'
	},{
		name: 'expdate',
		text: 'date'
	},{
		name: 'acnumber',
		text: 'int'
	},{
		name: 'name',
		text: 'string'
	},{
		name: 'address',
		text: 'string'
	},{
		name: 'city',
		text: 'string'
	},{
		name: 'state',
		text: 'string'
	},{
		name: 'zipcode',
		text: 'string'
	}]
});
