Ext.setup({
	onReady: function(){
		console.log('page is setup');
		Ext.util.JSONP.request({
	      //url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/AccountDetails',
	      url: 'http://localhost:6001/testing/getAccountDetailsJsonp.jsp',
	      /*params: {
	      	username: 'deepu'
	      },*/
	      //callbackKey: 'parseResponse',
	      callbackKey: 'callback',
	      callback: function(result) {
	      	console.log('i am from callback');
	      	var pay_details=result.response.paymentDetails;
	      	if(pay_details)
	      	{
	      		console.log(pay_details.cardNumber);
	      		console.log(pay_details.expDate);
	      		console.log(pay_details.cardType);
	      		console.log(pay_details.bankAccount);
	      	}
	      }
	   	});
	   	 	
	   	var panel=new Ext.Panel({
	 		fullscreen: 'true',
	 		cardSwitchAnimation: 'slide',
	 		html: 'Fetching Account Details!!'  
	   	});
	}
});

function parseResponse(result)
{
	console.log('got response');
	console.log(result);
}
