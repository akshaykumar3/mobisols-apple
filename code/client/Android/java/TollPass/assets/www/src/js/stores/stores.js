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

// Store for Cars Model
var carsList = new Ext.data.Store({
	model: 'Cars',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	},
	listeners: {
		remove: function(store, record, index) {
			var ac = Ext.getCmp('activecar');
			if(ac.getValue() == record.get('reg'))
				ac.setValue(store.getAt(0).get('reg'));
			console.log('record is removed from store');
		}
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
