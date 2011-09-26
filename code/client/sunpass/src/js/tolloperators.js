Ext.regModel('TollOperators', {
	fields : [{
		name : 'tolloperator',
		type: 'string'
	},{
		name : 'tollperday',
		type: 'int'
	},{
		name : 'avgtoll',
		type: 'int'
	}]
});

var TollsData = new Ext.data.Store({
	model : 'TollOperators',
	storeId : 'tollops',
	data : [{
		tolloperator : 'FasTrak',
		tollperday : '2$',
		avgtoll : '4$'
	}]
});