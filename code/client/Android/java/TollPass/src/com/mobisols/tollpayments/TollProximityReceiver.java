package com.mobisols.tollpayments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import android.util.Log;
import android.widget.Toast;

public class TollProximityReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		if(intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
			Toast.makeText(context, "Entering  toll", Toast.LENGTH_SHORT).show();
			Log.d("TollLocation proximity Receiver", "Entering TollLocation");
		}
		else
		{
			Toast.makeText(context, "Exiting toll", Toast.LENGTH_SHORT).show();
			Log.d("TollLocation Proximity receiver","Exiting TollLocation");
		}
	}

}
