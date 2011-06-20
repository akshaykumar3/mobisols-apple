Ext.regModel('PaidTolls', {
    fields: [{name:'date'},{name: 'amount'},{name: 'location'},{name: 'reg'}]
});

var paidTolls = new Ext.data.Store({
    model: 'PaidTolls',
    sorters: 'reg',
    getGroupString : function(record) {
        return record.get('reg')[0];
    },
    data: [
    	    {date:'2011-01-01', amount:'$2.50', location:'I-15N, Escondido', reg: '4GPB522'},
    	    {date:'2011-01-15', amount:'$1.50', location:'76W, Long beach', reg: '4GPB522'},
    	    {date:'2011-01-18', amount:'$5.00', location:'I-95S, Stamford', reg: '984TTR2'},
    	    {date:'2011-02-12', amount:'$8.50', location:'George washington bridge, NY', reg: '984TTR2'},
    	    {date:'2011-02-28', amount:'$0.50', location:'1-15S, Escondido', reg: '4GPB522'},
    	    {date:'2011-03-11', amount:'$2.50', location:'1-15N, Escondido', reg: 'SHISM'}
    ]
});
