package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractServicePlan entity provides the base persistence definition of the
 * ServicePlan entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractServicePlan extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private ServicePlanId id;

	// Constructors

	/** default constructor */
	public AbstractServicePlan() {
	}

	/** full constructor */
	public AbstractServicePlan(ServicePlanId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "servicePlanId", column = @Column(name = "service_plan_id", nullable = false)),
			@AttributeOverride(name = "tollOperatorId", column = @Column(name = "toll_operator_id")),
			@AttributeOverride(name = "name", column = @Column(name = "name", nullable = false, length = 100)),
			@AttributeOverride(name = "description", column = @Column(name = "description", length = 1000)),
			@AttributeOverride(name = "udf1", column = @Column(name = "udf1", length = 1000)),
			@AttributeOverride(name = "udf2", column = @Column(name = "udf2", length = 1000)),
			@AttributeOverride(name = "udf3", column = @Column(name = "udf3", length = 1000)),
			@AttributeOverride(name = "udf4", column = @Column(name = "udf4", length = 1000)),
			@AttributeOverride(name = "udf5", column = @Column(name = "udf5", length = 1000)),
			@AttributeOverride(name = "flag1", column = @Column(name = "flag1", length = 1)),
			@AttributeOverride(name = "flag2", column = @Column(name = "flag2", length = 1)),
			@AttributeOverride(name = "flag3", column = @Column(name = "flag3", length = 1)),
			@AttributeOverride(name = "flag4", column = @Column(name = "flag4", length = 1)),
			@AttributeOverride(name = "flag5", column = @Column(name = "flag5", length = 1)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public ServicePlanId getId() {
		return this.id;
	}

	public void setId(ServicePlanId id) {
		this.id = id;
	}

}