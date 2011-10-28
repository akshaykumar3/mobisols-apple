// Defining model for cars.
gtp.models.Car = Ext.regModel('Cars', {
	fields: [{
		name: 'reg',
		type: 'string'
	},{
		name: 'state',
		type: 'string'
	},{
		name: 'type',
		type: 'string'
	},{
		name: 'startDate',
		type: 'date'
	},{
		name: 'endDate',
		type: 'date'
	},{
		name: 'isActive',
		type: 'string'
	},{
		name: 'ownerType',
		type: 'string'
	},{
		name: 'vehicleId',
		type: 'int'
	},{
		name: 'make',
		type: 'string'
	},{
		name: 'model',
		type: 'string'
	},{
		name: 'color',
		type: 'string'
	},{
		name: 'year',
		type: 'int'
	}],
	validations: [{
		type: 'presence',
		name: 'reg'
	},{
		type: 'inclusion',
		name: 'isActive', 
		list: ['Y', 'N', 'I']
	},{
		name: 'state',
		type: 'format', 
		matcher: /[0-9]/
	}]
});