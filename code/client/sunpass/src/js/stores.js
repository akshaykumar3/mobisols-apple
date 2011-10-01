Ext.ns('gtp.stores');

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
var paidTolls = new Ext.data.Store({
	model: 'PaidTolls',
	getGroupString : function(record) {
		return record.get('date');
	},
	data: [{
		date:'2011-02-21',
		amount:'$2.50',
		location:'I-15N, Kentucky',
		reg: '4GPB5'
	}]
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
		url: 'http://localhost:6001/newweb/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://localhost:6001/newweb/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://localhost:6001/newweb/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://localhost:6001/newweb/services/Login',
		service: 'logging'
	},{
		url: 'http://localhost:6001/newweb/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://localhost:6001/newweb/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://localhost:6001/newweb/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://localhost:6001/newweb/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://localhost:6001/newweb/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://localhost:6001/newweb/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://localhost:6001/newweb/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://localhost:6001/newweb/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://localhost:6001/newweb/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://localhost:6001/newweb/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://localhost:6001/newweb/services/PaymentDetails',
		service: 'paymentdetails'
	}] 
});
