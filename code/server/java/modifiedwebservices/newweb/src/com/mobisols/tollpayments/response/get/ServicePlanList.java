package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class ServicePlanList.
 */
public class ServicePlanList {

	/** The service plan list. */
	private List<ServicePlan> servicePlanList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new service plan list.
	 */
	public ServicePlanList()
	{
		servicePlanList = new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	/**
	 * Gets the notifications.
	 *
	 * @return the notifications
	 */
	public List<String> getNotifications() {
		return notifications;
	}

	/**
	 * Sets the notifications.
	 *
	 * @param notifications the new notifications
	 */
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	/**
	 * Gets the service plan list.
	 *
	 * @return the service plan list
	 */
	public List<ServicePlan> getServicePlanList() {
		return servicePlanList;
	}

	/**
	 * Sets the service plan list.
	 *
	 * @param servicePlanList the new service plan list
	 */
	public void setServicePlanList(List<ServicePlan> servicePlanList) {
		this.servicePlanList = servicePlanList;
	}
}
