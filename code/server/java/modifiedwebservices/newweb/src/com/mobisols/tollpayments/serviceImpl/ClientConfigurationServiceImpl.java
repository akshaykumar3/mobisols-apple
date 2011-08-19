package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.model.Component;
import com.mobisols.tollpayments.model.ComponentVersion;
import com.mobisols.tollpayments.model.Configuration;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.response.get.ClientConfigurationResponse;
import com.mobisols.tollpayments.service.ClientConfigurationService;

public class ClientConfigurationServiceImpl implements
		ClientConfigurationService {
	
	private ComponentDao componentDao;

	public ClientConfigurationResponse getClientConfig(ClientConfigurationRequest r )
	{
		ClientConfigurationResponse response=new ClientConfigurationResponse();
		Component c=componentDao.getComponent(r.getComponentName());
		ComponentVersion cv=null;
		for(Iterator it=c.getComponentVersion().iterator();it.hasNext();)
		{
			cv=(ComponentVersion) it.next();
			if(cv.getVersion()==r.getVersion())
			{
				break;
			}
		}
		if(cv==null)
			return null;
		Configuration config=null;
		for(Iterator it=cv.getConfiguration().iterator();it.hasNext();)
		{
			config=(Configuration) it.next();
			if(config.getKey()==r.getKey())
			{
				break;
			}
		}
		if(config==null)
			return null;
		response.setCompVersionId(cv.getCompVersionId());
		response.setKey(r.getKey());
		response.setValue(config.getValue());
		return response;
	}
	
	public ComponentDao getComponentDao() {
		return componentDao;
	}

	public void setComponentDao(ComponentDao componentDao) {
		this.componentDao = componentDao;
	}
	
	
}
