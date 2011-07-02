Ext.setup({
	onReady: function(){
		
		var reqobj={
				latitude1: 21.0,
				latitude2: 22.0,
				longitude1: 23.0,
				longitude2:24.0
			};
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6001/webservices/services/TollDetailsList',
			params: {json: Ext.encode(reqobj)},
			disableCaching: false,
   			method: 'GET',
			callbackKey: 'callback',
			success: function(response){
				console.log(response.responseText);
				var obj=Ext.decode(response.responseText);
				console.log(obj);
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
