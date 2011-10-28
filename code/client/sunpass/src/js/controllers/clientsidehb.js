gtp.clientsidehb= function() {
	this.avgspeed=75;
	this.timefactor=2;
	this.sessionid=1;
	//gtp.loop();
	this.geo.updateLocation();
};

gtp.getTolls= function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
		success: function(response){
			
			var resobj=Ext.decode(response.responseText);
			gtp.tolls=resobj.response.tollDetailsList;
			var iconpath,markertitle;
			
			// Inserts all the tolls into the datastore.
			for(var i=0;i<gtp.tolls.length;i++) {
				tolldetails.insert(0,Ext.ModelMgr.create({
					latitude: gtp.tolls[i].latitude,
					longitude: gtp.tolls[i].longitude,
					tollid: i+1,
					covered: gtp.tolls[i].isCovered=='Y' ? true: false,
					description: gtp.tolls[i].tollOperator
				},'Tolls'));
			}
			
			for(var i=0; i<gtp.tolls.length; i++) 
			{
				if(gtp.tolls[i].isCovered=='Y')
				{
					iconpath='resources/images/Covered_toll.png';
					markertitle=gtp.tolls[i].tollOperator;
				}
				else
				{
					iconpath='resources/images/Uncovered_toll.png';
					markertitle=gtp.tolls[i].tollOperator;
				}
				
				gtp.tollMarkers[i]=new google.maps.Marker({
					position: new google.maps.LatLng(gtp.tolls[i].latitude,gtp.tolls[i].longitude),
					title: markertitle,
					icon: iconpath,
					map: Ext.getCmp('mappanel').map,
					html: gtp.tolls[i].tollOperator+'<br/>Price: $1<br/>Avg Price: $2'
				});
			}
			
			gtp.infoWindow= new google.maps.InfoWindow({
				content: "Toll Gate here"
			});
			
			for(var i=0; i<gtp.tolls.length; i++)
			{
				var marker = gtp.tollMarkers[i];
				google.maps.event.addListener(marker,'click',function(){
					//console.log('Marker latitude '+this.getPosition().lat()+' longitude '+this.getPostion().lng());
					gtp.infoWindow.setContent(this.html);
					gtp.infoWindow.open(Ext.getCmp('mappanel').map, this);
				});	
			}
			
		},
		failure: function(response) {
			gtp.tolls=false;
			console.log('tolldetails failure with status '+response.status);
		}
	});
};

gtp.currentNTid=0;
gtp.currentSTid=0;

gtp.curlat = 34.139427;
gtp.curlon = -118.095533;

gtp.count=0;

function nextCoordinate(lat,long) {
	var nextCoord=MidPointOf(gtp.curlat,gtp.curlon,lat,long);
	var dis=CalcDistanceBetween(gtp.curlat, gtp.curlon, nextCoord._lat, nextCoord._lon);
	if( dis < 2) {
		console.log('Client is with in the proximity of the toll ');
	}
	gtp.curlat=nextCoord._lat;
	gtp.curlon=nextCoord._lon;
	console.log('mid point is '+gtp.curlat+' '+gtp.curlon);
};

gtp.loop= function() {
	//if(gtp.tolls && gtp.geo.latitude ) {
	if(gtp.tolls && gtp.curlat && gtp.curlon && gtp.isAppEnabled && gtp.count < 15) {
		gtp.count++;
		console.log('i am from gtp.loop');
			
		var mindis=1000000;
		var nearestTollLat,nearestTollLong;
		var curLat=gtp.curlat;//gtp.geo.latitude;
		var curLon=gtp.curlon;//gtp.geo.longitude;
		
		for(var i=0; i<gtp.tolls.length; i++){
			var dis = CalcDistanceBetween(curLat, curLon, gtp.tolls[i].latitude, gtp.tolls[i].longitude);
			if(dis < mindis) {
				nearestTollLat=gtp.tolls[i].latitude;
				nearestTollLong=gtp.tolls[i].longitude;
				mindis=dis;
				gtp.currenNTid=i;
			}
		}
		
		console.log('min distance is '+mindis);
		console.log('nearest toll is '+nearestTollLat+' '+nearestTollLong);
		console.log('gtp.currentNTid '+gtp.currentNTid);
		
		var gslhb=gtp.stores.LogHeartBeat;
		if(gtp.currentSTid) {
			gtp.currentSTid=gslhb.getAt(gslhb.findExact('sessionid',gtp.sessionid)).get('tollid');
			if(gtp.currentNTid!=gtp.currentSTid) {
				gtp.sessionid++;
			}
		}
		
		/*
		 if((mindis * 1000) < 100) {
			gtp.sessionid++;
		} 
		*/
		
		if(gslhb.data.length>9) {
			var tsid=gslhb.getAt(0).get('sessionid');
			var stid=gslhb.getAt(0).get('tollid');
			var sidchange=false;
			var tidchange=false;
			for(i=1; i<10; i++) {
				if(gslhb.getAt(i).get('sessionid') != tsid) {
					sidchange=true;
					break;
				}
			}
			for(i=1; i<10; i++) {
				if(gslhb.getAt(i).get('tollid') != stid ) {
					tidchange=true;
					break;
				}
			}
			if(!sidchange && !tidchange) {
				// Examine the distances from the toll
				var afterCrossingRise=false;
				var beforeCrossingFall=false;
				var crossingDistance,crossingDistanceNext;
				var previousDistance=gslhb.getAt(0).get('distance');
				var currentDistance=0;
				var i;
				for(i=1; i<10; i++) {
					
					if(currentDistance)
						previousDistance=currentDistance;
					
					currentDistance=gslhb.getAt(i).get('distance');
					
					if(!afterCrossingRise) {
						if(currentDistance < previousDistance ) {
							afterCrossingRise = true;
							continue;
						}
					}
					
					if ((currentDistance < previousDistance) && !beforeCrossingFall && afterCrossingRise)
						continue;
					
					if(!beforeCrossingFall) {
						if (currentDistance >= previousDistance) {
							crossingDistance=gslhb.getAt(i-1).get('distance');
							crossingDistanceNext=gslhb.getAt(i).get('distance');
							continue;
						}
					}
					
					if((currentDistance > previousDistance) && beforeCrossingFall && afterCrossingRise)
						continue;
					
					break;
				}
				
				if(i==10 && afterCrossingRise && beforeCrossingFall && ((crossingDistance < 100) || (crossingDistanceNext < 100)) )
				{
					Ext.Msg.alert('Toll is crossed');
					console.log('toll is crossed');
					gtp.sessionid++;
				}
			}
		}
		
		gslhb.insert(0,Ext.ModelMgr.create({
			sessionid: gtp.sessionid,
			tollid: gtp.currentNTid,
			distance: mindis
		},'HeartBeatLog'));
		
		gtp.currentSTid=gtp.sessionid;
		
		var timeToTravel= (mindis * 1000) / (gtp.avgspeed * 5 / 18); 
		console.log('Time for next heartbeat '+timeToTravel);
		setTimeout("gtp.loop()", (timeToTravel/gtp.timefactor) * 1000);
		
		// Fetch Current Location
		nextCoordinate(nearestTollLat, nearestTollLong);
	}
	else if(!gtp.curlat && !gtp.curlong) {
		gtp.geo.updateLocation();
	}
};