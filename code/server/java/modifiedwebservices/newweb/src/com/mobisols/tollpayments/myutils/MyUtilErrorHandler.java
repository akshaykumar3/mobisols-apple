package com.mobisols.tollpayments.myutils;

// TODO: Auto-generated Javadoc
/**
 * The Interface MyUtilErrorHandler.
 */
public interface MyUtilErrorHandler {
	
	/** The json converter. */
	JsonConverter jsonConverter=null;
	
	/**
	 * Handle exception.
	 *
	 * @param request the request
	 * @param e the exception araised.
	 * @return the string
	 */
	public String handleException(String request,Exception e);
}
