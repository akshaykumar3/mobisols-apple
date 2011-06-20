Ext.setup({
	onReady: function(){
		console.log('page is setup');
		//Ext.lib.Ajax.useDefaultXhrHeader = false;
		Ext.Ajax.defaultHeaders = {
		    'Access-Control-Allow-Origin': '*',
			'Access-Control-Allow-Origin': 'http://localhost:6001'
		};

		Ext.util.JSONP.request({
			url: 'http://localhost:6001/testing/jsonpService.jsp?url=com.mobisols.tollpayments.mockwebservices/services/AccountDetails&action=GET',
			callbackKey: 'callback',
			method: "GET",
	    	success: function(response){
	      		console.log(response.responseText);
	      		var obj=Ext.decode(response.responseText);
	      		console.log(obj);
	    	},
	      	failure: function(response) {
  				console.log('server-side failure with status code ' + response.status);
			},
			callback: function(opt,succes,res){
				console.log(res);
				console.log('i am from callback');
			}
	   	});
	   	 	
	   	var panel=new Ext.Panel({
	 		fullscreen: 'true',
	 		cardSwitchAnimation: 'slide',
	 		html: 'Fetching Account Details using ajax!!'  
	   	});
	}
})