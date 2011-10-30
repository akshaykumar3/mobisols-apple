// Store for demoserver1service urls.
var webServices=new Ext.data.Store({
	model: 'WebServices',
	data: [{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/ChangePassword',
		service: 'changepassword'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/MakeAndModel',
		service: 'makeandmodel'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/ClientConfiguration',
		service: 'clientconfig'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/UserRegistration',
		service: 'regnewuser'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/DeviceRegistration',
		service: 'registerdevice'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/Login',
		service: 'logging'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/AccountDetails',
		service: 'acdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/HeartBeat',
		service: 'heartbeat'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/VehicleDetails',
		service: 'addcar'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/VehicleDetails',
		service: 'deletevehicle'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/TollDetailsList',
		service: 'tolldetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/VehicleTypeList',
		service: 'vehicletypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/CcTypeList',
		service: 'cctypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/OwnerTypeList',
		service: 'ownertypes'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/ServicePlansList',
		service: 'serviceplans'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/NearestToll',
		service: 'nearesttoll'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/PaymentDetails',
		service: 'paymentdetails'
	},{
		url: 'http://mbtest.dyndns.dk:6004/mtpdev/services/Activate',
		service: 'activate'
	}] 
});
