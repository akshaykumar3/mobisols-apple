package com.mobisols.tollpayments.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import com.mobisols.tollpayments.data.DeviceDetails;

import android.util.Log;

public class WebRequest {
	
	private static int TIMEOUT_MILLISEC = 10000;
	
	public static String getMethod(HttpGet request) {
        
		HttpParams httpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
        DefaultHttpClient client = new DefaultHttpClient(httpParams);
        
        DeviceDetails dd = DeviceDetails.getInstance();
        while(dd.getValue(DeviceDetails.KEY_USERNAME)==null || dd.getValue(DeviceDetails.KEY_PASSWORD)==null);
        client.getCredentialsProvider().setCredentials(new AuthScope(WebServiceLinks.getHost(), WebServiceLinks.getPort()), 
        		new UsernamePasswordCredentials(dd.getValue(DeviceDetails.KEY_USERNAME), dd.getValue(DeviceDetails.KEY_PASSWORD)));
        Log.d("HTTP REQUEST", "REQUEST before SENT FROM CLIENT");
		HttpResponse response = null;
		try {
			response = client.execute(request);
			Log.d("HTTP REQUEST", "REQUEST after SENT FROM CLIENT");
			Log.d("HTTP status",""+ response.getStatusLine());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception1");
		}
		BufferedReader rd;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			String line = rd.readLine();
			return line;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception2");
		}finally{
			client.getConnectionManager().shutdown();
		}
		return null;
	}
	
	public static String postMethod(HttpPost request){
		HttpParams httpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
		DefaultHttpClient client= new DefaultHttpClient(httpParams);
		
		//request.setHeader("Accept", "application/json");
		DeviceDetails dd = DeviceDetails.getInstance();
        client.getCredentialsProvider().setCredentials(new AuthScope(WebServiceLinks.getHost(), WebServiceLinks.getPort()), 
        		new UsernamePasswordCredentials(dd.getValue(DeviceDetails.KEY_USERNAME), dd.getValue(DeviceDetails.KEY_PASSWORD)));
        
		Log.d("HTTP REQUEST", "REQUEST before SENT FROM CLIENT");
		HttpResponse response = null;
		try {
			response = client.execute(request);
			Log.d("HTTP REQUEST", "REQUEST after SENT FROM CLIENT");
			Log.d("HTTP status",""+ response.getStatusLine());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}BufferedReader rd;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			String line = rd.readLine();
			return line;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}
}
