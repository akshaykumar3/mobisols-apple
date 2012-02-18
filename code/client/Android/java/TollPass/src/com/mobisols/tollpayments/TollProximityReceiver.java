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
		if(intent.getBooleanExtra(LocationManager.KEY_PROXIMITY_ENTERING, false))
		{
			TollLocation nearest = TollLocationList.getInstace().getTollLocation(LocationData.getInstance().getNearestLocation().getLatitude(), 
					LocationData.getInstance().getNearestLocation().getLongitude());
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
			hbRequest.setVmlType("TC");
			Log.d("HeartBeat Request", JsonConverter.getJSON(hbRequest));
			
			new HeartBeatService().execute(JsonConverter.getJSON(hbRequest));
			
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
