package com.mobisols.tollpayments;

import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.data.TollLocation;
import com.mobisols.tollpayments.data.TollLocationList;

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
			TollLocation nearest = TollLocationList.getInstace().getTollLocation(LocationData.getInstance().getNearestLocation().getLatitude(), 
					LocationData.getInstance().getNearestLocation().getLongitude());
			Toast.makeText(context, "Entering Toll with price : "+nearest.getSellingPrice(), Toast.LENGTH_SHORT).show();
			Log.d("TollLocation proximity Receiver", "Entering TollLocation");
		}
		else
		{
			Toast.makeText(context, "Exiting toll", Toast.LENGTH_SHORT).show();
			Log.d("TollLocation Proximity receiver","Exiting TollLocation");
		}
	}

}
