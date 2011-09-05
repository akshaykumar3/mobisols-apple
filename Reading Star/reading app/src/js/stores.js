var usersList = new Ext.data.Store({
	model: 'Users',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	},
	data: [{
			name:'raghu'
		},
		{
			name:'pradeep'
		}]
});

/*var storiesList = new Ext.data.Store({
	model: 'Stories',
	sorters: 'reg',
	getGroupString : function(record) {
		return record.get('reg')[0];
	},
	data: [{
		name: 'Story1',
		noOfChapters:2,
		chapters:[{
				name : 'chapter1',
				content:'fashflaflka'
			},
			{
				name: 'chapter2',
				content:'f;lasjf;aj;f'
			}]
		},
		{
		name: 'Story2',
		noOfChapters:2,
		chapters:[{
				name : 'chapter1',
				content:'fashflaflka'
			},
			{
				name: 'chapter2',
				content:'f;lasjf;aj;f'
			}]
		}]
});
*/
var chaptersStore = new Ext.data.Store({
	model: 'chapters',
	/*getGroupString : function(record) {
        return record.get('name')[0];
    },*/
	data:[{
			name : 'chapter1',
			content:'fashflaflka'
		},
		{
			name : 'chapter2',
			content:'fashflaflka'
		},
		{
			name : 'chapter3',
			content:'fashflaflka'
		}]
})