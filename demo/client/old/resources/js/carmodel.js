Ext.regModel('Cars', {
    fields: [
    	{name: 'reg'},
    	{name: 'state'},
    	{name: 'type'}
    ]
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
    ]/*,
    listeners: {
    	load: function(){
    			carsList.data.each(function(record){
    				console.log(record.get('reg'));
    			});
    	}
    }*/
});
