package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ServicePlanDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface ServicePlanService.
 */
public interface ServicePlanService {

	/** The service plan dao. */
	ServicePlanDao servicePlanDao=null;
	
	/**
	 * Gets the service list.
	 *
	 * @param request the request
	 * @return the service list
	 */
	public String getServiceList(String request);
	
}
