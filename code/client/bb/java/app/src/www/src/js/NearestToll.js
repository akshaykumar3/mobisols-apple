Ext.setup({
	onReady: function(){
		console.log('page is setup');
		Ext.Ajax.request({
	      url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/NearestToll',
	      params: {
	      	json: Ext.encode({
	      		latitude: 23.123,
	      		longitude: 25.121
	      	})
	      },
	      success: function(result) {
	      	console.log('request success');
	      	var resobj=Ext.decode(result.responseText);
	      	console.log(result.responseText);
	      	console.log(resobj);
	      },
	      failure: function(result) {
	      	console.log('failure with status '+result.status);
	      }
	   	});
	   	 	
	   	var panel=new Ext.Panel({
	 		fullscreen: 'true',
	 		cardSwitchAnimation: 'slide',
	 		html: 'Fetching nearest toll!!'  
	   	});
	}
});

