Ext.regModel('Users', {
	fields: [{
		name: 'name',
		type: 'string'
		}]
});

/*Ext.regModel('Stories', {
	fields: [{
			name: 'name',
			type: 'string'
		},
		{
			name:'noOfChapters',
			type: 'number'
		}],
	 hasMany: {model: 'Chapter', name: 'chapters'}
});*/

Ext.regModel('chapters', {
	fields: [{
		name: 'name',
		type: 'string'
		},
		{
		name:'content',
		type:'string'
		}]
});