package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractVehicleMovementLog entity provides the base persistence definition of
 * the VehicleMovementLog entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractVehicleMovementLog extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private VehicleMovementLogId id;

	// Constructors

	/** default constructor */
	public AbstractVehicleMovementLog() {
	}

	/** full constructor */
	public AbstractVehicleMovementLog(VehicleMovementLogId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "vmlId", column = @Column(name = "vml_id", nullable = false)),
			@AttributeOverride(name = "vmlTypeId", column = @Column(name = "vml_type_id", nullable = false)),
			@AttributeOverride(name = "uvhId", column = @Column(name = "uvh_id", nullable = false)),
			@AttributeOverride(name = "geometry", column = @Column(name = "geometry", nullable = false)),
			@AttributeOverride(name = "timestamp", column = @Column(name = "timestamp", nullable = false, length = 19)),
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
	public VehicleMovementLogId getId() {
		return this.id;
	}

	public void setId(VehicleMovementLogId id) {
		this.id = id;
	}

}