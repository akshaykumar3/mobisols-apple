package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class ServicePlanList {

	private List<ServicePlan> servicePlanList;
	private List<String> notifications;
	private List<String> commands;
	
	public ServicePlanList()
	{
		servicePlanList = new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public List<ServicePlan> getServicePlanList() {
		return servicePlanList;
	}

	public void setServicePlanList(List<ServicePlan> servicePlanList) {
		this.servicePlanList = servicePlanList;
	}
}
