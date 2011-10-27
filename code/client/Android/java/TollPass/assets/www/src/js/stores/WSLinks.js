// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://112.79.103.46:8081/newweb/services/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/Login',
		service: 'logging'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://112.79.103.46:8081/newweb/services/Activate',
		service: 'activate'
	}] 
});
