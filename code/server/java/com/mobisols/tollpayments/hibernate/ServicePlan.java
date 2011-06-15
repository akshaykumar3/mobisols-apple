package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * ServicePlan entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "service_plan", catalog = "globaltoll")
public class ServicePlan extends AbstractServicePlan implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ServicePlan() {
	}

	/** full constructor */
	public ServicePlan(ServicePlanId id) {
		super(id);
	}

}
