Ext.setup({
	onReady: function(){
		Ext.Ajax.defaultHeaders = {
		    'Access-Control-Allow-Origin': '*',
			'Access-Control-Allow-Origin': 'http://localhost:6001'
		};

		Ext.Ajax.request({
			url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AddBalance',
			params: {
				amount: 10,
				description: 'initial deposit'
			},
			success: function(response){
				console.log('success');
				console.log(response.responseText);
			},
			failure: function(response){
				console.log(response.responseText);
			}
		});
	}
});
