var count=0;
var ts1,ts2;
var retvalue;
		
function requestHeartBeat(){
	console.log('heart beat function invoked');
	
	geo.updateLocation();
	/*--- gets geolocation --
	 * -- fires location update event if gps location is correctly found  
	 * -- fires location error event if not correctly found or  
	 * -- some internal error occurred in finding the geolocation
	 * -- gotNewLocation is set to true if succeded..
	 */ 
	
	/*... if update succeeds send a request to server for next heart beat .....
	 * ... else trigger the current function after some interval of time ....
	 * .. Currently the delay i have taken is five seconds.. 
	 */
	
	if(gotNewLocation && (geo.latitude || geo.longitude))
	{	
		var request_jsobject= {
			latitude: geo.latitude,
			longitude: geo.longitude,
			direction: 0,
			timestamp: new Date()
		}
		
		// works only in same domain... 
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/com.mobisols.tollpayments.webservices/services/HeartBeat',
			params: { json: Ext.encode(request_jsobject)},
			success: function(response){
				console.log('got heartbeat');
				console.log(response.responseText);
				var resobj=Ext.decode(response.responseText);
				var estimatedDelay;
				nextTimeStamp= resobj.timestamp;
				// --- Need to be coded yet -----
				if(resobj.status)
				Ext.Msg.alert('U have just crossed a toll');
				
				//Calculate the next timestamp to call this function.. 
				// trigger this function
				setTimeout("requestHeartBeat()",estimatedDelay); 
			},
			failure: function(response){
				console.log('heart beat request failed with status ='+response.status);
				setTimeout("requestHeartBeat()",10000);
			}
		});
	}
	else
	{
		/*.... request for heart beat after some interval of time ....
		 * -- the timeout can be cleared using the variable returned --- 
		 */
		if(count < 10)
		{
			count++;
			retvalue = setTimeout("requestHeartBeat()",10000);
		}
	}	
}
