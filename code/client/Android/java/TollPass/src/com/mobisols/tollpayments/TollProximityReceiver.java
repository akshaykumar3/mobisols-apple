package com.mobisols.tollpayments;

import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocation;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.request.HeartBeatRequest;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;

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

public class TollProximityReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		Context applicationContext = MyApplicationUtil.getInstance().getApplicationContext();
		NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(Context.NOTIFICATION_SERVICE);
		MyApplicationUtil.getInstance().log("TollProximity Receiver", "Got an Intent");
		
		if(intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
			TollLocation nearest = TollLocationList.getInstace().getTollLocation(LocationData.getInstance().getNearestLocation().getLatitude(), 
					LocationData.getInstance().getNearestLocation().getLongitude());
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
			hbRequest.setVmlType("TC");
			Log.d("HeartBeat Request", JsonConverter.getJSON(hbRequest));
			MyApplicationUtil.getInstance().log("Toll Proximity Reciever Heart Beat Request", JsonConverter.getJSON(hbRequest));
			
			new HeartBeatService().execute(JsonConverter.getJSON(hbRequest));
			Notification notification = new Notification(R.drawable.icon, "Entering Toll Location", System.currentTimeMillis());
			Intent notificationIntent = new Intent("myNotificationIntent");
	        PendingIntent pi =  PendingIntent.getActivity(applicationContext, 1, notificationIntent, 0);
	        notification.setLatestEventInfo(applicationContext, "TollPass", "Entering TollLocation with price : "+nearest.getSellingPrice() , pi);
	        notification.vibrate = new long[]{100,250,100,500};
	        notificationManager.notify(MyApplicationUtil.getInstance().getNotificationId(), notification);
			Toast.makeText(context, "Entering Toll with price : "+nearest.getSellingPrice(), Toast.LENGTH_SHORT).show();
			Log.d("TollLocation proximity Receiver", "Entering TollLocation");
			MyApplicationUtil.getInstance().log("Toll Proximity Reciever", "Entering Toll Location");
		}
		else
		{
			Notification notification = new Notification(R.drawable.icon, "Exiting Toll Proximity ", System.currentTimeMillis());
			Intent notificationIntent = new Intent("myNotificationIntent");
	        PendingIntent pi =  PendingIntent.getActivity(applicationContext, 1, notificationIntent, 0);
	        notification.setLatestEventInfo(applicationContext, "TollPass", "Exiting Toll Proximity", pi);
	        notification.defaults = Notification.DEFAULT_ALL;
	        notificationManager.notify(MyApplicationUtil.getInstance().getNotificationId(), notification);
			Toast.makeText(context, "Exiting toll", Toast.LENGTH_SHORT).show();
			Log.d("TollLocation Proximity receiver","Exiting TollLocation");
			MyApplicationUtil.getInstance().log("Toll Proximity Reciever", "Exiting Toll Location");
		}
	}

}
