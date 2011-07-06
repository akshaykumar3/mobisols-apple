Ext.regModel('Tolls', {
	fields: ['latitude','longitude','covered','description','price','url']
});

var tolldetails=new Ext.data.Store({
	model: 'Tolls',
	data: [{
		latitude: 37.4419,
		longitude: -122.1419,
		covered: true,
		description: "illinois entry toll road",
		price: '$2',
		url: 'www.toll1.com'
	}]
});