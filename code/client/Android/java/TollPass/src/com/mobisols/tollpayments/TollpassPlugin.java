package com.mobisols.tollpayments;

import org.json.JSONArray;


import android.util.Log;

import com.phonegap.api.Plugin;
import com.phonegap.api.PluginResult;
import com.phonegap.api.PluginResult.Status;

public class TollpassPlugin extends Plugin {

	private static final String SET_CLIENT_CONFIGURATION = "saveClientConfiguration";
	@Override
	public PluginResult execute(String action, JSONArray data, String callBackId) {
		Log.d("Tollpass Plugin", "Plugin is called");
		
		PluginResult result;
		if(action.equals(this.SET_CLIENT_CONFIGURATION))
		{
			Log.d("TollPassPlugin","Seeting the client configuration");
			result = new PluginResult(Status.OK);
		}
		else
			result=new PluginResult(Status.INVALID_ACTION);
		return result;
	}

}
