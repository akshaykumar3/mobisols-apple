// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/Login',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/devserver/services/Activate',
		service: 'activate'
	}] 
});
