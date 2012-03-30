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
		if(MyApplicationUtil.getInstance().getLock().tryLock()){
			Log.d("HeartBeatService", "Lock is available");
			Cursor c = DataBaseHelper.getInstance().getHeartBeatCursor();
			c.moveToFirst();
			while(!c.isAfterLast()){
				Long id = c.getLong(0);
				heartbeatSent.add(id);
				String josn = c.getString(1);
				Log.d("HeartBeatService", josn);
				request = request+josn+",";
				c.moveToNext();
			}
			request = request.substring(0,request.length()-1);
			request = request + "]}";
			c.close();
			response = sendRequest(request);
		}
		else{
			Log.d("HeartBeatService","Lock is not available");
		}
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
		}
		ActualHeartBeatResponse result = (ActualHeartBeatResponse) JsonConverter.getObject(line,"com.mobisols.tollpayments.response.ActualHeartBeatResponse");
		
		LocationData.getInstance().setTollSessionId(result.getResponse().getHash().get("tollSessionId"));
		for(Iterator<Long> it = heartbeatSent.iterator();it.hasNext();){
			DataBaseHelper.getInstance().deleteHeartBeat(it.next());
		}
		MyApplicationUtil.getInstance().getLock().unlock();
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
