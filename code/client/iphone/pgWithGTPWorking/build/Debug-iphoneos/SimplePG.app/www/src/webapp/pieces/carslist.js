Ext.regModel({ 'Cars', {
	fields: [
	{name: 'reg', type: 'string'}, 
	{name: 'state', type:'string'},
	{name: 'type', type:'string'}
	]
});

CarList.ListStore= new Ext.data.Store({
	model: 'Cars',
	data: [
		{ reg: "4GPB123",state:"CA",type: "sedan"},
		{ reg: "45PB123",state:"PA",type: "Truck"},
		{ reg: "456B123",state:"BA",type: "Zeep"}
	]
});

