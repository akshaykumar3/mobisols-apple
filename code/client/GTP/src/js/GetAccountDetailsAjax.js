Ext.setup({
	onReady: function(){
		console.log('page is setup');
		//Ext.lib.Ajax.useDefaultXhrHeader = false;
		Ext.Ajax.defaultHeaders = {
		    'Access-Control-Allow-Origin': '*',
			'Access-Control-Allow-Origin': 'http://mbtest.dyndns.com:6001'
		};

		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6003/webservices/services/AccountDetails',
			method: "GET",
			params: {
				user_name: 'harish@mobisols.com',
				client_id: 1
			},
	    	success: function(response){
	      		console.log(response.responseText);
	      		var obj=Ext.decode(response.responseText);
	      		console.log(obj);
	      		console.log('size is '+obj.response.tollPayments.length);
	    	},
	      	failure: function(response) {
  				console.log('failure with status code ' + response.status);
			}
	   	});
	   	 	
	   	var panel=new Ext.Panel({
	 		fullscreen: 'true',
	 		cardSwitchAnimation: 'slide',
	 		html: 'Fetching Account Details using ajax!!'  
	   	});
	}
})
