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
				if(obj.status == 'success') {
					gtp.cfg = obj.response;
					if(Ext.is.iPhone) {
	                    var ccp = window.plugins.ClientConfig;
	                    ccp.setClientConfig(Ext.encode(gtp.cfg));
					}
					else if(Ext.is.Android) {
						window.plugins.ClientConfigPlugin.setClientConfig(obj.response,function(result){},function(error){});
					}
				}
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
				if(resobj.status == 'success') {
					gtp.vars.fetchedCcTypesList = false;
					var ccl=resobj.response.ccTypeList;
					var ctsfid = Ext.getCmp('cardtype');
					for(var i=0; i<ccl.length; i++) {
						ctsfid.setOptions([{
							text: ccl[i].name,
							value: ccl[i].name
						}],true);
					}
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.vars.fetchedCcTypesList = false;
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
				if(resobj.status == 'success') {
					gtp.vars.fetchedVehicleTypeList = true;
					var vtl = resobj.response.vehicleTypeList;
					var vtsfid = Ext.getCmp('tp');
					if(vtsfid)
					for(var i=0; i<vtl.length; i++) {
						vtsfid.setOptions([{
							text: vtl[i].name,
							value: vtl[i].name
						}],true);
					}
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.vars.fetchedVehicleTypeList = false;
				gtp.log('Fetching Sevices list failed');
			}
		});
	},
	
	serviceplanslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','serviceplans')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				if(resobj.status == 'success') {
					gtp.vars.fetchedServicePlansList = true;
					var spl = resobj.response.servicePlanList;
					var spsfid = Ext.getCmp('serviceplan');
					if(spsfid)
					for(var i=0; i<spl.length; i++) {
						spsfid.setOptions([{
							text: spl[i].name,
							value: spl[i].name
						}],true);
					}
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.vars.fetchedServicePlansList = false;
				console.log('Fetching SevicePlans list failed with status'+response.status);
				gtp.log('Fetching SevicePlans list failed with status'+response.status);
			}
		});		
	},
	
	ownertypeslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','ownertypes')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				if(resobj.status == 'success') {
					gtp.vars.fetchedOwnerTypesList = true;
					var otl = resobj.response.ownerTypeList;
					var otlfid = Ext.getCmp('ownerType');
					if(otlfid)
					for(var i=0; i<otl.length; i++) {
						otlfid.setOptions([{
							text: otl[i].name,
							value: otl[i].name
						}],true);
					}
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.vars.fetchedOwnerTypesList = false;
				console.log('Fetching Owner Type List failed with status'+response.status);
				gtp.log('Fetching Owner Type list failed with status'+response.status);
			}
		});
	},
	
	makeandmodels: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','makeandmodel')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				if(resobj.status == 'success') {
					gtp.vars.fetchedMakeAndModels = true;
					var mkl = resobj.response.make;
					var mklfid = Ext.getCmp('addcar').down('#make');
					if(mklfid) {
						for(var i=0; i<mkl.length; i++) {
							mklfid.setOptions([{
								text: mkl[i].name,
								value: mkl[i].name
							}],true);
						}
					}
				}
		      	gtp.showNotifications(resobj.response.notifications);
		      	gtp.parse(resobj.response.commands);
			},
			failure: function(response) {
				gtp.vars.fetchedMakeAndModels = false;
				console.log('Fetching Owner Type List failed with status'+response.status);
				gtp.log('Fetching Owner Type list failed with status'+response.status);
			}
		});
	}
});