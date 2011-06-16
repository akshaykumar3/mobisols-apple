Ext.regModel('Cars', {
    fields: ['reg','state','type']
});

var carsList = new Ext.data.Store({
    model: 'Cars',
    sorters: 'reg',
    getGroupString : function(record) {
        return record.get('reg')[0];
    },
    data: [
    	    {reg: '4GPB522', state: 'CA',type:'Sedan'},
        {reg: '984TTR2', state: 'TX',type:'Trailer'},
        {reg: 'IZZONE', state: 'CA',type:'RV-2axle'},
        {reg: 'SHISM', state: 'CA',type:'Truck'}
      
    ]
});
