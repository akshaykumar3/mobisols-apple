Ext.regModel('Tolls',{
	fields: ['latitude','longitude','covered','description','price','url']
});

var tolldetails=new Ext.data.Store({
		model: 'Tolls',
		data: [
			{ latitude: 37.4419, longitude: -122.1419, covered: true, description: "illinois entry toll road", price: '$2', url: 'www.toll1.com'},
			{ latitude: 37,4456, longitude: -122.1425, covered: false, description: "illinois exit toll road", price: '$2', url: 'www.toll2.com'},
			{ latitude: 37.4463, longitude: -122.1435, covered: true, description: 'toll no 3', price: '$3', url: 'www.toll3.com'},
			{ latitude: 37.4500, longitude: -122.1446, covered: true, description: 'toll no 4', price: '$2', url: 'www.toll4.com'}
		]
});
