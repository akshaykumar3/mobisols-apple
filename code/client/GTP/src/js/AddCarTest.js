Ext.setup({
	onReady: function(){
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/SimpleAppRegistration',
			params: {
				json: Ext.encode({
					registration: '52937',
					state: 'AP',
					type: '4-wheeler',
					isActive: 'N',
					startDate: 'Jan 12, 2011 12:20:30 AM',
					endDate: '',
					ownerType: 'rent',
					vehicleId: 1					
				})
			},
			success: function(response){
				console.log('Added a new car');
				console.log(response.responseText);
				Ext.getCmp('target').setValue(response.responseText);	
			},
			failure: function(response){
				console.log('Adding a new car failed with status ='+response.status);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'Add new car test',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '100%',
				value: 'Adding Car response will go here'
			}
		});
	}
});
