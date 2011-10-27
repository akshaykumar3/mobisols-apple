package com.mobisols.tollpayments.utils;

import java.util.Iterator;

import com.mobisols.tollpayments.data.TollLocation;
import com.mobisols.tollpayments.data.TollLocationList;

import android.location.Location;
import android.util.Log;

public class MyLocationUtil {
	public static final String INTENT_ACTION_TOLL_LOCATION = "com.mobisols.tollpayments.TollLocationIntent";
	public static final String INTENT_ACTION_CAR = "com.mobisols.tollpayments.CarIntent";
	public static final int CAR_REQUEST_CODE = 1;
	public static final int TOLL_REQUEST_CODE =2;
	public static final int TOLL_RADIUS = 250;
	public static final float MIN_CAR_PROXIMITY = 250;
	
	public static Location getNearestTollLocation(Location currentLocation){
		TollLocationList tollLocationList = TollLocationList.getInstace();
		
		Double minDist = Double.MAX_VALUE;
		Location nearestToll = null;
		
		for(Iterator<TollLocation> it = tollLocationList.getList().iterator();it.hasNext();){
			TollLocation tl=it.next();
			Location l = new Location(currentLocation);
			l.setLatitude(tl.getLatitude());
			l.setLongitude(tl.getLongitude());
			if(currentLocation.distanceTo(l) < minDist)
			{
				minDist = (double) currentLocation.distanceTo(l);
				nearestToll = l;
			}
		}
		Log.d("Nearest Toll is", nearestToll.getLatitude()+" "+nearestToll.getLongitude());
		return nearestToll;
	}
}
