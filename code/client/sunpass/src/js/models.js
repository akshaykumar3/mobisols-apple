// Define model for application configuration.
gtp.models.Configuration = Ext.regModel('Configure',{
	fields: [{
		name: 'componentName',
		type: 'string'
	},{
		name: 'version',
		type: 'string'
	}]
});

//Defines model for Year
gtp.models.Year = Ext.regModel('Year', {
	fields: [{
		name: 'year',
		type: 'int'
	}]
});

//Defines model for Month
gtp.models.Month = Ext.regModel('Month', {
	fields: [{
		name: 'month',
		type: 'string'
	},{
		name: 'monthid',
		type: 'int'
	}]
});

//Defines model for logging messages.
gtp.models.Message = Ext.regModel('Message',{
	fields: [{
		name: 'file',
		type: 'string'
	},{
		name: 'message',
		type: 'string'
	}]
});


//Defines model for Country.
gtp.models.Country = Ext.regModel('Country',{
	idProperty: 'CountryID',
	fields: [{
		name: 'CountryID',
		type: 'int'
	},{
		name: 'CountryName',
		type: 'string'
	},{
		name: 'CountryCode',
		type: 'string'
	}]
});

// Defining model for states.
gtp.models.State = Ext.regModel('State',{
	idProperty: 'StateID',
	fields: [{
		name: 'StateID',
		type: 'int'
	},{
		name: 'StateName',
		type: 'string'
	},{
		name: 'StateCode',
		type: 'string'
	}]
});

// Defining model for cars.
gtp.models.Car = Ext.regModel('Cars', {
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
gtp.models.Toll = Ext.regModel('Tolls',{
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
		name: 'expmonth',
		text: 'int'
	},{
		name: 'expyear',
		text: 'int'
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
		name: 'country',
		text: 'string'
	},{
		name: 'zipcode',
		text: 'string'
	}],
	validations: [{
		type: 'format',
		field: 'ccnumber',
		matcher: /[0-9]{4}\s[0-9]{4}\s[0-9]{4}\s[0-9]{4}/
	},{
		type: 'presence',
		name: 'name'
	},{
		type: 'presence',
		name: 'address'
	},{
		type: 'presence',
		name: 'city'
	},{
		type: 'exclusion',
		field: 'state',
		list: ['']
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
