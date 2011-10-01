gtp.FetchUserData = function(options) {
	var mylocation_marker, markernotset=true;
	
	gtp.geo = new Ext.util.GeoLocation({
	    autoUpdate: true,
	    listeners: {
	        locationupdate: function (geo) {
	            console.log('Got New latitude: ' + geo.latitude + 'New Longitude: ' + geo.longitude);
	            if(markernotset){
					mylocation_marker=new google.maps.Marker({
						position: new google.maps.LatLng(geo.latitude,geo.longitude),
						title: 'U are here right now',
						icon: 'resources/images/blue_dot.png',
						map: Ext.getCmp('mappanel').map
					});
					Ext.getCmp('mappanel').map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
					markernotset=false;
				}
				else
				mylocation_marker.setPosition(new google.maps.LatLng(geo.latitude,geo.longitude));
				//Ext.getCmp('mappanel').map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
	        },
	        locationerror: function ( geo, bTimeout, bPermissionDenied, bLocationUnavailable, message) {
	            if(bTimeout) {
	            	// Show message to user --optional
		        }
	        }
	    }
	});
	
	Ext.Ajax.request({
      url: webServices.getAt(webServices.findExact('service','acdetails')).get('url'),
      method: 'GET',
      params: {
      	user_name: options.loginDetails.username,
      	client_id: 1
      },
      success: function(result) {
      	//console.log(result.responseText);
      	var res=Ext.decode(result.responseText);
      	
      	if(res.response) {
		  	var pay_details=res.response.paymentDetails;
		  	var vehicle_details=res.response.vehicleDetails;
		  	var paidtoll_details=res.response.tollPayments;
	      	
		  	if(vehicle_details)
	      	for(var i=0;i<vehicle_details.length;i++)
	      	{
	      		if(vehicle_details[i].isActive == 'Y'){
	      			Ext.getCmp('activecar').setValue(vehicle_details[i].registration);
	      		}
	      		carsList.insert(0,Ext.ModelMgr.create({
					state: vehicle_details[i].state,
					reg: vehicle_details[i].registration,
					type: vehicle_details[i].type,
					startDate: new Date(vehicle_details[i].startDate),
					endDate: (vehicle_details[i].endDate == null) ? '':new Date(vehicle_details[i].endDate),
					ownerType: vehicle_details[i].ownerType,
					vehicleId: vehicle_details[i].vehicleId,
					isActive: vehicle_details[i].isActive
				},'Cars'));
				Ext.getCmp('activecar').setOptions([{
					text: vehicle_details[i].registration,
					value: vehicle_details[i].registration
				}],true);
			}
	      	
	      	
	      	if(pay_details) {
		      	var userSettings = Ext.ModelMgr.create({
		      		userid: options.loginDetails.username,
		      		ccnumber: pay_details.cardNumber,
		      		expdate: Date.parseDate(pay_details.expYear,'M j, Y g:i:s A'),
		      		acnumber: pay_details.bankAccount,
		      		name: pay_details.ccName,
		      		address: pay_details.address1,
		      		state: pay_details.state,
		      		city: pay_details.city,
		      		zipcode: pay_details.zip
		      	},'Settings');
		      	gtp.tabpanel.getComponent(3).load(userSettings);
	      	}
	      	
	      	if(paidtoll_details)
	      	for(i=0;i<paidtoll_details.length;i++)
	      	{
	      		//12-6-2011 21:16:12
	      		console.log(Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'));
		      	paidTolls.insert(0,Ext.ModelMgr.create({
					date: Date.parseDate(paidtoll_details[i].timeStamp,'j-n-Y G:i:s').format('Y-m-d'),
					amount: paidtoll_details[i].price,
					location: paidtoll_details[i].tollDetails.tollOperator +' '+ paidtoll_details[i].tollDetails.city,
					reg: paidtoll_details[i].registration
				},'PaidTolls'));
			}
      	}
      },
      failure: function(result) {
     	console.log('Account Details failure with status code'+result.status);
      }
   	});
	
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
		},
		failure: function(response) {
			console.log('Fetching CCtypelist failure with status '+response.status);
		}
	});
	
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
		},
		failure: function(response) {
			console.log('Fetching Sevices list failed');
		}
	});
	
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
		},
		failure: function(response) {
			console.log('Fetching Sevices list failed');
		}
	});

};