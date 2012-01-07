package com.mobisols.tollpayments.plugins;

import java.util.Iterator;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONException;

import android.util.Log;

import com.mobisols.tollpayments.data.ClientConfiguration;
import com.mobisols.tollpayments.data.DataBaseHelper;
import com.mobisols.tollpayments.data.DeviceDetails;
import com.mobisols.tollpayments.data.TollLocationList;
import com.mobisols.tollpayments.response.ClientConfigResponse;
import com.mobisols.tollpayments.response.TollLocationListResponse;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.phonegap.api.Plugin;
import com.phonegap.api.PluginResult;
import com.phonegap.api.PluginResult.Status;

public class DataPlugin extends Plugin{

	public static final String UPDATE_CLIENT_CONFIG = "UPDATE_CLIENT_CONFIG"; 
	public static final String GET_CLIENT_CONFIG = "GET_CLIENT_CONFIG"; 
	public static final String UPDATE_TOLL_LOC = "UPDATE_TOLL_LOC";
	public static final String GET_TOLL_LOC = "GET_TOLL_LOC";
	public static final String UPDATE_USER_KEY = "UPDATE_USER_KEY";
	public static final String GET_USER_KEY = "GET_USER_KEY";
	
	DataBaseHelper databaseHelper;
	@Override
	public PluginResult execute(String action, JSONArray json, String callBackId) {
		Log.d("TollPass DataBasePlugin", "Database plugin is called");
		if(action.equals(UPDATE_CLIENT_CONFIG))
		{
			ClientConfiguration cc = ClientConfiguration.getInstance();
			cc.clear();
			try {
				Log.d("ClientConfig respose",json.getString(0));
				ClientConfigResponse cr = (ClientConfigResponse) JsonConverter.getObject(json.getString(0), "com.mobisols.tollpayments.response.ClientConfigResponse");
				Set<String> keySet = cr.getKeyValues().keySet();
				for(Iterator<String> it = keySet.iterator();it.hasNext();)
				{
					String key = it.next();
					cc.setValue(key, cr.getKeyValues().get(key));
				}
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		else if(action.equals(GET_CLIENT_CONFIG))
		{
			String val;
			try {
				val = ClientConfiguration.getInstance().getValue(json.getString(0));
				JSONArray message= new JSONArray();
				if(val == null)
				{
					return new PluginResult(Status.NO_RESULT);
				}
				else
				{
					message.put(0, val);
					return new PluginResult(Status.OK,message);
				}
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals(UPDATE_TOLL_LOC))
		{
			TollLocationList tl = TollLocationList.getInstace();
			try {
				Log.d("TollDetailsList", json.getString(0));
				TollLocationListResponse tlr = (TollLocationListResponse) JsonConverter.getObject("{\"tollDetailsList\":"+json.getString(0)+"}", "com.mobisols.tollpayments.response.TollLocationListResponse");
				tl.setList(tlr.getTollDetailsList());
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals(GET_TOLL_LOC))
		{
			TollLocationList tl = TollLocationList.getInstace();
			try{
				return new PluginResult(Status.OK, new JSONArray().put(0, JsonConverter.getJSON(tl)));
			}
			catch(JSONException e){
				// TODO Auto-generated catch block
				return new PluginResult(Status.JSON_EXCEPTION);
			}
		}
		else if(action.equals(UPDATE_USER_KEY))
		{
			DeviceDetails dd = DeviceDetails.getInstance();
			try {
				dd.setValue(json.getString(0), json.getString(1));
				Log.d("DataPlugin", json.getString(0)+ " " + json.getString(1) );
				return new PluginResult(Status.OK);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return new PluginResult(Status.JSON_EXCEPTION);
			}
		}
		else if(action.equals(GET_USER_KEY))
		{
			DeviceDetails dd = DeviceDetails.getInstance();
			try {
				String val = dd.getValue(json.getString(0));
				if(val== null)
				{
					return new PluginResult(Status.NO_RESULT);
				}
				else
				{
					return new PluginResult(Status.OK, new JSONArray().put(0, val));
				}
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return new PluginResult(Status.JSON_EXCEPTION);
			}
		}
		return null;
	}

}
