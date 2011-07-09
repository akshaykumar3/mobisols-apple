Ext.setup({
	onReady: function(){
		console.log('application is launched');
		var geo = new Ext.util.GeoLocation({
		    autoUpdate: false,
		    listeners: {
		        locationupdate: function (geo) {
		            Ext.Msg.alert('New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
		        },
		        locationerror: function (   geo,
		                                    bTimeout, 
		                                    bPermissionDenied, 
		                                    bLocationUnavailable, 
		                                    message) {
		            if(bTimeout){
		                Ext.Msg.alert('Timeout occurred.');
		            }
		            /*else{
		                Ext.Msg.alert('Error message: '+ message); 
		            }*/
		        }
		    }
		});
		geo.updateLocation();
		
		var panel = new Ext.Panel({
			fullscreen: true,
			layout: 'vbox',
			items: [{
				xtype: 'button',
				width: '50%',
				text: 'Get Location',
				handler: function(){
					geo.updateLocation();
					Ext.getCmp('lat').setValue(geo.latitude);
					Ext.getCmp('long').setValue(geo.longitude);
				}
			},{
				xtype: 'textfield',
				label: 'Lat',
				value: geo.latitude,
				id: 'lat'
			},{
				xtype: 'textfield',
				label: 'Long',
				value: geo.longitude,
				id: 'long'
			}]
		})
	}
})
