Ext.regModel('User',{
	fields: [{
		name: 'username',
		type: 'string'
	},{
		name: 'class',
		type: 'string'
	}]
});

var userStore=new Ext.data.Store({
	model: 'User',
	proxy: {
		type: 'ajax',
		url: '/users.json',
		reader: {
			type: 'json',
			root: 'users'
		}
	}
});

userStore.load();
/*userStore.load({
	scope: this,
	callback: function(records,operation,success) {
		console.log(records);
	}
});*/
