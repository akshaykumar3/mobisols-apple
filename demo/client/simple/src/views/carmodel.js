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
	data: [{
		reg: '4GPB522',
		state: 'CA',
		type:'Sedan'
	}]
});