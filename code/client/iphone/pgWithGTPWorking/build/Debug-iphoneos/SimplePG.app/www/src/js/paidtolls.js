Ext.regModel('PaidTolls', {
	fields: [{
		name: 'date',
		type: 'string'
	},{
		name: 'amount',
		type: 'number'
	},{
		name: 'location',
		type: 'string'
	},{
		name: 'reg',
		type: 'string'
	}]
});

var paidTolls = new Ext.data.Store({
	model: 'PaidTolls',
	getGroupString : function(record) {
		return record.get('date');
	},
	data: [{
		date: '2011-01-01',
		amount:'$2.50',
		location:'I-15N, Escondido',
		reg: '4GPB522'
	}]
});