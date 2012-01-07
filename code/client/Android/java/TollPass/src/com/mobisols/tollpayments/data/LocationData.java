package com.mobisols.tollpayments.data;

import android.app.PendingIntent;
import android.location.Location;
import android.location.LocationListener;

public class LocationData {
	private Location nearestLocation;
	private Location carLocation;
	private PendingIntent carPendingIntent;
	private PendingIntent tollPendingIntent;
	private LocationListener locationListener;
	private static LocationData locationData=null;
	private boolean enabled;
	private String tollSessionId=null;
	
	private LocationData(){
		
	}
	
	public static LocationData getInstance(){
		if(locationData == null)
			locationData  = new LocationData();
		return locationData;
	}
	
	public Location getNearestLocation() {
		return nearestLocation;
	}
	public void setNearestLocation(Location nearestLocation) {
		this.nearestLocation = nearestLocation;
	}
	public Location getCarLocation() {
		return carLocation;
	}
	public void setCarLocation(Location carLocation) {
		this.carLocation = carLocation;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public PendingIntent getCarPendingIntent() {
		return carPendingIntent;
	}

	public void setCarPendingIntent(PendingIntent carPendingIntent) {
		this.carPendingIntent = carPendingIntent;
	}

	public PendingIntent getTollPendingIntent() {
		return tollPendingIntent;
	}

	public void setTollPendingIntent(PendingIntent tollPendingIntent) {
		this.tollPendingIntent = tollPendingIntent;
	}

	public LocationListener getLocationListener() {
		return locationListener;
	}

	public void setLocationListener(LocationListener locationListener) {
		this.locationListener = locationListener;
	}

	public String getTollSessionId() {
		return tollSessionId;
	}

	public void setTollSessionId(String tollSessionId) {
		this.tollSessionId = tollSessionId;
	}
	
}
