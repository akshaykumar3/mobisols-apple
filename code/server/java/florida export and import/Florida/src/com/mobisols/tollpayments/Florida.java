package com.mobisols.tollpayments;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;


public class Florida {
	private static DefaultHttpClient httpclient;
	public static void main(String args[]) throws ClientProtocolException, IOException{
		 httpclient = new DefaultHttpClient();
		 login();
		 //addVehicle();
    }
	
	public static void login() throws ClientProtocolException, IOException{
		try {
            
            HttpPost httpost = new HttpPost("https://www.tollbyplate.com/accountLoginAction");

            List <NameValuePair> nvps = new ArrayList <NameValuePair>();
            nvps.add(new BasicNameValuePair("accountNumber", "8406363"));
            nvps.add(new BasicNameValuePair("pin", "1947"));

            httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

            HttpResponse response = httpclient.execute(httpost);
            HttpEntity entity = response.getEntity();

            System.out.println("Login form get: " + response.getStatusLine());
            
            EntityUtils.toString(entity);

            System.out.println("Post logon cookies:");
            List<Cookie> cookies = httpclient.getCookieStore().getCookies();
            if (cookies.isEmpty()) {
                System.out.println("None");
            } else {
                for (int i = 0; i < cookies.size(); i++) {
                    System.out.println("- " + cookies.get(i).toString());
                }
            }

        } finally {
            // When HttpClient instance is no longer needed,
            // shut down the connection manager to ensure
            // immediate deallocation of all system resources
            httpclient.getConnectionManager().shutdown();
        }
	}
	
	public static void addVehicle() throws ClientProtocolException, IOException{
		try{
		HttpPost httpost = new HttpPost("https://tollbyplate/vehicleAddVehicleValidate");

        List <NameValuePair> nvps = new ArrayList <NameValuePair>();
        nvps.add(new BasicNameValuePair("plate", "5PVA105"));
        nvps.add(new BasicNameValuePair("year", "2005"));
        nvps.add(new BasicNameValuePair("make", "NISSAN"));
        nvps.add(new BasicNameValuePair("model", "PATH FINDE"));
        nvps.add(new BasicNameValuePair("color", "BLUE"));
        nvps.add(new BasicNameValuePair("plateState", "CA"));
        nvps.add(new BasicNameValuePair("startDate", "11/01/2011"));
        nvps.add(new BasicNameValuePair("startHour", "05"));
        nvps.add(new BasicNameValuePair("startMinute", "20"));
        nvps.add(new BasicNameValuePair("startAmPm", "p.m."));
        nvps.add(new BasicNameValuePair("endDate", ""));
        nvps.add(new BasicNameValuePair("endHour", ""));
        nvps.add(new BasicNameValuePair("endtMinute", ""));
        nvps.add(new BasicNameValuePair("endAmPm", ""));
        nvps.add(new BasicNameValuePair("rentalCar", "false"));
        nvps.add(new BasicNameValuePair("__checkbox_rentalCar", "false"));
        nvps.add(new BasicNameValuePair("vehSeqNum", ""));
        nvps.add(new BasicNameValuePair("addVehicle_submit", "Submit"));
        
        httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

        HttpResponse response = httpclient.execute(httpost);
        HttpEntity entity = response.getEntity();

        System.out.println("Login form get: " + response.getStatusLine());
        
        //EntityUtils.consume(entity);

        System.out.println("Post logon cookies:");
        List<Cookie> cookies = httpclient.getCookieStore().getCookies();
        if (cookies.isEmpty()) {
            System.out.println("None");
        } else {
            for (int i = 0; i < cookies.size(); i++) {
                System.out.println("- " + cookies.get(i).toString());
            }
        }
    } finally {
        // When HttpClient instance is no longer needed,
        // shut down the connection manager to ensure
        // immediate deallocation of all system resources
        httpclient.getConnectionManager().shutdown();
    }

	}
	
	public static HashMap<String,Vehicle> getVehicles() throws ClientProtocolException, IOException{
		 HashMap<String,Vehicle> hash = new HashMap<String, Vehicle>();
		 try{
				HttpGet httpget = new HttpGet("https://tollbyplate/getVehiclesAction");

				HttpResponse response = httpclient.execute(httpget);
		        HttpEntity entity = response.getEntity();

		        System.out.println("Login form get: " + response.getStatusLine());
		        
		        //EntityUtils.consume(entity);

		        System.out.println("Post logon cookies:");
		        List<Cookie> cookies = httpclient.getCookieStore().getCookies();
		        if (cookies.isEmpty()) {
		            System.out.println("None");
		        } else {
		            for (int i = 0; i < cookies.size(); i++) {
		                System.out.println("- " + cookies.get(i).toString());
		            }
		        }
		    } finally {
		        // When HttpClient instance is no longer needed,
		        // shut down the connection manager to ensure
		        // immediate deallocation of all system resources
		        httpclient.getConnectionManager().shutdown();
		    }

		 return hash;
	}
	
	public static void editVehicle() throws ClientProtocolException, IOException{
		try{
			HttpPost httpost = new HttpPost("https://tollbyplate/editVehicle");

	        List <NameValuePair> nvps = new ArrayList <NameValuePair>();
	        nvps.add(new BasicNameValuePair("plate", "5PVA105"));
	        nvps.add(new BasicNameValuePair("year", "2005"));
	        nvps.add(new BasicNameValuePair("make", "NISSAN"));
	        nvps.add(new BasicNameValuePair("model", "PATH FINDE"));
	        nvps.add(new BasicNameValuePair("color", "BLUE"));
	        nvps.add(new BasicNameValuePair("plateState", "CA"));
	        nvps.add(new BasicNameValuePair("startDate", "11/01/2011"));
	        nvps.add(new BasicNameValuePair("startHour", "05"));
	        nvps.add(new BasicNameValuePair("startMinute", "20"));
	        nvps.add(new BasicNameValuePair("startAmPm", "p.m."));
	        nvps.add(new BasicNameValuePair("endDate", ""));
	        nvps.add(new BasicNameValuePair("endHour", ""));
	        nvps.add(new BasicNameValuePair("endtMinute", ""));
	        nvps.add(new BasicNameValuePair("endAmPm", ""));
	        nvps.add(new BasicNameValuePair("rentalCar", "false"));
	        nvps.add(new BasicNameValuePair("__checkbox_rentalCar", "false"));
	        nvps.add(new BasicNameValuePair("vehSeqNum", ""));
	        nvps.add(new BasicNameValuePair("action:vehicleEditVehicleValidate", "Save Changes"));
	        
	        httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

	        HttpResponse response = httpclient.execute(httpost);
	        HttpEntity entity = response.getEntity();

	        System.out.println("Login form get: " + response.getStatusLine());
	        
	        //EntityUtils.consume(entity);

	        System.out.println("Post logon cookies:");
	        List<Cookie> cookies = httpclient.getCookieStore().getCookies();
	        if (cookies.isEmpty()) {
	            System.out.println("None");
	        } else {
	            for (int i = 0; i < cookies.size(); i++) {
	                System.out.println("- " + cookies.get(i).toString());
	            }
	        }

	    } finally {
	        // When HttpClient instance is no longer needed,
	        // shut down the connection manager to ensure
	        // immediate deallocation of all system resources
	        httpclient.getConnectionManager().shutdown();
	    }
	}
	
	public static void deleteVehicle() throws ClientProtocolException, IOException{
		try{
			HttpPost httpost = new HttpPost("https://tollbyplate/editVehicle");

	        List <NameValuePair> nvps = new ArrayList <NameValuePair>();
	        nvps.add(new BasicNameValuePair("plate", "5PVA105"));
	        nvps.add(new BasicNameValuePair("year", "2005"));
	        nvps.add(new BasicNameValuePair("make", "NISSAN"));
	        nvps.add(new BasicNameValuePair("model", "PATH FINDE"));
	        nvps.add(new BasicNameValuePair("color", "BLUE"));
	        nvps.add(new BasicNameValuePair("plateState", "CA"));
	        nvps.add(new BasicNameValuePair("startDate", "11/01/2011"));
	        nvps.add(new BasicNameValuePair("startHour", "05"));
	        nvps.add(new BasicNameValuePair("startMinute", "20"));
	        nvps.add(new BasicNameValuePair("startAmPm", "p.m."));
	        nvps.add(new BasicNameValuePair("endDate", ""));
	        nvps.add(new BasicNameValuePair("endHour", ""));
	        nvps.add(new BasicNameValuePair("endtMinute", ""));
	        nvps.add(new BasicNameValuePair("endAmPm", ""));
	        nvps.add(new BasicNameValuePair("rentalCar", "false"));
	        nvps.add(new BasicNameValuePair("__checkbox_rentalCar", "false"));
	        nvps.add(new BasicNameValuePair("vehSeqNum", ""));
	        nvps.add(new BasicNameValuePair("action:vehicleEditVehicleValidate", "End Subscription"));
	        
	        httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

	        HttpResponse response = httpclient.execute(httpost);
	        HttpEntity entity = response.getEntity();

	        System.out.println("Login form get: " + response.getStatusLine());
	        
	        //EntityUtils.consume(entity);

	        System.out.println("Post logon cookies:");
	        List<Cookie> cookies = httpclient.getCookieStore().getCookies();
	        if (cookies.isEmpty()) {
	            System.out.println("None");
	        } else {
	            for (int i = 0; i < cookies.size(); i++) {
	                System.out.println("- " + cookies.get(i).toString());
	            }
	        }
	    } finally {
	        // When HttpClient instance is no longer needed,
	        // shut down the connection manager to ensure
	        // immediate deallocation of all system resources
	        httpclient.getConnectionManager().shutdown();
	    }
	}
}
