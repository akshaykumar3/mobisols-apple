package com.mobisols.tollpayments.utils;

public class WebServiceLinks {
	private static String HOST = "42.106.156.30";
	private static int PORT = 8081;
	private static String GET_TOLL_LOCATIONS = "http://42.106.156.30:8081/newweb/services/TollDetailsList";
	private static String HEART_BEAT = "http://42.106.156.30:8081/newweb/services/HeartBeat";
	
	public static String getHost(){
		return HOST;
	}
	
	public static int getPort(){
		return PORT;
	}
	
	public static String getTollLocations(){
		return GET_TOLL_LOCATIONS;
	}
	
	public static String getHeartBeat(){
		return HEART_BEAT;
	}
}
