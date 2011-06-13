Ext.regModel('TollOperators',{
	fields: ['tolloperator', 'tollperday', 'avgtoll']	
});

var TollsData = Ext.data.Store({
	model: 'TollOperators',
	data: [{
		tolloperator: 'Shama Operator', tollperday: '2$', avgtoll: '1.5$'
	}]	
});