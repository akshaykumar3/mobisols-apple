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
	
	ownertypeslist: function() {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','ownertypes')).get('url'),
			success: function(response) {
				var resobj = Ext.decode(response.responseText);
				if(resobj.status == 'success') {
					gtp.vars.fetchedOwnerTypesList = true;
					var otl = resobj.response.ownerTypeList;
					var otlfid = gtp.tabpanel.getComponent('mviewport').down('#addcar').down('#ownerType');
					if(otlfid) {
						for(var i=0; i<otl.length; i++) {
							otlfid.setOptions([{
								text: otl[i].name,
								value: otl[i].name
							}],true);
						}
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
					for(var i=0; i<mkl.length; i++) {
						gtp.stores.Makers.insert(0, Ext.ModelMgr.create({
							MakerID: i+1,
							MakerName: mkl[i].name
						},'Maker'));
						
						var mdl = mkl[i].model;
						for(var j=0; j<mdl.length; j++) {
							gtp.stores.VehicleModels.insert(0, Ext.ModelMgr.create({
								ModelID: j+1,
								MakerID: i+1,
								ModelName: mdl[j].name
							},'VehicleModel'));
						}
					}
					//gtp.tabpanel.getComponent('mviewport').down('#addcar').down('#model').store.clearFilter();
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
	},
	
	tollDetails: function(options) {
		Ext.Ajax.request({
			url: webServices.getAt(webServices.findExact('service','tolldetails')).get('url'),
			success: function(response){
				
				var resobj=Ext.decode(response.responseText);
				if(resobj.status == 'success') {
					gtp.tolls=resobj.response.tollDetailsList;
					var iconpath,markertitle;

		            // invoke plugin to store toll details natively.
					if(Ext.is.iPhone) {
			            var tdp = window.plugins.TollDetailsPlugin;
			            tdp.setDetails(Ext.encode(gtp.tolls));
					}
					else if(Ext.is.Android) {
						window.plugins.TollDetailsPlugin.setValue(gtp.tolls,function(){},function(){});
					}
					
					// Inserts all the tolls into the datastore.
					for(var i=0;i<gtp.tolls.length;i++) {
						tolldetails.insert(0,Ext.ModelMgr.create({
							latitude: gtp.tolls[i].latitude,
							longitude: gtp.tolls[i].longitude,
							tollid: i+1,
							covered: gtp.tolls[i].isCovered=='Y' ? true: false,
							description: gtp.tolls[i].tollOperator
						},'Tolls'));
					}
					
					for(var i=0; i<gtp.tolls.length; i++) 
					{
						if(gtp.tolls[i].isCovered=='Y')
						{
							iconpath='resources/images/Covered_toll.png';
							markertitle=gtp.tolls[i].tollOperator;
						}
						else
						{
							iconpath='resources/images/Uncovered_toll.png';
							markertitle=gtp.tolls[i].tollOperator;
						}
						
						gtp.tollMarkers[i]=new google.maps.Marker({
							position: new google.maps.LatLng(gtp.tolls[i].latitude,gtp.tolls[i].longitude),
							title: markertitle,
							icon: iconpath,
							map: Ext.getCmp('mappanel').map,
							html: gtp.tolls[i].tollOperator+'<br/>Price: $1<br/>Avg Price: $2'
						});
					}
					
					gtp.infoWindow= new google.maps.InfoWindow({
						content: "Toll Gate here"
					});
					
					for(var i=0; i<gtp.tolls.length; i++)
					{
						var marker = gtp.tollMarkers[i];
						google.maps.event.addListener(marker,'mousedown',function(){
							//console.log('Marker latitude '+this.getPosition().lat()+' longitude '+this.getPostion().lng());
							gtp.infoWindow.setContent(this.html);
							gtp.infoWindow.open(Ext.getCmp('mappanel').map, this);
						});	
					}
				} else {
					gtp.tolls = false;
				}
			},
			failure: function(response) {
				gtp.tolls=false;
				console.log('tolldetails failure with status '+response.status);
			}
		});
	}
});