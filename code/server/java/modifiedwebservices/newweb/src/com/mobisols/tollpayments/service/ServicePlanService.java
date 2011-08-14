package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.ServicePlanDao;
import com.mobisols.tollpayments.response.get.ServicePlanList;

public interface ServicePlanService {

	ServicePlanDao servicePlanDao=null;
	public ServicePlanList getServiceList();
	public ServicePlanDao getServicePlanDao();
	public void setServicePlanDao(ServicePlanDao userServiceDao);
}
