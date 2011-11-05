//Store for configuration.
gtp.stores.Config = new Ext.data.Store({
	model: 'Configure'
});

//Store for years.
gtp.stores.Years = new Ext.data.Store({
	model: 'Year'
});

//Store for logging messages.
gtp.stores.Log = new Ext.data.Store({
	model: 'Message'
});

//Store for list of countries.
gtp.stores.Countries = new Ext.data.Store({
	model: 'Country',
	data: [{
		CountryID: 1,
		CountryName: 'United States',
		CountryCode: 'US'
	}]
});

//Store for Vehicle Makers.
gtp.stores.Makers = new Ext.data.Store({
	model: 'Maker',
	data: [{
		MakerID: 0,
		MakerName: ''
	}]
});

//Store for Vehicle Models.
gtp.stores.VehicleModels = new Ext.data.Store({
	model: 'VehicleModel',
	data: [{
		ModelID: 0,
		MakerID: 0,
		ModelName: ''
	}]
});

// Store for Cars Model
var carsList = new Ext.data.Store({
	model: 'Cars',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	}
});

// Store for Tolls.
var tolldetails=new Ext.data.Store({
	model: 'Tolls'
});

// Store for paid Tolls.
gtp.stores.paidTolls = new Ext.data.Store({
	model: 'PaidTolls',
	getGroupString : function(record) {
		return record.get('date');
	}
});

// Store for toll operators.
var TollsData = new Ext.data.Store({
	model : 'TollOperator',
	storeId : 'tollops',
	data : [{
		tolloperator: 'FasTrak',
		tollperday: '2$',
		avgtoll: '4$',
		id: 1
	}]
});

//Stores for logging heartbeat.
gtp.stores.LogHeartBeat= new Ext.data.Store({
	model: 'HeartBeatLog'
});
