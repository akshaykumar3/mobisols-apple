/**
 * 
 */
package com.mobisols.tollpayments;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

import com.mobisols.tollpayments.data.DataBaseHelper;
import com.mobisols.tollpayments.data.LocationData;
import com.mobisols.tollpayments.response.ActualHeartBeatResponse;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.MyLocationUtil;
import com.mobisols.tollpayments.utils.WebRequest;
import com.mobisols.tollpayments.utils.WebServiceLinks;

import android.database.Cursor;
import android.os.AsyncTask;
import android.util.Log;

/**
 * @author Raghu
 *
 */
public class HeartBeatService extends AsyncTask<String, Void, ActualHeartBeatResponse> {

	/* (non-Javadoc)
	 * @see android.os.AsyncTask#doInBackground(Params[])
	 */
	
	@Override
	protected ActualHeartBeatResponse doInBackground(String... heartBeatRequest) {
		
		DataBaseHelper.getInstance().insertHeartBeat(heartBeatRequest[0]);
		String request = "{heartBeatList:[";
		List<Long> heartbeatSent = new LinkedList<Long>();
		HttpResponse response = null;
		ActualHeartBeatResponse result =null;
		
		synchronized (ActualHeartBeatResponse.class) {
			Log.d("HeartBest Service", "Entering the synchronized block");
			MyApplicationUtil.getInstance().log("HeartBeat Service", "Entering Synchronized block");
			Log.d("HeartBeat Service", "Started reading from the database");
			Cursor c = DataBaseHelper.getInstance().getHeartBeatCursor();
			c.moveToFirst();
			int count=0;
			while(!c.isAfterLast() && count < MyLocationUtil.MAX_HERART_BEAT_COUNT){
				Long id = c.getLong(0);
				heartbeatSent.add(id);
				String josn = c.getString(1);
				Log.d("HeartBeatService", josn);
				MyApplicationUtil.getInstance().log("Heart Beat Service Stored", josn);
				request = request+josn+",";
				c.moveToNext();
				count++;
			}
			Log.d("HeartBeat Service", "Completed reading from database");
			request = request.substring(0,request.length()-1);
			request = request + "]}";
			c.close();
			response = sendRequest(request);
			
		if(response == null || response.getStatusLine() == null|| response.getStatusLine().getStatusCode() != 200)
		{
			return null;
		}
		BufferedReader rd;
		String line=null;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			line = rd.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception2");
			MyApplicationUtil.getInstance().log("Heart Beat Service", "Null Pointer Exception in reading the response");
		}
		Log.d("HeartBeat", line+"");
		MyApplicationUtil.getInstance().log("Heart Beat Response", line);
		
		result = (ActualHeartBeatResponse) JsonConverter.getObject(line,"com.mobisols.tollpayments.response.ActualHeartBeatResponse");
		
		if(!result.getResponse().getCommands().isEmpty()){
			for(Iterator<String> it = result.getResponse().getCommands().keySet().iterator();it.hasNext();){
				String key = it.next();
				if(result.getResponse().getCommands().get(key).equals("DEACTIVATE")){
					ProcessCommands.dsiableApp(Long.getLong(key));
				}if(result.getResponse().getCommands().get(key).equals("DO_DEVICE_REGISTRATION")){
					ProcessCommands.doDeviceRegistration(Long.getLong(key));
				}if(result.getResponse().getCommands().get(key).equals("UPDATE_CLIENT_CONFIG")){
					ProcessCommands.updateClientConfiguration(Long.getLong(key));
				}if(result.getResponse().getCommands().get(key).equals("COMMAND_ACK")){
					ProcessCommands.commandAcknowledge(Long.getLong(key));
				}
			}
		}
		
		if(!result.getResponse().getCommands().isEmpty()){
			for(Iterator<String> it = result.getResponse().getNotifications().iterator();it.hasNext();){
				//TODO Display Notifications
			}
		}
		LocationData.getInstance().setTollSessionId(result.getResponse().getHash().get("tollSessionId"));
		for(Iterator<Long> it = heartbeatSent.iterator();it.hasNext();){
			DataBaseHelper.getInstance().deleteHeartBeat(it.next());
		}
		Log.d("HeartBeat Service", "Exiting the synchronized bloack");
		}
		return result;
	}

	private HttpResponse sendRequest(String heartBeatRequest) {
		HttpPost request= new HttpPost(WebServiceLinks.getHeartBeat());
		List<BasicNameValuePair> data = new ArrayList<BasicNameValuePair>();
		data.add(new BasicNameValuePair("json", heartBeatRequest));
		try {
			 request.setEntity(new UrlEncodedFormEntity(data));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpResponse response = WebRequest.postMethod(request);
		return response;
	}

	@Override
	protected void onPostExecute(ActualHeartBeatResponse result) {
				
	}

}
