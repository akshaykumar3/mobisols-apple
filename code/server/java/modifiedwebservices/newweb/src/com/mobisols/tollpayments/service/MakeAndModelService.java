package com.mobisols.tollpayments.service;

// TODO: Auto-generated Javadoc
/**
 * The Interface MakeAndModelService.
 * Used to send the make and models of vehicle available in database.
 */
public interface MakeAndModelService {
	
	/**
	 * Gets the make and models available in the database.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @return the make and models as a json String similar to com.mobisols.ctollpayments.response.get.MakeAndModelResponse.
	 */
	public String getMakeAndModels(String request);
}
