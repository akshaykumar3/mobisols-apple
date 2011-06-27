Ext.regModel('Cars', {
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
	}]
});

var carsList = new Ext.data.Store({
	model: 'Cars',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	},
	data: [{
		reg: '4GPB522',
		state: 'CA',
		type: 'Sedan',
		startDate: new Date('12/7/2010')
	}]
});