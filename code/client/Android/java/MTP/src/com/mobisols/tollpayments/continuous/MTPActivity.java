package com.mobisols.tollpayments.continuous;

import java.io.IOException;

import com.mobisols.tollpayments.MyLocationListener;
import com.mobisols.tollpayments.data.ClientConfiguration;
import com.mobisols.tollpayments.data.DataBaseHelper;
import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.phonegap.DroidGap;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;

public class MTPActivity extends DroidGap {
    /** Called when the activity is first created. */
	private ClientConfiguration clientConfiguration = ClientConfiguration.getInstance();
	private DeviceDetails deviceDetails = DeviceDetails.getInstance();
	private TollLocationList tollLocationList = TollLocationList.getInstace();
	private DataBaseHelper dataBaseHelper; 
	private MyApplicationUtil myApplicationUtil = MyApplicationUtil.getInstance(); 
	private LocationData locationData = LocationData.getInstance();
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        myApplicationUtil.log("TollPassActivity", "Application started loading");
        super.setIntegerProperty("loadUrlTimeoutValue", 60000); 
        super.loadUrl("file:///android_asset/www/index.html");
        myApplicationUtil.log("TollPassActivity", "Called the url loader");
        myApplicationUtil.setApplicationContext(getApplicationContext());
        myApplicationUtil.setApplicationActivity(this);
        
        dataBaseHelper = DataBaseHelper.getInstance();
        
        locationData.setEnabled(true);
        LocationManager lm = (LocationManager) getSystemService(LOCATION_SERVICE);
        lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, new MyLocationListener());
        
        NotificationManager notificationManager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        
        Notification notification = new Notification(R.drawable.icon,"REQUESTED FOR LOCATION UPDATES",System.currentTimeMillis());
        
        Intent notificationIntent = new Intent("myNotificationIntent");
        PendingIntent pi =  PendingIntent.getActivity(this, 1, notificationIntent, 0);
        notification.setLatestEventInfo(getApplicationContext(), "TollPass", "Requested for Updates", pi);
        notificationManager.notify(myApplicationUtil.getNotificationId(), notification);
        
        Log.d("LocationManager", "requested for location updates");
        myApplicationUtil.log("onCreate", "requested for location updates");
	}
	
	protected void onStart(){
		super.onStart();
		
	}

	@Override
    protected void onStop() {
        super.onStop();
        
    }
	 public void onDestroy() {
	        super.onDestroy();
	    }
	 
	@Override
	 public boolean onKeyDown(int keyCode, KeyEvent event) {
	     if (keyCode == KeyEvent.KEYCODE_BACK) {
	         moveTaskToBack(true);
	         return true;
	     }
	     return super.onKeyDown(keyCode, event);
	 }
}