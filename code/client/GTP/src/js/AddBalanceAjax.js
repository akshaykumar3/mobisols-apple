Ext.setup({
	onReady: function(){
		Ext.Ajax.request({
			url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AddBalance',
			params: {
				amount: 10,
				description: 'initial deposit'
			},
			success: function(response){
				console.log(response.responseText);
			},
			callback: function(){
				console.log('i am inside callback');
			}
		});
	}
});
