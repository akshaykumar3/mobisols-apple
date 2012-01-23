package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ServicePlanDao;

public interface ServicePlanService {

	ServicePlanDao servicePlanDao=null;
	public String getServiceList(String request);
	
}
