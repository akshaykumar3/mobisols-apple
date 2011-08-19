package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.response.get.ClientConfigurationResponse;


public interface ClientConfigurationService {

	ComponentDao componentDao=null;
	public ClientConfigurationResponse getClientConfig(ClientConfigurationRequest r );
}
