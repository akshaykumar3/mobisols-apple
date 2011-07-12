package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface ServicePlanList {
	List<UserServicePlanImpl> servicePlans=null;
	
	public String getServicePlan();
	public void setServicePlans(List<UserServicePlanImpl> servicePlans);
	public List<UserServicePlanImpl> getServicePlans();

}
