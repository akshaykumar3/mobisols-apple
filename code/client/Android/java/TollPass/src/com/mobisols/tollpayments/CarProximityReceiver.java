package com.mobisols.tollpayments;


import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.request.HeartBeatRequest;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
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
		
		Context applicationContext = MyApplicationUtil.getInstance().getApplicationContext();
		
		NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(Context.NOTIFICATION_SERVICE);
		Log.d("CarProximity Receiver", "Got an Intent");
		MyApplicationUtil.getInstance().log("CarProximity Receiver", "Got an Intent");
		if(!intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
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

			MyApplicationUtil.getInstance().log("Car Proxmity Reciever Heart Beat", JsonConverter.getJSON(hbRequest));
			
			new HeartBeatService().execute(JsonConverter.getJSON(hbRequest));
			
			LocationData locationData = LocationData.getInstance();
			locationData.setCarLocation(lastKnownLocation);
			Location nearestToll = MyLocationUtil.getNearestTollLocation(lastKnownLocation);

			locationManager.addProximityAlert(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude(), lastKnownLocation.distanceTo(nearestToll)/2, -1, LocationData.getInstance().getCarPendingIntent());
			Log.d("Car Proximity length", ""+lastKnownLocation.distanceTo(nearestToll)/2);

			MyApplicationUtil.getInstance().log("Car Promity Length to Nearest Toll", lastKnownLocation.distanceTo(nearestToll)+"");
			if(!(nearestToll.getLatitude() == locationData.getNearestLocation().getLatitude() && nearestToll.getLongitude() == locationData.getNearestLocation().getLongitude()))
			{
				locationData.setNearestLocation(nearestToll);
				locationManager.addProximityAlert(nearestToll.getLatitude(), nearestToll.getLongitude(), MyLocationUtil.TOLL_RADIUS, -1, LocationData.getInstance().getTollPendingIntent());
			}
			
			Notification notification = new Notification(R.drawable.icon, "Exiting car Proximity ", System.currentTimeMillis());
			Intent notificationIntent = new Intent("myNotificationIntent");
	        PendingIntent pi =  PendingIntent.getActivity(applicationContext, 1, notificationIntent, 0);
	        notification.setLatestEventInfo(applicationContext, "TollPass", "Exiting Car Proximity at "+lastKnownLocation.getLatitude()+" "+
					lastKnownLocation.getLatitude(), pi);
	        notification.vibrate = new long[]{100,250,100,500};
	        notificationManager.notify(MyApplicationUtil.getInstance().getNotificationId(), notification);
			Toast.makeText(context, "Exiting car Proximity", Toast.LENGTH_SHORT).show();
			MyApplicationUtil.getInstance().log("Car Proxmity Reciever", "Exiting Car Proximity");
		}
		else
		{
			Notification notification = new Notification(R.drawable.icon, "Entering Car Proximity ", System.currentTimeMillis());
			Intent notificationIntent = new Intent("myNotificationIntent");
	        PendingIntent pi =  PendingIntent.getActivity(applicationContext, 1, notificationIntent, 0);
	        notification.setLatestEventInfo(applicationContext, "TollPass", "Entering Car Proximity", pi);
	        notification.vibrate = new long[]{100,250,100,500};
	        notificationManager.notify(MyApplicationUtil.getInstance().getNotificationId(), notification);
			Toast.makeText(context, "Entering car proximity", Toast.LENGTH_SHORT).show();
			Log.d("Car Proximity Receiver", "Entering the car proximity");
			MyApplicationUtil.getInstance().log("Car Proximity Reciever", "Exiting Car Proximity");
		}
	}

}
