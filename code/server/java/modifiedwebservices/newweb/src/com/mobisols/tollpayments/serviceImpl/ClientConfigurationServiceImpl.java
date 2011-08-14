package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.ClientConfigurationDao;
import com.mobisols.tollpayments.response.get.ClientConfigurationResponse;
import com.mobisols.tollpayments.service.ClientConfigurationService;

public class ClientConfigurationServiceImpl implements
		ClientConfigurationService {

	private ClientConfigurationDao clientConfigurationDao;

	public ClientConfigurationResponse getClientConfiguation(String name,String version,String key)
	{
		ClientConfigurationResponse response=new ClientConfigurationResponse();
		response = clientConfigurationDao.getValue(name,version,key);
		return response;
	}
	public ClientConfigurationDao getClientConfigurationDao() {
		return clientConfigurationDao;
	}

	public void setClientConfigurationDao(
			ClientConfigurationDao clinetConfigurationDao) {
		this.clientConfigurationDao = clinetConfigurationDao;
	}
}
