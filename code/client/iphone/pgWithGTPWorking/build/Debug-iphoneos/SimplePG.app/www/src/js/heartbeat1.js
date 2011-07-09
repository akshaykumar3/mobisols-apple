var repeatno=1,boolvar=true,longvar=-121.658592,latvar=37.44885;

function changeCoords(){
	console.log('change coordinates function is invoked');
	mylocation_marker.setPosition(new google.maps.LatLng(latvar,longvar));
	Ext.getCmp('mappanel').update({
		latitude: latvar,
		longitude: longvar
	});
	if(boolvar){
		console.log('inside boolean var');
		boolvar=false;
		var nwmarker=new google.maps.Marker({
			position: new google.maps.LatLng(37.4485,-121.58592),
			icon: 'resources/images/covered.png',
			title: 'this is dynamically created marker',
			map: Ext.getCmp('mappanel').map
		});
	}
	if(repeatno==2){
		console.log('inside repeatno 2');
		new google.maps.Marker({
			position: new google.maps.LatLng(37.4485,-121.50592),
			icon: 'resources/images/covered.png',
			title: 'this is dynamically created marker',
			map: Ext.getCmp('mappanel').map
		});
	}
	
	if(repeatno < 3)
	{
		console.log('inside repeat');
		longvar=longvar+0.1;
		setTimeout("changeCoords()",5000);
		repeatno++;
	}	
}
