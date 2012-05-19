// Model for toll details.
gtp.models.Toll = Ext.regModel('Tolls',{
	fields: [{
		name: 'latitude',
		type: 'float'
	},{
		name: 'longitude',
		type: 'float'
	},{
		name: 'covered',
		type: 'boolean'
	},{
		name: 'description',
		type: 'string'
	},{
		name: 'price',
		type: 'float'
	},{
		name: 'url',
		type: 'string'
	},{
		name: 'tollid',
		type: 'int'
	}]
});

