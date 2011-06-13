Ext.regModel('TollOperators',{
	fields: [{name:'tolloperator'},
			{name: 'tollperday'},
			{name:'avgtoll'}]	
});

var TollsData = new Ext.data.Store({
	model: 'TollOperators',
	storeId: 'tollops',
	data: [{
		tolloperator: 'Fast Pass', tollperday: '3$', avgtoll: '4$'
	}]	
});