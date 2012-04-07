package com.mobisols.tollpayments;


import java.io.IOException;

import com.mobisols.tollpayments.data.ClientConfiguration;
import com.mobisols.tollpayments.data.DataBaseHelper;
import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;
import com.phonegap.DroidGap;


import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;

public class TollPassActivity extends DroidGap {
    /** Called when the activity is first created. */
	private ClientConfiguration clientConfiguration = ClientConfiguration.getInstance();
	private DeviceDetails deviceDetails = DeviceDetails.getInstance();
	private TollLocationList tollLocationList = TollLocationList.getInstace();
	private DataBaseHelper dataBaseHelper; 
	private MyApplicationUtil myApplicationUtil = MyApplicationUtil.getInstance(); 
	private LocationData locationData = LocationData.getInstance();
	
	private CarProximityReceiver carProximityReceiver;
	private TollProximityReceiver tollProximityReceiver;
	
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
        
        IntentFilter intentFilter1 = new IntentFilter(MyLocationUtil.INTENT_ACTION_CAR);
        carProximityReceiver = new CarProximityReceiver();
        registerReceiver(carProximityReceiver, intentFilter1);
        
        IntentFilter intentFilter2 = new IntentFilter(MyLocationUtil.INTENT_ACTION_TOLL_LOCATION);
        tollProximityReceiver = new TollProximityReceiver();
        registerReceiver(tollProximityReceiver, intentFilter2);
        
        Intent i1 = new Intent(MyLocationUtil.INTENT_ACTION_CAR);
        PendingIntent carPendingIntent = PendingIntent.getBroadcast(getApplicationContext(), MyLocationUtil.CAR_REQUEST_CODE, i1, 0);
        
        Intent i2 = new Intent(MyLocationUtil.INTENT_ACTION_TOLL_LOCATION);
        PendingIntent tollPendingIntent = PendingIntent.getBroadcast(getApplicationContext(), MyLocationUtil.TOLL_REQUEST_CODE, i2, 0);
        
        LocationData.getInstance().setCarPendingIntent(carPendingIntent);
        LocationData.getInstance().setTollPendingIntent(tollPendingIntent);
        
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
	        unregisterReceiver(carProximityReceiver);
	        unregisterReceiver(tollProximityReceiver);
	        try {
				myApplicationUtil.getLogWriter().close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
	 
	/* @Override
	 public boolean onKeyDown(int keyCode, KeyEvent event) {
	     if (keyCode == KeyEvent.KEYCODE_BACK) {
	         moveTaskToBack(true);
	         return true;
	     }
	     return super.onKeyDown(keyCode, event);
	 }*/
}
