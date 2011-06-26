
var gotNewLocation=true;
var delay=5000;
var ts1,ts2;

		

var geo = new Ext.util.GeoLocation({
		    autoUpdate: false,
		    listeners: {
		        locationupdate: function (geo) {
		        	console.log('Got new location');
		            console.log('New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
		            gotNewLocation = true;
		        },
		        locationerror: function (   geo,
		                                    bTimeout, 
		                                    bPermissionDenied, 
		                                    bLocationUnavailable, 
		                                    message) {
		            if(bTimeout){
		            	console.log('timeout occurred');
		                //Ext.Msg.alert('Timeout occurred.');
		            }
		            else{
		            	console.log('error finding gps location');
		            	console.log('error message: '+message);
		                //Ext.Msg.alert('Error message: '+ message); 
		            }
		            gotNewLocation=false;
		        }
		    }
		});
		
geo.updateLocation();
		
/* --- this function is invoked once the page is rendered ----
 * 
 */	
		
function requestHeartBeat(){
	console.log('heart beat function invoked');
	
	geo.updateLocation();
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
	Ext.getCmp('mappanel').update({
		latitude: geo.latitude,
		longitude: geo.longitude
	});
	
	var mapcmp=Ext.getCmp('mappanel');
	//mapcmp.geo.update();
	/*... if update succeeds send a request to server for next heart beat .....
	 * ... else trigger the current function after some interval of time ....
	 * .. Currently the delay i have taken is five seconds.. 
	 */
	
	if(gotNewLocation)
	{
		mylocation_marker.setPosition(new google.maps.LatLng(geo.latitude,geo.longitude));
		var request_jsobject= {
			latitude: geo.latitude,
			longitude: geo.longitude,
			direction: 0,
			timestamp: new Date()
		}
		
		// works only in same domain... 
		Ext.Ajax.request({
			url: 'http://mbtest.dyndns.dk:6001/webservices/services/HeartBeat',
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
		delay=5000;
	}
	else
	{
		/*.... request for heart beat after some interval of time ....
		 * -- the timeout can be cleared using the variable returned --- 
		 */
		var retvalue = setTimeout("requestHeartBeat()",delay);
		delay=delay*2;
	}	
}
