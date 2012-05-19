package com.mobisols.tollpayments.utils;

public class WebServiceLinks {
	private static String HOST = "mbtest.dyndns.dk";
	private static int PORT = 6004;
	private static String GET_TOLL_LOCATIONS = "http://mbtest.dyndns.dk:6004/devserver/services/secure/TollDetailsList";
	private static String HEART_BEAT = "http://mbtest.dyndns.dk:6004/devserver/services/secure/HeartBeat";
	private static String COMMAND_ACKNOWLEDGE = "http://mbtest.dyndns.dk:6004/devserver/services/secure/CommandAck";
	private static String DEACTIVATE = "http://mbtest.dyndns.dk:6004/devserver/services/secure/Activate";
	private static String CLIENTCONFIGURATION = "http://mbtest.dyndns.dk:6004/devserver/services/public/ClientConfiguration";
	
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
	
	public static String getCommandAck(){
		return COMMAND_ACKNOWLEDGE;
	}

	public static String getDEACTIVATE() {
		return DEACTIVATE;
	}

	public static String getCLIENTCONFIGURATION() {
		return CLIENTCONFIGURATION;
	}
	
	
}
