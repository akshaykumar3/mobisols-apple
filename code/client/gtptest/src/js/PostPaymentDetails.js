Ext.setup({
	onReady: function(){
		
		var reqobj={
			"cardNumber":"xxxxxxxxxxx1234",
			"expDate":"Jun 11,2011 4:17:31PM",
			"cardType":"mastero",
			"bankRouting":" ",
			"bankAccount":"1234567890"
		};
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6001/webservices/services/PaymentDetails',
			params: {json: Ext.encode(reqobj)},
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
			html: 'Posting Payment details list',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'Payment Details will go here'
			}
		});
	}
});
