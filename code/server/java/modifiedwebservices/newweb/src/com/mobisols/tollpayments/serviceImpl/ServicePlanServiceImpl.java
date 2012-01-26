package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.ServicePlanDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.ServicePlan;
import com.mobisols.tollpayments.response.get.ServicePlanList;
import com.mobisols.tollpayments.service.ServicePlanService;

// TODO: Auto-generated Javadoc
/**
 * The Class ServicePlanServiceImpl.
 */
public class ServicePlanServiceImpl implements ServicePlanService {

	/** The service plan dao. */
	private ServicePlanDao servicePlanDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ServicePlanService#getServiceList(java.lang.String)
	 */
	@Override
	public String getServiceList(String request) {
		String status="success";
		ServicePlanList response= new ServicePlanList();
		List l=servicePlanDao.getServiceList();
		for(Iterator it = l.iterator();it.hasNext();)
	    {
			com.mobisols.tollpayments.model.ServicePlan s=(com.mobisols.tollpayments.model.ServicePlan) it.next();
	    	ServicePlan p=new ServicePlan();
	    	p.setDescription(s.getDescription());
	    	p.setName(s.getName());
	    	p.setTollOpName(s.getTollOperator().getName());
	    	response.getServicePlanList().add(p);
	    }
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the service plan dao.
	 *
	 * @return the service plan dao
	 */
	public ServicePlanDao getServicePlanDao() {
		return servicePlanDao;
	}
	
	/**
	 * Sets the service plan dao.
	 *
	 * @param userServiceDao the new service plan dao
	 */
	public void setServicePlanDao(ServicePlanDao userServiceDao) {
		this.servicePlanDao = userServiceDao;
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
