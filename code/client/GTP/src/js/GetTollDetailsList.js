Ext.setup({
	onReady: function(){
		Ext.util.JSONP.request({
			url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/TollDetailsList',
			params: {
				latitude1: 21.0,
				latitude2: 22.0,
				longitude1: 23.0,
				longitude2:24.0
			},
			callbackKey: 'callback',
			callback: function(response){
				console.log(response);
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
