// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/MakeAndModel',
		service: 'makeandmodel'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/Login',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/demoserver1/services/Activate',
		service: 'activate'
	}] 
});
