Ext.regModel('TollOperators',{
	fields: [{name:'tolloperator'},
			{name: 'tollperday'},
			{name:'avgtoll'}]	
});

var TollsData = new Ext.data.Store({
	model: 'TollOperators',
	storeId: 'tollops',
	data: [{
		tolloperator: 'Pass Track', tollperday: '2$', avgtoll: '4$'
	}]
});