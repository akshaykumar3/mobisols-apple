Ext.setup({
	onReady: function(){
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/SimpleAppRegistration',
			params: {
				deviceUuid: '001234198232',
				deviceType: 'iphone',
				password: 'mobisols'
			},
			success: function(response){
				console.log('Device Registered succesfully');
				console.log(response.responseText);
				Ext.getCmp('target').setValue(response.responseText);	
			},
			failure: function(response){
				console.log('Device Registration failed with status ='+response.status);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'Device Registration Test',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'Device Registration response will go here'
			}
		});
	}
});
