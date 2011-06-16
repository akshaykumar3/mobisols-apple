Ext.regModel('CreditCard', {
    fields: ['num', 'type','expiry','cvv','address1','address2','city','state','country','zip']
});

var creditCard = new Ext.data.Store({
    model: 'CreditCard',
    sorters: 'num',
    getGroupString : function(record) {
        return record.get('num');
    },
    data: [
    	    {num:'5000400030002000', type:'Visa', expiry:'8/2012', cvv:'2201',
    	    address1:'1 Infinate loop', address2:'',
    	    city:'Cupertiono',state:'CA', zip:'95014'}
    	  ]
    	
});
