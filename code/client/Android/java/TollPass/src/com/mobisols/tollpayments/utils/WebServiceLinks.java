package com.mobisols.tollpayments.utils;

public class WebServiceLinks {
	private static String HOST = "mbtest.dyndns.dk";
	private static int PORT = 6004;
	private static String GET_TOLL_LOCATIONS = "http://mbtest.dyndns.dk:6004/devserver/services/secure/TollDetailsList";
	private static String HEART_BEAT = "http://mbtest.dyndns.dk:6004/devserver/services/secure/HeartBeat";
	
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
