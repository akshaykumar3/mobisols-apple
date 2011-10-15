//Store for configuration.
gtp.stores.Config = new Ext.data.Store({
	model: 'Configure'
});

//Store for years.
gtp.stores.Years = new Ext.data.Store({
	model: 'Year'
});

//Store for list of Months.
gtp.stores.Months = new Ext.data.Store({
	model: 'Month',
	data: [{
		month: 'January',
		monthid: 1
	},{
		month: 'February',
		monthid: 2
	},{
		month: 'March',
		monthid: 3
	},{
		month: 'April',
		monthid: 4
	},{
		month: 'May',
		monthid: 5
	},{
		month: 'June',
		monthid: 6
	},{
		month: 'July',
		monthid: 7
	},{
		month: 'August',
		monthid: 8
	},{
		month: 'September',
		monthid: 9
	},{
		month: 'October',
		monthid: 10
	},{
		month: 'November',
		monthid: 11
	},{
		month: 'December',
		monthid: 12
	}]
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

// Store for list of states.
gtp.stores.States = new Ext.data.Store({
	model: 'State',
	data: [{
		StateID: 1,
		StateName: '',
		StateCode: ''
	},{
		StateID: 2,
        StateName: 'Alabama',
        StateCode: 'AL'
	},{
		StateID: 3,
		StateName: 'Alaska',
        StateCode: 'AK'
	},{
		StateID: 4,
		StateName: 'Arizona',
        StateCode: 'AZ'
	},{
		StateID: 5,
		StateName: 'Arkansas',
        StateCode: 'AR'
	},{
		StateID: 6,
		StateName: 'California',
        StateCode: 'CA'
	},{
		StateID: 7,
		StateName: 'Colorado',
        StateCode: 'CO'
	},{
		StateID: 8,
		StateName: 'Connecticut',
        StateCode: 'CT'
	},{
		StateID: 9,
		StateName: 'Delaware',
        StateCode: 'DE'
	},{
		StateID: 10,
		StateName: 'District Of Columbia',
        StateCode: 'DC'
	},{
		StateID: 11,
		StateName: 'Florida',
        StateCode: 'FL'
	},{
		StateID: 12,
		StateName: 'Georgia',
        StateCode: 'GA'
	},{
		StateID: 13,
		StateName: 'Hawaii',
        StateCode: 'HI'
	},{
		StateID: 14,
		StateName: 'Idaho',
        StateCode: 'ID'
	},{
		StateID: 15,
		StateName: 'Illinois',
        StateCode: 'IL'
	},{
		StateID: 16,
		StateName: 'Indiana',
        StateCode: 'IN'
	},{
		StateID: 17,
		StateName: 'Iowa',
        StateCode: 'IA'
	},{
		StateID: 18,
		StateName: 'Kansas',
        StateCode: 'KS'
	},{
		StateID: 19,
		StateName: 'Kentucky',
        StateCode: 'KY'
	},{
		StateID: 20,
		StateName: 'Louisiana',
        StateCode: 'LA'
	},{
		StateID: 21,
		StateName: 'Maine',
        StateCode: 'ME'
	},{
		StateID: 22,
		StateName: 'Maryland',
        StateCode: 'MD'
	},{
		StateID: 23,
		StateName: 'Massachusetts',
        StateCode: 'MA'
	},{
		StateID: 24,
		StateName: 'Michigan',
        StateCode: 'MI'
	},{
		StateID: 25,
		StateName: 'Minnesota',
        StateCode: 'MN'
	},{
		StateID: 26,
		StateName: 'Mississippi',
        StateCode: 'MS'
	},{
		StateID: 27,
		StateName: 'Missouri',
        StateCode: 'MO'
	},{
		StateID: 28,
		StateName: 'Montana',
        StateCode: 'MT'
	},{
		StateID: 29,
		StateName: 'Nebraska',
        StateCode: 'NE'
	},{
		StateID: 30,
		StateName: 'Nevada ',
        StateCode: 'NV'
	},{
		StateID: 31,
		StateName: 'New Hampshire',
        StateCode: 'NH'
	},{
		StateID: 32,
		StateName: 'New Jersey',
        StateCode: 'NJ'
	},{
		StateID: 33,
		StateName: 'New Mexico',
        StateCode: 'NM'
	},{
		StateID: 34,
		StateName: 'New York',
        StateCode: 'NY'
	},{
		StateID: 35,
		StateName: 'North Carolina',
        StateCode: 'NC'
	},{
		StateID: 36,
		StateName: 'North Dakota',
        StateCode: 'ND'
	},{
		StateID: 37,
		StateName: 'Ohio',
        StateCode: 'OH'
	},{
		StateID: 38,
		StateName: 'Oklahoma ',
        StateCode: 'OK'
	},{
		StateID: 39,
		StateName: 'Oregon',
        StateCode: 'OR'
	},{
		StateID: 40,
		StateName: 'Pennsylvania',
        StateCode: 'PA'
	},{
		StateID: 41,
		StateName: 'Rhode Island',
        StateCode: 'RI'
	},{
		StateID: 42,
		StateName: 'South Carolina',
        StateCode: 'SC'
	},{
		StateID: 43,
		StateName: 'South Dakota',
        StateCode: 'SD'
	},{
		StateID: 44,
		StateName: 'Tennessee',
        StateCode: 'TN'
	},{
		StateID: 45,
		StateName: 'Texas',
        StateCode: 'TX'
	},{
		StateID: 46,
		StateName: 'Utah',
        StateCode: 'UT'
	},{
		StateID: 47,
		StateName: 'Vermont',
        StateCode: 'VT'
	},{
		StateID: 48,
		StateName: 'Virginia',
        StateCode: 'VA'
	},{
		StateID: 49,
		StateName: 'Washington',
        StateCode: 'WA'
	},{
		StateID: 50,
		StateName: 'West Virginia',
        StateCode: 'WV'
	},{
		StateID: 51,
		StateName: 'Wisconsin',
        StateCode: 'WI'
	},{
		StateID: 52,
		StateName: 'Wyoming',
        StateCode: 'WY'
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

// Store for newwebservice urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/Login',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/newweb/services/Activate',
		service: 'activate'
	}] 
});
