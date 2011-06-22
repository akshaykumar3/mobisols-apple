Ext.regModel('TollOperators', {
	fields: [{
		name:'tolloperator',
		type: 'string'
	},{
		name: 'tollperday',
		type: 'string'
	},{
		name:'avgtoll',
		type: 'string'
	}]
});

var TollsData = new Ext.data.Store({
	model: 'TollOperators',
	storeId: 'tollops',
	data: [{
		tolloperator: 'E Pass',
		tollperday: '2$',
		avgtoll: '4$'
	}]
});