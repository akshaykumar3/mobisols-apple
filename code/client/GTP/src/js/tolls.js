Ext.regModel('Tolls',{
	fields: [{name:'latitude'},
			{name:'longitude'},
			{name:'covered'},
			{name:'description'},
			{name:'price'},
			{name:'url'}]
});

var tolldetails=new Ext.data.Store({
		model: 'Tolls',
		data: [{
			 latitude: 37.49885,
			 longitude: -122.198452,
			 covered: true,
			 description: "illinois entry toll road",
			 price: '$1',
			 url: 'www.toll1.com'
		},{
			 latitude: 37.42980,
			 longitude: -122.210674,
			 covered: false,
			 description: "illinois exit toll road",
			 price: '$2',
			 url: 'www.toll2.com'
		},{
			 latitude: 37.48750,
			 longitude: -122.138523,
			 covered: true,
			 description: 'toll no 3',
			 price: '$3',
			 url: 'www.toll3.com'
		}]
});
