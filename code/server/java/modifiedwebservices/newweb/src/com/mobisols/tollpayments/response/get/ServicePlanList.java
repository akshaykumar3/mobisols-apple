package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class ServicePlanList {

	private List<ServicePlan> servicePlanList;
	
	public ServicePlanList()
	{
		servicePlanList = new LinkedList();
	}

	public List<ServicePlan> getServicePlanList() {
		return servicePlanList;
	}

	public void setServicePlanList(List<ServicePlan> servicePlanList) {
		this.servicePlanList = servicePlanList;
	}
}
