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
})
