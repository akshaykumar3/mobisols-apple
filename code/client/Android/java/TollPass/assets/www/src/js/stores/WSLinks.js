// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/MakeAndModel',
		service: 'makeandmodel'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/public/ForgotPassword',
		service: 'requestnewpassword'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/public/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/public/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/public/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/public/Login',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/secure/Activate',
		service: 'activate'
	}] 
});
