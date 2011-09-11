Ext.ns('gtp.stores');

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

// Store for newwebservice urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://172.30.102.242:6001/newweb/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/Login',
		service: 'logging'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/private/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/private/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/private/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://172.30.102.242:6001/newweb/services/private/OwnerTypeList',
		service: 'ownertypes'
	}] 
});

// Stores for logging heartbeat.
gtp.stores.LogHeartBeat= new Ext.data.Store({
	model: 'HeartBeatLog'
});