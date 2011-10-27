package com.mobisols.tollpayments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import android.util.Log;

public class TollProximityReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		if(intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
			Log.d("TollLocation proximity Receiver", "Entering TollLocation");
		}
		else
		{
			Log.d("TollLocation Proximity receiver","Exiting TollLocation");
		}
	}

}
