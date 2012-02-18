package com.mobisols.tollpayments;


import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.request.HeartBeatRequest;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import android.widget.Toast;

public class CarProximityReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		Log.d("CarProximity Receiver", "Got an Intent");
		if(!intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
			Context applicationContext = MyApplicationUtil.getInstance().getApplicationContext();
			LocationManager locationManager = (LocationManager) applicationContext.getSystemService(Context.LOCATION_SERVICE);

			Location lastKnownLocation = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);
			HeartBeatRequest hbRequest = new HeartBeatRequest();

			hbRequest.setAngle(0.0);
			hbRequest.setDeviceId(DeviceDetails.getInstance().getValue(DeviceDetails.KEY_DEVICEID));
			hbRequest.setDeviceType(DeviceDetails.getInstance().getValue(DeviceDetails.KEY_DEVICE_TYPE));
			hbRequest.setLatitude(lastKnownLocation.getLatitude());
			hbRequest.setLongitude(lastKnownLocation.getLongitude());
			hbRequest.setTimeStamp(new Timestamp(new Date().getTime()));
			if(LocationData.getInstance().getTollSessionId()==null)
				hbRequest.setTollSessionId("");
			else
				hbRequest.setTollSessionId(LocationData.getInstance().getTollSessionId());
			hbRequest.setVmlType("test");
			Log.d("HeartBeat Request", JsonConverter.getJSON(hbRequest));

			
			new HeartBeatService().execute(JsonConverter.getJSON(hbRequest));
			
			LocationData locationData = LocationData.getInstance();
			locationData.setCarLocation(lastKnownLocation);
			Location nearestToll = MyLocationUtil.getNearestTollLocation(lastKnownLocation);

			locationManager.addProximityAlert(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude(), lastKnownLocation.distanceTo(nearestToll)/2, -1, LocationData.getInstance().getCarPendingIntent());
			Log.d("Car Proximity length", ""+lastKnownLocation.distanceTo(nearestToll)/2);

			if(!(nearestToll.getLatitude() == locationData.getNearestLocation().getLatitude() && nearestToll.getLongitude() == locationData.getNearestLocation().getLongitude()))
			{
				locationData.setNearestLocation(nearestToll);
				locationManager.addProximityAlert(nearestToll.getLatitude(), nearestToll.getLongitude(), MyLocationUtil.TOLL_RADIUS, -1, LocationData.getInstance().getTollPendingIntent());
			}    
			Toast.makeText(context, "Exiting car Proximity", Toast.LENGTH_SHORT).show();
		}
		else
		{
			Toast.makeText(context, "Entering car proximity", Toast.LENGTH_SHORT).show();
			Log.d("Car Proximity Receiver", "Entering the car proximity");
		}
	}

}
