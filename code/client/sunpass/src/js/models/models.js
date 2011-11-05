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

// Defining model for Vehicle Makers.
gtp.models.Maker = Ext.regModel('Maker', {
	idProperty: 'MakerID',
	fields: [{
		name: 'MakerID',
		type: 'int'
	},{
		name: 'MakerName',
		type: 'string'
	}]
});

gtp.models.VehicleModel = Ext.regModel('VehicleModel', {
	idProperty: 'ModelID',
	fields: [{
		name: 'ModelID',
		type: 'int'
	},{
		name: 'MakerID',
		type: 'int'
	},{
		name: 'ModelName',
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
