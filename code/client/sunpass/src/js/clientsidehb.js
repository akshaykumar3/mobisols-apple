gtp.clientsidehb= function() {
	this.getTolls();
	this.getConfiguration();
	for(i=0; i<gtp.tolls.length; i++){
		
	}
};

gtp.getConfiguration= function() {
	
};

gtp.getTolls= function() {
	Ext.Ajax.request({
		url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
		method: 'GET',
		params: {
			json: Ext.encode({
				latitude1: "",
				longitude1: "",
				latitude2: "",
				longitude2: ""
			})
		},
		success: function(response){
			var resobj=Ext.decode(response.responseText);
			gtp.tolls=resobj.response.tollDetailsList;
		}
	});
};