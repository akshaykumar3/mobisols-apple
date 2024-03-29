gtp.views.MapView = {
	title: 'Map',
	id: 'mappanel',
	xtype: 'map',
	//useCurrentLocation: true,
	// if useCurrentLocation is set, By default map centers around palo alto if location is not fetched.
	// If u want to control centering the map donot set the useCurrentLocation set to true.
	mapOptions: {
		//center: google.maps ? new google.maps.LatLng(32.95008700,-117.10962200) : null,
		zoom: 10
	},
	cls: 'card5',
	iconCls: 'MapIcon',
	listeners: {
		maprender: function(comp, map) {
			// map is rendered. Render toll locations markers now..
			if(gtp.geo)
			gtp.geo.updateLocation();
		},
		centerchange: function(comp, map, center) {
			// Update current location.
			//gtp.geo.updateLocation();
		}
	}
};