Ext.regModel('Tolls',{
	fields: ['latitude','longitude','covered','description','price','url']
});


	var markerDetails: [
			{ latitude: 37.4419, longitude: -122.1419, covered: true, description: "illinois entry toll road", price: '$2'},
			{ latitude: 37,4456, longitude: -122.1425, covered: false, description: "illinois exit toll road", price: '$2'},
			{ latitude: 37.4463, longitude: -122.1435, covered: true, description: 'toll no 3', price: '$3'},
			{ latitude: 37.4500, longitude: -122.1446, covered: true, description: 'toll no 4', price: '$2'}
		];

		var markers[markerDetails.length()];
		var latlongs[markerDetails.length()];
		for(var i=0; i< markerDetails.length(); i++)
		{
			latlongs[i]=new google.maps.latlng(markerDetails[i].latitude, markerDetails[i].longitude);
			markers[i]=new google.maps.Marker({
				position: latlongs[i],
				map: 'mappanel'	
			});
		}
		