package com.mobisols.tollpayments.utils;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import com.mobisols.tollpayments.data.DeviceDetails;

import android.util.Log;

public class WebRequest {
	
	private static int TIMEOUT_MILLISEC = 5000;
	
	public static HttpResponse getMethod(HttpGet request) {
        
		HttpParams httpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
        DefaultHttpClient client = new DefaultHttpClient(httpParams);
        
        DeviceDetails dd = DeviceDetails.getInstance();
        while(dd.getValue(DeviceDetails.KEY_USERNAME)==null || dd.getValue(DeviceDetails.KEY_PASSWORD)==null);
        client.getCredentialsProvider().setCredentials(new AuthScope(WebServiceLinks.getHost(), WebServiceLinks.getPort()), 
        		new UsernamePasswordCredentials(dd.getValue(DeviceDetails.KEY_USERNAME), dd.getValue(DeviceDetails.KEY_PASSWORD)));
        Log.d("HTTP REQUEST", "REQUEST before SENT FROM CLIENT");
        MyApplicationUtil.getInstance().log("HTTP Get Request", "Request Sent from Client");
		
        HttpResponse response = null;
		try {
			response = client.execute(request);
			Log.d("HTTP REQUEST", "REQUEST after SENT FROM CLIENT");
			Log.d("HTTP status",""+ response.getStatusLine());
			MyApplicationUtil.getInstance().log("HTTP Get Request", "Status of Response is "+response.getStatusLine());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception1");
			MyApplicationUtil.getInstance().log("HTTP Get Request", "Null Pointer Exception in Reading response");
		}catch(Exception e){
			Log.d("HTTP GET", e.getMessage());
			MyApplicationUtil.getInstance().log("HTTP Get Request Exception", e.getMessage());
		}finally{
			client.getConnectionManager().shutdown();
		}
		return response;
	}
	
	public static HttpResponse postMethod(HttpPost request){
		HttpParams httpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
		DefaultHttpClient client= new DefaultHttpClient(httpParams);
		
		//request.setHeader("Accept", "application/json");
		DeviceDetails dd = DeviceDetails.getInstance();
        client.getCredentialsProvider().setCredentials(new AuthScope(WebServiceLinks.getHost(), WebServiceLinks.getPort()), 
        		new UsernamePasswordCredentials(dd.getValue(DeviceDetails.KEY_USERNAME), dd.getValue(DeviceDetails.KEY_PASSWORD)));
        
		Log.d("HTTP REQUEST", "REQUEST before SENT FROM CLIENT");
		MyApplicationUtil.getInstance().log("HTTP Post Request", "Request Sent from Client");
		
		BasicHttpResponse response = null;
		try {
			response = (BasicHttpResponse) client.execute(request);
			Log.d("HTTP REQUEST", "REQUEST after SENT FROM CLIENT");
			Log.d("HTTP status",""+ response.getStatusLine());
			MyApplicationUtil.getInstance().log("HTTP Post Request", "Status of Response is "+response.getStatusLine());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(Exception e){
			Log.d("HTTP Post", e.getMessage());
			MyApplicationUtil.getInstance().log("HTTP Post", e.getMessage());
		}finally{
			client.getConnectionManager().shutdown();
		}
		return response;
	}
}
