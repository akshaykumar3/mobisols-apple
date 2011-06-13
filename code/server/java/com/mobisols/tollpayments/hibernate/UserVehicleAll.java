package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * UserVehicleAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle_all", catalog = "globaltoll", uniqueConstraints = @UniqueConstraint(columnNames = {
		"user_id", "registration_no" }))
public class UserVehicleAll implements java.io.Serializable {

	// Fields

	private Integer userVehicleId;
	private UserAll userAllByLastModifiedBy;
	private OwnerTypeAll ownerTypeAll;
	private UserAll userAllByUserId;
	private VehicleTypeAll vehicleTypeAll;
	private Timestamp vehicleStartDate;
	private Timestamp vehicleEndDate;
	private String isActive;
	private String registrationNo;
	private String registeredState;
	private String udf1;
	private String udf2;
	private String udf3;
	private String udf4;
	private String udf5;
	private String flag1;
	private String flag2;
	private String flag3;
	private String flag4;
	private String flag5;
	private Timestamp lastModifiedOn;
	private Timestamp createdOn;

	// Constructors

	/** default constructor */
	public UserVehicleAll() {
	}

	/** minimal constructor */
	public UserVehicleAll(UserAll userAllByLastModifiedBy,
			UserAll userAllByUserId, VehicleTypeAll vehicleTypeAll,
			String isActive, String registrationNo, String registeredState,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.userAllByUserId = userAllByUserId;
		this.vehicleTypeAll = vehicleTypeAll;
		this.isActive = isActive;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public UserVehicleAll(UserAll userAllByLastModifiedBy,
			OwnerTypeAll ownerTypeAll, UserAll userAllByUserId,
			VehicleTypeAll vehicleTypeAll, Timestamp vehicleStartDate,
			Timestamp vehicleEndDate, String isActive, String registrationNo,
			String registeredState, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.ownerTypeAll = ownerTypeAll;
		this.userAllByUserId = userAllByUserId;
		this.vehicleTypeAll = vehicleTypeAll;
		this.vehicleStartDate = vehicleStartDate;
		this.vehicleEndDate = vehicleEndDate;
		this.isActive = isActive;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.udf1 = udf1;
		this.udf2 = udf2;
		this.udf3 = udf3;
		this.udf4 = udf4;
		this.udf5 = udf5;
		this.flag1 = flag1;
		this.flag2 = flag2;
		this.flag3 = flag3;
		this.flag4 = flag4;
		this.flag5 = flag5;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_vehicle_id", unique = true, nullable = false)
	public Integer getUserVehicleId() {
		return this.userVehicleId;
	}

	public void setUserVehicleId(Integer userVehicleId) {
		this.userVehicleId = userVehicleId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserAll getUserAllByLastModifiedBy() {
		return this.userAllByLastModifiedBy;
	}

	public void setUserAllByLastModifiedBy(UserAll userAllByLastModifiedBy) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "owner_type_id")
	public OwnerTypeAll getOwnerTypeAll() {
		return this.ownerTypeAll;
	}

	public void setOwnerTypeAll(OwnerTypeAll ownerTypeAll) {
		this.ownerTypeAll = ownerTypeAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", nullable = false)
	public UserAll getUserAllByUserId() {
		return this.userAllByUserId;
	}

	public void setUserAllByUserId(UserAll userAllByUserId) {
		this.userAllByUserId = userAllByUserId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "vehicle_type_id", nullable = false)
	public VehicleTypeAll getVehicleTypeAll() {
		return this.vehicleTypeAll;
	}

	public void setVehicleTypeAll(VehicleTypeAll vehicleTypeAll) {
		this.vehicleTypeAll = vehicleTypeAll;
	}

	@Column(name = "vehicle_start_date", length = 19)
	public Timestamp getVehicleStartDate() {
		return this.vehicleStartDate;
	}

	public void setVehicleStartDate(Timestamp vehicleStartDate) {
		this.vehicleStartDate = vehicleStartDate;
	}

	@Column(name = "vehicle_end_date", length = 19)
	public Timestamp getVehicleEndDate() {
		return this.vehicleEndDate;
	}

	public void setVehicleEndDate(Timestamp vehicleEndDate) {
		this.vehicleEndDate = vehicleEndDate;
	}

	@Column(name = "is_active", nullable = false, length = 1)
	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Column(name = "registration_no", nullable = false, length = 45)
	public String getRegistrationNo() {
		return this.registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	@Column(name = "registered_state", nullable = false, length = 45)
	public String getRegisteredState() {
		return this.registeredState;
	}

	public void setRegisteredState(String registeredState) {
		this.registeredState = registeredState;
	}

	@Column(name = "udf1", length = 1000)
	public String getUdf1() {
		return this.udf1;
	}

	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	@Column(name = "udf2", length = 1000)
	public String getUdf2() {
		return this.udf2;
	}

	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	@Column(name = "udf3", length = 1000)
	public String getUdf3() {
		return this.udf3;
	}

	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	@Column(name = "udf4", length = 1000)
	public String getUdf4() {
		return this.udf4;
	}

	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	@Column(name = "udf5", length = 1000)
	public String getUdf5() {
		return this.udf5;
	}

	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	@Column(name = "flag1", length = 1)
	public String getFlag1() {
		return this.flag1;
	}

	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	@Column(name = "flag2", length = 1)
	public String getFlag2() {
		return this.flag2;
	}

	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	@Column(name = "flag3", length = 1)
	public String getFlag3() {
		return this.flag3;
	}

	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	@Column(name = "flag4", length = 1)
	public String getFlag4() {
		return this.flag4;
	}

	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	@Column(name = "flag5", length = 1)
	public String getFlag5() {
		return this.flag5;
	}

	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	@Column(name = "last_modified_on", nullable = false, length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "created_on", nullable = false, length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

}