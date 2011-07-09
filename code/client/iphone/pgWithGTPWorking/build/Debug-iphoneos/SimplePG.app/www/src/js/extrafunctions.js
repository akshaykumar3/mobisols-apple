function getLocation(){
	var reqobj;
	if(geo.latitude || geo.longitude)
	{
		reqobj={
			latitude: geo.latitude,
			longitude: geo.longitude
		}
	}
	else
	{
		reqobj={
			latitude: 32.1252,
			longitude: -121.13412
		}
	}
	Ext.Ajax.request({
		url: 'http://localhost:6001/com.mobisols.tollpayments.mockwebservices/services/GetLocation',
		params: {
			json: Ext.encode(reqobj)
		},
		success: function(response){
			console.log(response.responseText);
			var tempobj=Ext.decode(response.responseText);
			return tempobj.city+','+tempobj.state;
		},
		failure: function(response){
			console.log('getlocation failure with status: '+response.status);
			return 'uncovered'
		}
	})
}

