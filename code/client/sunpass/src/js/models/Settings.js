// Model for toll payment and billing details.
Ext.regModel('Settings',{
	fields: [{
		name: 'userid',
		text: 'string'
	},{
		name: 'ccnumber',
		text: 'int'
	},{
		name: 'cardtype',
		text: 'string'
	},{
		name: 'expmonth',
		text: 'int'
	},{
		name: 'expyear',
		text: 'int'
	},{
		name: 'acnumber',
		text: 'int'
	},{
		name: 'name',
		text: 'string'
	},{
		name: 'address',
		text: 'string'
	},{
		name: 'city',
		text: 'string'
	},{
		name: 'state',
		text: 'string'
	},{
		name: 'country',
		text: 'string'
	},{
		name: 'zipcode',
		text: 'string'
	},{
		name: 'emailid',
		text: 'string'
	}],
	validations: [{
		type: 'custom',
		field: 'ccnumber',
		message: 'Invalid Credit Card Number',
		fn: function(ccn) {
			//console.log(ccn);
				return ccn.luhnCheck();
		}
	},{
		type: 'presence',
		name: 'name'
	},{
		type: 'presence',
		name: 'address'
	},{
		type: 'presence',
		name: 'city'
	},{
		type: 'exclusion',
		field: 'state',
		list: ['']
	}]
});
