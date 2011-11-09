Ext.Ajax.on('requestexception', handleAjaxRequestException);
Ext.Ajax.on('requestcomplete', handleAjaxRequestComplete);

function handleAjaxRequestException(connection, response, options) {
	// Disable the loading mask.
	if( gtp && gtp.tabpanel) {
		gtp.tabpanel.setLoading(false);
	}
	
	var requestType = webServices.getAt(webServices.findExact('url', options.url)).get('service');
	gtp.log( 'Request exception in '+requestType);
		
};

function handleAjaxRequestComplete(connection, response, options) {
	
};