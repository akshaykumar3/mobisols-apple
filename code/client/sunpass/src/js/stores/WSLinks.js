// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://localhost:6001/newweb/services/ChangePassword',
		service: 'changepassword'
	},{
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
	},{
		url: 'http://localhost:6001/newweb/services/Activate',
		service: 'activate'
	}] 
});
