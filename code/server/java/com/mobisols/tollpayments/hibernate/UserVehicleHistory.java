package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserVehicleHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle_history", catalog = "globaltoll")
public class UserVehicleHistory implements java.io.Serializable {

	// Fields

	private UserVehicleHistoryId id;

	// Constructors

	/** default constructor */
	public UserVehicleHistory() {
	}

	/** full constructor */
	public UserVehicleHistory(UserVehicleHistoryId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "uvhId", column = @Column(name = "uvh_id", nullable = false)),
			@AttributeOverride(name = "userVehicleId", column = @Column(name = "user_vehicle_id")),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id", nullable = false)),
			@AttributeOverride(name = "vehicleTypeId", column = @Column(name = "vehicle_type_id", nullable = false)),
			@AttributeOverride(name = "isActive", column = @Column(name = "is_active", nullable = false, length = 1)),
			@AttributeOverride(name = "vehicleStartDate", column = @Column(name = "vehicle_start_date", length = 19)),
			@AttributeOverride(name = "vehicleEndDate", column = @Column(name = "vehicle_end_date", length = 19)),
			@AttributeOverride(name = "registrationNo", column = @Column(name = "registration_no", nullable = false, length = 45)),
			@AttributeOverride(name = "registeredState", column = @Column(name = "registered_state", nullable = false, length = 45)),
			@AttributeOverride(name = "ownerId", column = @Column(name = "owner_id")),
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
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", length = 19)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", length = 19)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by")),
			@AttributeOverride(name = "startDate", column = @Column(name = "start_date", nullable = false, length = 19)),
			@AttributeOverride(name = "endDate", column = @Column(name = "end_date", nullable = false, length = 19)),
			@AttributeOverride(name = "action", column = @Column(name = "action", nullable = false, length = 20)) })
	public UserVehicleHistoryId getId() {
		return this.id;
	}

	public void setId(UserVehicleHistoryId id) {
		this.id = id;
	}

}