package com.mobisols.tollpayments;


import com.mobisols.tollpayments.data.ClientConfiguration;
import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;
import com.phonegap.*;

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
	private MyApplicationUtil myApplicationUtil = MyApplicationUtil.getInstance(); 
	private LocationData locationData = LocationData.getInstance();
	
	private CarProximityReceiver carProximityReceiver;
	private TollProximityReceiver tollProximityReceiver;
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        super.setIntegerProperty("loadUrlTimeoutValue", 60000); 
        super.loadUrl("file:///android_asset/www/index.html");
        
        myApplicationUtil.setApplicationContext(getApplicationContext());
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
        
        locationData.setEnabled(false);
        LocationManager lm = (LocationManager) getSystemService(LOCATION_SERVICE);
        lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, new MyLocationListener());
        
        Log.d("LocationManager", "requested for location updates");
        
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
