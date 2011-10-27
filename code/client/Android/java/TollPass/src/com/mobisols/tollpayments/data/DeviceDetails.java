package com.mobisols.tollpayments.data;

import java.util.HashMap;

public class DeviceDetails {

	private static DeviceDetails deviceDetails = null;
	public static String KEY_USERNAME = "username";
	public static String KEY_PASSWORD = "password";
	public static String KEY_DEVICEID = "deviceid";
	public static String KEY_DEVICE_TYPE ="devicetype";
	
	private HashMap<String, String> hashmap;
	
	private DeviceDetails(){
		hashmap = new HashMap<String, String>();
	}
	
	public static DeviceDetails getInstance(){
		if(deviceDetails == null)
		{
			deviceDetails = new DeviceDetails();
		}
		return deviceDetails;
	}
	
	public String getValue(String key){
		return hashmap.get(key);
	}
	
	public void setValue(String key,String value){
		hashmap.put(key, value);
	}
}
