Ext.regModel('PaidTolls', {
	fields: ['date', 'amount','location','reg']
});

var paidTolls = new Ext.data.Store({
	model: 'PaidTolls',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('date');
	},
	data: [{
		date:'2011-01-01',
		amount:'$2.50',
		location:'I-15N, Escondido',
		reg: '4GPB522'
	},{
		date:'2011-01-11',
		amount:'$1.50',
		location:'76W, Long beach',
		reg: '4GPB522'
	}]
});