package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserVehicle entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle", catalog = "globaltoll")
public class UserVehicle implements java.io.Serializable {

	// Fields

	private UserVehicleId id;

	// Constructors

	/** default constructor */
	public UserVehicle() {
	}

	/** full constructor */
	public UserVehicle(UserVehicleId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "userVehicleId", column = @Column(name = "user_vehicle_id", nullable = false)),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id", nullable = false)),
			@AttributeOverride(name = "vehicleTypeId", column = @Column(name = "vehicle_type_id", nullable = false)),
			@AttributeOverride(name = "vehicleStartDate", column = @Column(name = "vehicle_start_date", length = 19)),
			@AttributeOverride(name = "vehicleEndDate", column = @Column(name = "vehicle_end_date", length = 19)),
			@AttributeOverride(name = "isActive", column = @Column(name = "is_active", nullable = false, length = 1)),
			@AttributeOverride(name = "registrationNo", column = @Column(name = "registration_no", nullable = false, length = 45)),
			@AttributeOverride(name = "registeredState", column = @Column(name = "registered_state", nullable = false, length = 45)),
			@AttributeOverride(name = "ownerTypeId", column = @Column(name = "owner_type_id")),
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
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)) })
	public UserVehicleId getId() {
		return this.id;
	}

	public void setId(UserVehicleId id) {
		this.id = id;
	}

}