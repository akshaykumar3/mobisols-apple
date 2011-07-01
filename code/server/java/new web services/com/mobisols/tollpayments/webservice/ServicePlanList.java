package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface ServicePlanList {
	List<UserServicePlan> servicePlans=null;
	
	public String getServicePlan();
	public void setServicePlans(List<UserServicePlan> servicePlans);
	public List<UserServicePlan> getServicePlans();

}
