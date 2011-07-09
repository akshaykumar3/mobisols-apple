Ext.setup({
	onReady: function(){
		
		Ext.Ajax.request({
			url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AddBalance',
			params: {
				json: Ext.encode({
					amount: 30,
					description: 'initial deposit'
				})				
			},
			success: function(response){
				console.log('success');
				console.log(response.responseText);
			},
			failure: function(response){
				console.log('Failed with status'+response.status);
			}
		});
	}
});
