package com.mobisols.tollpayments.plugins;

import org.json.JSONArray;

import android.content.Context;
import android.location.LocationManager;
import android.util.Log;

import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.phonegap.api.Plugin;
import com.phonegap.api.PluginResult;
import com.phonegap.api.PluginResult.Status;

public class ActivatePlugin extends Plugin {

	public static final String ACTIVATE = "ACTIVATE";
	public static final String DEACTIVATE = "DEACTIVATE";
	@Override
	public PluginResult execute(String action, JSONArray json, String callBackId) {
		if(action.equals(ACTIVATE))
		{
			Log.d("Activate", "Plugin is called with action : "+action);
	        LocationData.getInstance().setEnabled(true);
	        Log.d("Activate Plugin", "enabled the application");
	        return new PluginResult(Status.OK);
		}
		else if(action.equals(DEACTIVATE))
		{
			Log.d("Activate", "Plugin is called with action : "+action);
			
			Context applicationContext = MyApplicationUtil.getInstance().getApplicationContext();
			LocationManager locationManager = (LocationManager) applicationContext.getSystemService(Context.LOCATION_SERVICE);
	        locationManager.removeUpdates(LocationData.getInstance().getLocationListener());
	        LocationData.getInstance().setLocationListener(null);
	        LocationData.getInstance().setEnabled(false);
	        //TODO remove pending intents
	        return new PluginResult(Status.OK);
		}
		return new PluginResult(Status.INVALID_ACTION);
	}

}
