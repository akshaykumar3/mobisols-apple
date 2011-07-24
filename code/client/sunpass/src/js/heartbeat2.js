var count=0,delay=10000;

function requestHeartBeat(){
	console.log('heart beat function invoked');
	console.log('IsAppEnabled? '+gtp.isAppEnabled);
	if(gtp.isAppEnabled)//gtp.geo.latitude || gtp.geo.longitude)
	{
		var request_jsobject= {
			deviceId: '123456789',//gtp.uuid,
			deviceType: 'iphone',
			timeStamp: 'Jul 12, 2011 10:40:25 PM',//new Date(),
			latitude: getGeoLatitude(),
			longitude: getGeoLongitude(),
			angle: 0,
			vmlType: 'test',
			tollSessionId: ''
		}
		
		// works only in same domain... 
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
				estimatedDelay=resobj.response.timeInterval
				console.log('Estimated TimeInterval is: '+estimatedDelay);
				
				if(resobj.response.status=='success')
				Ext.Msg.alert('U have crossed a toll <br/> deducted 1$ from ur account');
				
				//Calculate the next timestamp to call this function.. 
				// trigger this function
				setTimeout("requestHeartBeat()",estimatedDelay*1000); 
			},
			failure: function(response){
				console.log('heart beat request failed with status ='+response.status);
				if(count < 5)
				{
					setTimeout("requestHeartBeat()",delay);
					count++;
					delay=delay+5000;
				}
			}
		});
	}
	else
	{
		console.log('i am from else loop');
		/*.... request for heart beat after some interval of time ....
		 * -- the timeout can be cleared using the variable returned --- 
		 */
		if(count < 5)
		{
			retvalue = setTimeout("requestHeartBeat()",delay);
			delay=delay+5000;
			count++;
		}
	}	
}


function getGeoLatitude() {
	if(gtp.geo.latitude)
	return gtp.geo.latitude;
	else
	return 31.2234;
}

function getGeoLongitude() {
	if(gtp.geo.longitude)
	return gtp.geo.longitude;
	else
	return -122.1213;
}
