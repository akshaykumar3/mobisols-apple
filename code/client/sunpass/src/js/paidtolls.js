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
		reg: '4GPB5'
	},{
		date:'2011-02-21',
		amount:'$2.50',
		location:'I-15N, Kentucky',
		reg: '4GPB5'
	},{
		date:'2011-01-15',
		amount:'$1.50',
		location:'76W, Long beach', 
		reg: '4GPB5'
	}]
});