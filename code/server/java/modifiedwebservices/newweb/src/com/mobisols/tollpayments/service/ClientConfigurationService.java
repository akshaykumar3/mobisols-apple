package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;

/**
 * The Interface ClientConfigurationService.
 * Used to respond to the client configuration requests.
 */
public interface ClientConfigurationService {

	/** The component dao. */
	ComponentDao componentDao=null;
	
	/**
	 * Gets the client configuration of the given version for a component.
	 * It returns the value of the key of the given component.
	 * If the key in request is null then it returns all the key value pairs.
	 *
	 * @param request the webservice request from which 
	 * @param r the request from the client which is a request parameter.
	 * @return the json format of client configuration similar to the object com.mobisols.tollpayments.response.get.ClientConfigurationResponse.
	 */
	public String getClientConfig(String request,ClientConfigurationRequest r );
}
