package com.mobisols.tollpayments.utils;

import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class MyHttpClient {
	public static MyHttpClient myHttpClient = null;
	public HttpClient client;
	private static int TIMEOUT_MILLISEC = 10000;  // = 10 seconds
	
	private MyHttpClient(){
		HttpParams httpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
        client = new DefaultHttpClient(httpParams);
	}
	
	public static MyHttpClient getInstance(){
		if(myHttpClient == null)
		{
			myHttpClient = new MyHttpClient();
		}
		return myHttpClient;
	}
	
	public void setUsernamePassword(String username,String password){
		
	}
}
