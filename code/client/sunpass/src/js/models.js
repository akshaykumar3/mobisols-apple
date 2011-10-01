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
		name: 'isActive',
		type: 'string'
	},{
		name: 'ownerType',
		type: 'string'
	},{
		name: 'vehicleId',
		type: 'int'
	}],
	validations: [{
		type: 'presence',
		name: 'reg'
	},{
		type: 'inclusion',
		name: 'isActive', 
		list: ['Y', 'N', 'I']
	},{
		name: 'state',
		type: 'format', 
		matcher: /[0-9]/
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

// Model for toll payment and billing details.
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

// Model for toll operators.
Ext.regModel('TollOperator', {
	fields : [{
		name : 'tolloperator',
		type: 'string'
	},{
		name : 'tollperday',
		type: 'string'
	},{
		name : 'avgtoll',
		type: 'string'
	},{
		name: 'id',
		type: 'int'
	}]
});
