package com.mobisols.tollpayments;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocation;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.request.HeartBeatRequest;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class MyLocationListener implements LocationListener {

	public MyLocationListener(){
		
	}
	public void onLocationChanged(Location location) {
		
		Log.d("LocationListener time",""+ location.getTime());
		Log.d("LocationListener time",""+ Calendar.getInstance().getTime().getTime());
		Log.d("LocationListener Time",""+(location.getTime()< (Calendar.getInstance().getTime().getTime() - 5000*60)));
		if(location.getTime()< (Calendar.getInstance().getTime().getTime() - 5000*60)) 
		{
			return;
		}
		Log.d("Location Listener", "location Listener is called");
		if(LocationData.getInstance().isEnabled())
		{
			LocationData locationData = LocationData.getInstance();
			MyApplicationUtil applicationUtil = MyApplicationUtil.getInstance();
			LocationManager locationManager = (LocationManager) applicationUtil.getApplicationContext().getSystemService(Context.LOCATION_SERVICE);
			Location nearestToll = MyLocationUtil.getNearestTollLocation(location);
	        int tollId = MyLocationUtil.getNearestTollIndex(location);
	        
	        locationData.setCarLocation(location);
	        locationData.setNearestLocation(nearestToll);
	        
	        Log.d("Location Listener", ""+location.getLatitude());
	        Log.d("LocationListener", ""+location.getLongitude());
	        Log.d("LocationListener", ""+location.distanceTo(nearestToll)/2);
	        //TODO change the values to get from client configuration
	        if(location.distanceTo(nearestToll)>2000 ){
	        	Log.d("MyLocationListener", "Got an Update");
	        	if(nearestToll == null)
	        		Log.d("NearestToll", "NearestToll is null");
	        	locationManager.removeUpdates(this);
	        	locationData.setDistanceToPreviousToll(location.distanceTo(nearestToll));
	        	//Toast.makeText(MyApplicationUtil.getInstance().getApplicationContext(), "location listener got an update", Toast.LENGTH_SHORT).show();
	  	       doHeartBeat(location,"SHB");
	  	       locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, location.distanceTo(nearestToll)/2, this);
	        }
	        else if(location.distanceTo(nearestToll)<=2000){
	        	Log.d("HeartBeatService", "Distance is less than 200");
	        	locationData.setDistanceToPreviousToll(location.distanceTo(nearestToll));
	        	locationManager.removeUpdates(this);
	        	
	        	if(location.distanceTo(nearestToll)<=200 && locationData.getTollId()==-1){
	        		locationData.setTollId(tollId);
	        		doHeartBeat(location, "TC");
	        		Log.d("Entering Toll Location", ""+nearestToll.getLatitude()+"  "+nearestToll.getLongitude());
	        		TollLocation t = TollLocationList.getInstace().getTollLocation(nearestToll.getLatitude(), nearestToll.getLongitude());
	        		Toast.makeText(MyApplicationUtil.getInstance().getApplicationContext(), t.getTollOperator()+ " Toll Cost = "+t.getSellingPrice(), Toast.LENGTH_SHORT).show();
	        	}else if(location.distanceTo(nearestToll)> 200){
	        		locationData.setTollId(-1);
	        	}
	        	/*if(location.distanceTo(nearestToll)<=200 && locationData.getTollId()!=-1 && location.distanceTo(nearestToll)>locationData.getDistanceToPreviousToll()){
	        		locationData.setTollId(-1);
	        		doHeartBeat(location, "TC");
	        		Log.d("Exiting Toll Location", ""+nearestToll.getLatitude()+"  "+nearestToll.getLongitude());
	        		Toast.makeText(MyApplicationUtil.getInstance().getApplicationContext(), "Exiting TollLocation", Toast.LENGTH_SHORT).show();		        
	        	}*/else{
	        		doHeartBeat(location, "CHB");
	        	}
	        	locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, location.distanceTo(nearestToll)/2, this);
	        }
		}
		else{
			MyApplicationUtil applicationUtil = MyApplicationUtil.getInstance();
			LocationManager locationManager = (LocationManager) applicationUtil.getApplicationContext().getSystemService(Context.LOCATION_SERVICE);
			locationManager.removeUpdates(this);
		}
	}
	private void doHeartBeat(Location location,String vmlType) {
		HeartBeatRequest hbRequest = new HeartBeatRequest();

		hbRequest.setAngle(0.0);
		hbRequest.setDeviceId(DeviceDetails.getInstance().getValue(DeviceDetails.KEY_DEVICEID));
		hbRequest.setDeviceType(DeviceDetails.getInstance().getValue(DeviceDetails.KEY_DEVICE_TYPE));
		hbRequest.setLatitude(location.getLatitude());
		hbRequest.setLongitude(location.getLongitude());
		hbRequest.setTimeStamp(new Timestamp(new Date().getTime()));
		if(LocationData.getInstance().getTollSessionId()==null)
			hbRequest.setTollSessionId("");
		else
			hbRequest.setTollSessionId(LocationData.getInstance().getTollSessionId());
		hbRequest.setVmlType(vmlType);
		Log.d("HeartBeat Request", JsonConverter.getJSON(hbRequest));
		new HeartBeatService().execute(JsonConverter.getJSON(hbRequest));
	}

	public void onProviderDisabled(String provider) {
		// TODO Auto-generated method stub
		
	}

	public void onProviderEnabled(String provider) {
		// TODO Auto-generated method stub
		
	}

	public void onStatusChanged(String provider, int status, Bundle extras) {
		// TODO Auto-generated method stub
		
	}
}
