gtp.controllers.fetch = Ext.regController("get",{
	configuration: function(){
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','clientconfig')).get('url'),
			method: 'GET',
			params: {
				json: Ext.encode({				
					componentName: 'server',
					version: '1.0'// This will be hard coded value on the client side.
				})
			},
			success: function(response) {
				var obj = Ext.decode(response.responseText);
				gtp.cfg = obj.response;
		      	gtp.showNotifications(obj.response.notifications);
		      	gtp.parse(obj.response.commands);
			},
			failure: function(response) {
				console.log("Client config failure with status "+response.status);
			}
		});
	},
	
	cctypeslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','cctypes')).get('url'),
			success: function(response) {
				var resobj=Ext.decode(response.responseText);
				var ccl=resobj.response.ccTypeList;
				var ctsfid=Ext.getCmp('cardtype');
				for(var i=0; i<ccl.length; i++) {
					ctsfid.setOptions([{
						text: ccl[i].name,
						value: ccl[i].name
					}],true);
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				console.log('Fetching CCtypelist failure with status '+response.status);
				gtp.log('Fetching CCtypelist failure with status '+response.status);
			}
		});
	},
	
	vehicletypeslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','vehicletypes')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				var vtl = resobj.response.vehicleTypeList;
				var vtsfid = Ext.getCmp('tp'); 
				for(var i=0; i<vtl.length; i++) {
					vtsfid.setOptions([{
						text: vtl[i].name,
						value: vtl[i].name
					}],true);
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.log('Fetching Sevices list failed');
			}
		});
	},
	
	serviceplanslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','serviceplans')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				var spl = resobj.response.servicePlanList;
				var spsfid = Ext.getCmp('serviceplan'); 
				for(var i=0; i<spl.length; i++) {
					spsfid.setOptions([{
						text: spl[i].name,
						value: spl[i].name
					}],true);
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				console.log('Fetching SevicePlans list failed with status'+response.status);
				gtp.log('Fetching SevicePlans list failed with status'+response.status);
			}
		});		
	}
});