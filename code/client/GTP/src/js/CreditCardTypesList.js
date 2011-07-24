Ext.setup({
	onReady: function(){
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/CcTypeList',
			params: {
				
			},
			method: 'GET',
			success: function(response){
				console.log(response.responseText);
				Ext.getCmp('target').setValue(response.responseText);
			},
			failure: function(response) {
  				console.log('Failure with status code ' + response.status);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'Credit Card Types list',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'Response will go here'
			}
		});
	}
});
