Ext.Ajax.on('requestexception', handleAjaxRequestException);
Ext.Ajax.on('requestcomplete', handleAjaxRequestComplete);

function handleAjaxRequestException(connection, response, options) {
	console.log( 'i am from request exception handle');
	// Disable the loading mask.
	if( gtp && gtp.tabpanel) {
		gtp.tabpanel.setLoading(false);
	}
	
};

function handleAjaxRequestComplete(connection, response, options) {
	
};