package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.model.Component;
import com.mobisols.tollpayments.model.ComponentVersion;
import com.mobisols.tollpayments.model.Configuration;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.response.get.ClientConfigurationResponse;
import com.mobisols.tollpayments.service.ClientConfigurationService;

/**
 * The Class ClientConfigurationServiceImpl.
 * 
 */
public class ClientConfigurationServiceImpl implements
		ClientConfigurationService {
	
	/** The component dao. */
	private ComponentDao componentDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ClientConfigurationService#getClientConfig(java.lang.String, com.mobisols.tollpayments.request.get.ClientConfigurationRequest)
	 */
	public String getClientConfig(String request,ClientConfigurationRequest r )
	{
		ClientConfigurationResponse response=new ClientConfigurationResponse();
		String status="success";
		Component c=componentDao.getComponent(r.getComponentName());
		if(c==null)
		{
			status ="fail";
			response.getNotifications().add("Component does not exist");
			return jsonConverter.getJSON(request, status,null);
		}
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
		{
			status = "fail";
			response.getNotifications().add("Component version does not exists");
			return jsonConverter.getJSON(request, status,null);
		}
		response.setCompVersionId(cv.getCompVersionId());
		Configuration config=null;
		if(r.getKey()!=null)
		{
			for(Iterator it=cv.getConfiguration().iterator();it.hasNext();)
			{
				config=(Configuration) it.next();
				if(config.getKey()==r.getKey())
				{
					break;
				}
			}
		if(config==null)
		{
			status = "fail";
			response.getNotifications().add("Does have this jey value");
			return jsonConverter.getJSON(request, status,null);
		}
		response.getKeyValues().put(config.getKey(), config.getValue());
		}
		else
		{
			for(Iterator it=cv.getConfiguration().iterator();it.hasNext();)
			{
				config=(Configuration) it.next();
				response.getKeyValues().put(config.getKey(), config.getValue());
			}
		}
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the component dao.
	 *
	 * @return the component dao
	 */
	public ComponentDao getComponentDao() {
		return componentDao;
	}

	/**
	 * Sets the component dao.
	 *
	 * @param componentDao the new component dao
	 */
	public void setComponentDao(ComponentDao componentDao) {
		this.componentDao = componentDao;
	}

	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
