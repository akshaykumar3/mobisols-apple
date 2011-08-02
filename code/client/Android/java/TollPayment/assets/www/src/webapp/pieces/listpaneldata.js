Ext.regModel('Cars', {
    fields: [
		{name: 'reg'},
		{name: 'state'},
		{name: 'cartype'}
	]
});

ListPanel.ListStore = new Ext.data.Store({
    model: 'Cars',
    sorters: 'state',
    getGroupString : function(record) {
        return record.get('state')[0];
    },
    data: [
        { reg: "41PA2W",       state: "DC" ,		cartype: "A"},
        { reg: "12CP3R",       state: "IL" ,			cartype: "B"},
        { reg: "42BWRS",      state: "SF"	,		cartype: "C"},
        { reg: "76NB35",       state: "CA" ,		cartype: "D"}
    ]
});

