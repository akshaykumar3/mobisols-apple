package com.mobisols.tollpayments;

import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.IBinder;
import android.util.Log;

public class HeartbeatService extends Service{
	private CarProximityReceiver carProximityReceiver;
	private TollProximityReceiver tollProximityReceiver;
	@Override
	public IBinder onBind(Intent intent) {
		Log.d("Debug service", "service onBind Method");
		
		return null;
	}
	@Override
	public void onCreate() {
		Log.d("Service Debugger", "onCreate");
		MyApplicationUtil.getInstance().setApplicationContext(getApplicationContext());
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
        
        LocationData.getInstance().setEnabled(false);
        LocationManager lm = (LocationManager) getSystemService(LOCATION_SERVICE);
        lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, new MyLocationListener());
        
        Log.d("LocationManager", "requested for location updates");
        
	}

	@Override
	public void onDestroy() {
		Log.d("Service Debugger", "onDestroy");
		unregisterReceiver(carProximityReceiver);
        unregisterReceiver(tollProximityReceiver);
	}
}
