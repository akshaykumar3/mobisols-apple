Ext.setup({
	onReady: function(){
		
		Ext.Ajax.request({
			url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/PaymentDetails',
			params: {json: Ext.encode({
				latitude:21.0,
				longitude:21.0
			})},
			disableCaching: false,
   			success: function(response){
				console.log(response.responseText);
				var obj=Ext.decode(response.responseText);
				console.log(obj);
				Ext.getCmp('target').setValue(obj.response.description);
			},
			failure: function(response) {
  				console.log('Failure with status code ' + response.status);
			},
			callback: function(response){
				console.log(response.responseText);
				var obj=Ext.decode(response.responseText);
				console.log(obj);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'Paying for the toll',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'Payment is done for the toll'
			}
		});
	}
});
