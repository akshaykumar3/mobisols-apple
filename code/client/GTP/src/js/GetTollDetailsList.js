Ext.setup({
	onReady: function(){
		
		var reqobj={
				latitude1: 34.83660702062764,
				longitude1: -113.78949585253906,
				latitude2: 31.94776694234097,
				longitude2: -120.82074585253906
			};
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/TollDetailsList',
			//url: 'http:/mbtest.dyndns.dk:6004/com.mobisols.tollpayments.mockwebservices/services/TollDetailsList',
			params: {json: Ext.encode(reqobj)},
			disableCaching: false,
   			method: 'GET',
			success: function(response){
				console.log(response.responseText);
				var obj=Ext.decode(response.responseText);
				Ext.getCmp('target').setValue(obj.response.tollDetails);
				console.log(obj);
			},
			failure: function(response) {
  				console.log('Failure with status code ' + response.status);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'fetching toll details list',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'Toll Details will go here'
			}
		});
	}
});
