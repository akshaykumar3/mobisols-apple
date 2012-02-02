package com.mobisols.tollpayments.service;


import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.ActivateRequest;

/**
 * The Interface ActivateService.
 * Used to activate or deactivate the user account.
 */
public interface ActivateService {
	
	
	/** The json converter. */
	JsonConverter jsonConverter=null;
	
	/**
	 * Used to activate or deactivate the user depending on the request. 
	 *
	 * @param request the webservice request from which the function is called.
	 * @param ar the ActivateRequest object that is received as a json request parameter.
	 * @param userName the user name 
	 * @return the ActivateServiceResponse as json format. 
	 */
	public String activateOrDeactivate(String request,ActivateRequest ar,String userName);
}
