package com.mobisols.tollpayments.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Iterator;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

import com.mobisols.tollpayments.data.TollLocation;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.response.ActualTollDetailsResponse;

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
		if(tollLocationList.getList().isEmpty())
		{
			HttpGet request = new HttpGet(WebServiceLinks.getTollLocations());
	        HttpResponse response =WebRequest.getMethod(request);
	        
	        if(response.getStatusLine().getStatusCode() == 200)
	        {
	        	BufferedReader rd;
	        	String line=null;
	    		try {
	    			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
	    			line = rd.readLine();
	    			
	    		} catch (IOException e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		} catch (IllegalStateException e1) {
	    			// TODO Auto-generated catch block
	    			e1.printStackTrace();
	    		}catch(NullPointerException e){
	    			Log.d("HTTP REQUEST", "Nullpointer Exception2");
	    		}
	        	Log.d("TollDetsils List response",line);
	        	ActualTollDetailsResponse tlr = (ActualTollDetailsResponse) JsonConverter.getObject(line,"com.mobisols.tollpayments.response.ActualTollDetailsResponse");
	        	TollLocationList.getInstace().setList(tlr.getResponse().getTollDetailsList());
	        }
		}
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
		if(nearestToll!=null)
			Log.d("Nearest Toll is", nearestToll.getLatitude()+" "+nearestToll.getLongitude());
		else
			Log.d("Nearest Toll","is NULL");
		return nearestToll;
	}
}
