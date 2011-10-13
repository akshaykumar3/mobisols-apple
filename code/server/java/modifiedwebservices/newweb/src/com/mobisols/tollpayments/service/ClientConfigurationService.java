package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;

public interface ClientConfigurationService {

	ComponentDao componentDao=null;
	public String getClientConfig(String request,ClientConfigurationRequest r );
}
