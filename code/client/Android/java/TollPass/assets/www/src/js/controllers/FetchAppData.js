gtp.FetchUserData = function(options) {
	if(gtp.tabpanel)
		console.log('tabpanel is ready');
	var mylocation_marker, markernotset=true;
	
	gtp.geo = new Ext.util.GeoLocation({
	    autoUpdate: true,
	    listeners: {
	        locationupdate: function (geo) {
	            console.log('Geo latitude '+geo.latitude);
	            console.log('Geo longitude '+geo.longitude);
	            console.log('Geo accuracy in metres '+geo.accuracy);
	            console.log('Geo speed '+geo.speed);
	            if(markernotset){
					mylocation_marker=new google.maps.Marker({
						position: new google.maps.LatLng(geo.latitude,geo.longitude),
						title: 'U are here right now',
						icon: 'resources/images/blue_dot.png',
						map: Ext.getCmp('mappanel').map
					});
					
					var cl = new google.maps.Circle({
						
					});
					Ext.getCmp('mappanel').map.setCenter(new google.maps.LatLng(geo.latitude,geo.longitude));
					markernotset=false;
				}
				else
				    mylocation_marker.setPosition(new google.maps.LatLng(geo.latitude,geo.longitude));
	        },
	        locationerror: function ( geo, bTimeout, bPermissionDenied, bLocationUnavailable, message) {
	            if(bTimeout) {
	            	gtp.log('Timeout occured in fetching location');
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
	      	
		  	if(vehicle_details) {
		  		gtp.isCarValid = true;
		      	for(var i=0;i<vehicle_details.length;i++)
		      	{
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
				}
		  	}
	      	
	      	
	      	if(pay_details) {
	      		if(pay_details.cardNumber && pay_details.expMonth) 
	      			gtp.arePaymentDetailsValid = true;
		      	var userSettings = Ext.ModelMgr.create({
		      		userid: options.loginDetails.username,
		      		ccnumber: pay_details.cardNumber,
		      		expmonth: pay_details.expMonth,
		      		expyear: pay_details.expYear,
		      		acnumber: pay_details.bankAccount,
		      		name: pay_details.ccName,
		      		address: pay_details.address1,
		      		state: pay_details.state,
		      		country: pay_details.country,
		      		city: pay_details.city,
		      		zipcode: pay_details.zip
		      	},'Settings');
		      	gtp.tabpanel.getComponent('basicform').down('#settingsform').load(userSettings);
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
      	gtp.showNotifications(res.response.notifications);
      	gtp.parse(res.response.commands);
      },
      failure: function(result) {
    	  gtp.responseFailureHandler(result, ' error in fetching Account Details.');
      }
   	});
	
	for(var i=25; i>=0; i--) {
		gtp.stores.Years.insert(0,Ext.ModelMgr.create({
			year: gtp.today.getFullYear()+i
		},'Year'));
	}
};
