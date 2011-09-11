Ext.regModel('UserCarsList',{
	fields: [{
		name:'text',
		type: 'string'
	},{
		name: 'value',
		type: 'string'
	}]	
});

var userCarsList = new Ext.data.Store({
	model: 'UserCarsList',
	storeId: 'userCarsList',
	data: [{
		text: '4GB5',
		value: '4GB5'
	}]
});