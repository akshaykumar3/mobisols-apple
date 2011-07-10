var markernotset=true,count=0,delay=10000;


function requestHeartBeat(){
	console.log('heart beat function invoked');
	
	gtp.geo.updateLocation();
	/*--- gets geolocation --
	 * -- fires location update event if gps location is correctly found  
	 * -- fires location error event if not correctly found or  
	 * -- some internal error occurred in finding the geolocation
	 * -- gotNewLocation is set to true if succeded..
	 */ 
	
	/* --- Centers map to current location ---
	 * -- if error occurs in finding geo location 
	 * -- map remains in the same state as the geo values associated with geo object are not updated 
	 */	
	
	/* ... if update succeeds send a request to server for next heart beat .....
	 * ... else trigger the current function after some interval of time ....
	 * .. Currently the delay i have taken is five seconds .. 
	 */
	
	if(gtp.geo.latitude || gtp.geo.longitude)
	{
		
		var request_jsobject= {
			latitude: gtp.geo.latitude,
			longitude: gtp.geo.longitude,
			direction: 0,
			timestamp: new Date()
		}
		
		// works only in same domain... 
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6004/webservices/services/PeriodicHeartBeat',
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
		retvalue = setTimeout("requestHeartBeat()",10000);
		delay=delay+1000;
	}	
}
