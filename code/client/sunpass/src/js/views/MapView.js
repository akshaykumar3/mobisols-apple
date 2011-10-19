gtp.tabs.MapView = {
	title: 'Map',
	id: 'mappanel',
	xtype: 'map',
	//useCurrentLocation: true,
	// if useCurrentLocation is set, By default map centers around palo alto if location is not fetched.
	// If u want to control centering the map donot set the useCurrentLocation set to true.
	mapOptions: {
		//center: google.maps ? new google.maps.LatLng(32.95008700,-117.10962200) : null,
		zoom: 8
	},
	cls: 'card5',
	iconCls: 'MapIcon',
	listeners: {
		maprender: function(comp, map) {
			// Fetch tolldetails list
			gtp.getTolls();

		},
		centerchange: function(comp, map, center) {
			// Update current location.
			//gtp.geo.updateLocation();
		}
	}
};