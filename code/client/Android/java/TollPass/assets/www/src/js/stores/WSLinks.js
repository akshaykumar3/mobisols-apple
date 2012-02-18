// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://172.30.102.71:6004/newweb/services/secure/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/MakeAndModel',
		service: 'makeandmodel'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/public/ForgotPassword',
		service: 'requestnewpassword'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/public/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/public/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/public/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/public/Login',
		service: 'logging'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://172.30.102.71:6004/newweb/services/secure/Activate',
		service: 'activate'
	}] 
});
