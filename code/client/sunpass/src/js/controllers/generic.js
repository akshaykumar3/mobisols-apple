Ext.Ajax.on('requestexception', handleAjaxRequestException);
Ext.Ajax.on('requestcomplete', handleAjaxRequestComplete);

function handleAjaxRequestException(connection, response, options) {
	console.log( 'i am from request exception handle');
	// Disable the loading mask.
	if( gtp && gtp.tabpanel) {
		gtp.tabpanel.setLoading(false);
	}
	
};

function handleAjaxRequestComplete(connection, response, options) {
	
};

gtp.getTolls= function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
		success: function(response){
			
			var resobj=Ext.decode(response.responseText);
			if(resobj.status == 'success') {
				gtp.tolls=resobj.response.tollDetailsList;
				var iconpath,markertitle;

	            // invoke plugin to store toll details natively.
				if(Ext.is.iPhone) {
		            var tdp = window.plugins.TollDetailsPlugin;
		            tdp.setDetails(Ext.encode(gtp.tolls));
				}
				else if(Ext.is.Android) {
					window.plugins.TollDetailsPlugin.setValue(gtp.tolls,function(){},function(){});
				}
				
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
					google.maps.event.addListener(marker,'mousedown',function(){
						//console.log('Marker latitude '+this.getPosition().lat()+' longitude '+this.getPostion().lng());
						gtp.infoWindow.setContent(this.html);
						gtp.infoWindow.open(Ext.getCmp('mappanel').map, this);
					});	
				}
			} else {
				gtp.tolls = false;
			}
		},
		failure: function(response) {
			gtp.tolls=false;
			console.log('tolldetails failure with status '+response.status);
		}
	});
};

gtp.getGeoLatitude = function() {
	if(gtp.geo.latitude) {
		return gtp.geo.latitude;
	} else if(Ext.getCmp('mappanel').map) {
		return Ext.getCmp('mappanel').map.getCenter().lat();
	} else {
		return 0;
	}
};

gtp.getGeoLongitude = function() {
	if(gtp.geo.longitude) {
		return gtp.geo.longitude;
	} else if(Ext.getCmp('mappanel').map) {
		return Ext.getCmp('mappanel').map.getCenter().lng();
	} else {
		return 0;
	}
};

var hideNotify = function()
{ 
	if(gtp.notify)
		gtp.notify.hide();
};

