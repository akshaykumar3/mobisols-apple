Ext.setup({
	onReady: function(){
		
		var request_jsobject= {
			latitude: 37.1345,
			longitude: -122.34565,
			angle: 0,
			timeStamp: new Date(),
			vmlType: 'heartbeat'
		}
		
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/HeartBeat',
			params: {
				user_name: 'harish@mobisols.com',
				json: Ext.encode(request_jsobject)
			},
			success: function(response){
				console.log('got heartbeat');
				console.log(response.responseText);
				var resobj=Ext.decode(response.responseText);
				var estimatedDelay;
				nextTimeStamp= resobj.timestamp;
				Ext.getCmp('target').setValue(response.responseText);
				// --- Need to be coded yet -----
				if(resobj.status)
				Ext.Msg.alert('U have just crossed a toll');
				
				//Calculate the next timestamp to call this function.. 
				// trigger this function
			},
			failure: function(response){
				console.log('heart beat request failed with status ='+response.status);
			}
		});
		
		var panel=new Ext.Panel({
			fullscreen: true,
			html: 'Heart Beat Test',
			items: {
				xtype: 'textfield',
				id: 'target',
				width: '50%',
				value: 'HeartBeat Response will go here'
			}
		});
	}
});
