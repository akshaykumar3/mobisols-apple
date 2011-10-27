package com.mobisols.tollpayments;

import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;

public class MyLocationListener implements LocationListener {

	public MyLocationListener(){
		
	}
	public void onLocationChanged(Location location) {
		Log.d("Location Listener", "location Listener is called");
		if(LocationData.getInstance().isEnabled())
		{
		LocationData locationData = LocationData.getInstance();
		MyApplicationUtil applicationUtil = MyApplicationUtil.getInstance();
		LocationManager locationManager = (LocationManager) applicationUtil.getApplicationContext().getSystemService(Context.LOCATION_SERVICE);
			
	        locationData.setCarLocation(location);
			Location nearestToll = MyLocationUtil.getNearestTollLocation(location);
	        
	        locationData.setCarLocation(location);
	        locationData.setNearestLocation(nearestToll);
	        
	        Log.d("Location Listener", ""+location.getLatitude());
	        Log.d("LocationListener", ""+location.getLongitude());
	        if(nearestToll == null)
	        	Log.d("NearestToll", "Nearest toll is null");
	        locationManager.addProximityAlert(nearestToll.getLatitude(), nearestToll.getLongitude(), MyLocationUtil.TOLL_RADIUS, -1, LocationData.getInstance().getTollPendingIntent());
	        if(location.distanceTo(nearestToll)/2 > MyLocationUtil.MIN_CAR_PROXIMITY)
	        	locationManager.addProximityAlert(location.getLatitude(), location.getLongitude(), location.distanceTo(nearestToll)/2, -1, LocationData.getInstance().getCarPendingIntent());
	        else
	        	locationManager.addProximityAlert(location.getLatitude(), location.getLongitude(), MyLocationUtil.MIN_CAR_PROXIMITY, -1, LocationData.getInstance().getCarPendingIntent());
	        
	        locationData.setEnabled(false);
	        locationManager.removeUpdates(this);
		}
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
