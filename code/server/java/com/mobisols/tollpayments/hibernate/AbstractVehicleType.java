package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractVehicleType entity provides the base persistence definition of the
 * VehicleType entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractVehicleType extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private VehicleTypeId id;

	// Constructors

	/** default constructor */
	public AbstractVehicleType() {
	}

	/** full constructor */
	public AbstractVehicleType(VehicleTypeId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "vehicleTypeId", column = @Column(name = "vehicle_type_id", nullable = false)),
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
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public VehicleTypeId getId() {
		return this.id;
	}

	public void setId(VehicleTypeId id) {
		this.id = id;
	}

}