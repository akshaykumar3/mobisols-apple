// Store for Cars Model
var carsList = new Ext.data.Store({
	model: 'Cars',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	},
	data: [{
		reg: '4GPB5',
		state: 'CA',
		type: 'Sedan',
		startDate: new Date('12/7/2010'),
		endDate: new Date('12/12/2010'),
		active: true
	}]
});

// Store for Tolls.
var tolldetails=new Ext.data.Store({
	model: 'Tolls',
	data: [{
		 latitude: 37.49885,
		 longitude: -122.198452,
		 covered: true,
		 description: "illinois entry toll road",
		 price: '$1',
		 url: 'www.toll1.com'
	},{
		 latitude: 37.42980,
		 longitude: -122.210674,
		 covered: false,
		 description: "illinois exit toll road",
		 price: '$2',
		 url: 'www.toll2.com'
	},{
		 latitude: 37.48750,
		 longitude: -122.138523,
		 covered: true,
		 description: 'toll no 3',
		 price: '$3',
		 url: 'www.toll3.com'
	}]
});

// Store for paid Tolls.
var paidTolls = new Ext.data.Store({
	model: 'PaidTolls',
	getGroupString : function(record) {
		return record.get('date');
	},
	data: [{
		date: '2011-01-01',
		amount:'$2.50',
		location:'I-15N, Escondido',
		reg: '4GPB5'
	},{
		date:'2011-02-21',
		amount:'$2.50',
		location:'I-15N, Kentucky',
		reg: '4GPB5'
	},{
		date:'2011-01-15',
		amount:'$1.50',
		location:'76W, Long beach', 
		reg: '4GPB5'
	}]
});

// Store for webservice urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/LoginAuthentication',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/AddCar',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/webservices/services/OwnerTypeList',
		service: 'ownertypes'
	}] 
});
