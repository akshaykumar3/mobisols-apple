package com.mobisols.tollpayments.myutils;

public interface MyUtilErrorHandler {
	JsonConverter jsonConverter=null;
	
	public String handleException(String request,Exception e);
}
