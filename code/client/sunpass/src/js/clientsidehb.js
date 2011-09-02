gtp.clientsidehb= function() {
	this.avgspeed=75;
	this.timefactor=2;
	this.sessionid=1;
	this.getTolls();
	this.utils.dataStore.getConfiguration();
	//this.geo.updateLocation();
};

gtp.getTolls= function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
		success: function(response){
			var resobj=Ext.decode(response.responseText);
			gtp.tolls=resobj.response.tollDetailsList;
			for(i=0;i<gtp.tolls.length;i++) {
				tolldetails.insert(0,Ext.ModelMgr.create({
					latitude: gtp.tolls[i].latitude,
					longitude: gtp.tolls[i].longitude,
					tollid: i+1,
					covered: gtp.tolls[i].isCovered=='Y' ? true: false,
					description: gtp.tolls[i].tollOperator
				},'Tolls'));
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

gtp.loop= function() {
	if(gtp.tolls && gtp.geo.latitude && gtp.cfg) {
		var mindis=1000000;
		var nearestToll;
		var currentLocation=new LatLon(gtp.geo.latitude,gtp.geo.longitude);
		for(i=0; i<gtp.tolls.length; i++){
			var tollpoint=new LatLon(gtp.tolls[i].latitude,gtp.tolls[i].longitude);
			var dis=currentLocation.distanceTo(tollpoint);
			if(dis < mindis) {
				nearestToll=tollpoint;
			}
		}
		
		var gslhb=gtp.stores.LogHeartBeat;
		gtp.currentNTid=tolldetails.getAt(tolldetails.findExact('latitude',nearestToll._lat)).get('tollid');
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
				var beforCrossingFall=false;
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
				}
				
				if(i==10 && ((crossingDistance < 100) || (crossingDistanceNext < 100)) )
					gtp.sessionid++;
			}
		}
		
		gslhb.insert(0,Ext.ModelMgr.create({
			sessionid: gtp.sessionid,
			tollid: gtp.currentNTid,
			distance: min
		},'HeartBeatLog'));
		
		gtp.currentSTid=gtp.sessionid;
		
		var timeToTravel= (mindis * 1000) / (gtp.avgspeed * 5 / 18); 
		setTimeout("gtp.loop()", (timeToTravel/gtp.timefactor) * 1000);
	}
};