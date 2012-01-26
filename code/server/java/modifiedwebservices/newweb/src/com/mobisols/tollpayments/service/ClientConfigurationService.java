package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface ClientConfigurationService.
 */
public interface ClientConfigurationService {

	/** The component dao. */
	ComponentDao componentDao=null;
	
	/**
	 * Gets the client config.
	 *
	 * @param request the request
	 * @param r the r
	 * @return the client config
	 */
	public String getClientConfig(String request,ClientConfigurationRequest r );
}
