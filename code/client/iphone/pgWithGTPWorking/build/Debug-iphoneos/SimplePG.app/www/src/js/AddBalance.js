Ext.setup({
	onReady: function(){
		console.log('page is setup');
		//Ext.util.JSON.decode({"name": "pradeep"});
		Ext.util.JSONP.request({
			url: 'http://www.worldweatheronline.com/feed/weather.ashx',
			callbackKey: 'callback',
			params: {
				key: '23f6a0ab24185952101705',
				format: 'json',
				num_of_days: 5,
				q: '94301'
			},
			
			callback: function(result) {
				var weather_response= result.data.weather;
				console.log(weather_response);	
			}
		});
		/*var request=Ext.util.JSONP.request({
	      url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AddBalance',
	      params: {
	      	amount: 30,
	      	description: 'add the amount'
	      }
	   	});*/
	   	 	
	   	var panel=new Ext.Panel({
	 		fullscreen: 'true',
	 		cardSwitchAnimation: 'slide',
	 		html: 'Adding balance'  
	   	});
	}
})
