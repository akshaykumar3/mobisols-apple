Ext.regModel('TollOperators',{
	fields: [{name:'tolloperator'},
			{name: 'tollperday'},
			{name:'avgtoll'}]	
});

var TollsData = new Ext.data.Store({
	model: 'TollOperators',
	storeId: 'tollops',
	data: [{
		tolloperator: 'E Pass', tollperday: '2$', avgtoll: '4$'
	}]
});