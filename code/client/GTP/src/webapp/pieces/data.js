CarsList.carModel=Ext.regModel('Cars', {
    fields: [
		{name: 'reg'},
		{name: 'state'},
		{name: 'cartype'},
		{name: 'startDate'},
		{name: 'endDate'}
	]
});

CarsList.ListStore = new Ext.data.Store({
    model: 'Cars',
    sorters: 'state',
    getGroupString : function(record) {
        return record.get('state')[0];
    },
    data: [
        { reg: "41PA2W",       state: "DC" ,		cartype: "A", startDate: new Date('1/10/2008'), endDate: new Date('1/10/2009')},
        { reg: "12CP3R",       state: "IL" ,			cartype: "B", startDate: new Date('1/10/2008'), endDate: new Date('1/10/2009')},
        { reg: "42BWRS",      state: "SF"	,		cartype: "C", startDate: new Date('1/10/2008'), endDate: new Date('1/10/2009')},
        { reg: "76NB35",       state: "CA" ,		cartype: "D", startDate: new Date('1/10/2008'), endDate: new Date('1/10/2009')}
    ]
});

