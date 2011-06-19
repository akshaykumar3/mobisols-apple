Ext.setup({
	onReady: function(){
		console.log('page is setup');
		Ext.Ajax.request({
	    	url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AccountDetails',
	    	success: function(response){
	      		console.log(response);
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
