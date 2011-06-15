package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * UserVehicleHistoryAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle_history_all", catalog = "globaltoll")
public class UserVehicleHistoryAll implements java.io.Serializable {

	// Fields

	private Integer uvhId;
	private Integer userVehicleId;
	private Integer userId;
	private Integer vehicleTypeId;
	private String isActive;
	private Timestamp vehicleStartDate;
	private Timestamp vehicleEndDate;
	private String registrationNo;
	private String registeredState;
	private Integer ownerTypeId;
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
	private Timestamp createdOn;
	private Timestamp lastModifiedOn;
	private Integer lastModifiedBy;
	private Timestamp startDate;
	private Timestamp endDate;
	private String action;
	private Integer clientId;
	private Set<VehicleMovementLogAll> vehicleMovementLogAlls = new HashSet<VehicleMovementLogAll>(
			0);
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);

	// Constructors

	/** default constructor */
	public UserVehicleHistoryAll() {
	}

	/** minimal constructor */
	public UserVehicleHistoryAll(Integer userId, Integer vehicleTypeId,
			String isActive, String registrationNo, String registeredState,
			Timestamp startDate, Timestamp endDate, String action) {
		this.userId = userId;
		this.vehicleTypeId = vehicleTypeId;
		this.isActive = isActive;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.startDate = startDate;
		this.endDate = endDate;
		this.action = action;
	}

	/** full constructor */
	public UserVehicleHistoryAll(Integer userVehicleId, Integer userId,
			Integer vehicleTypeId, String isActive, Timestamp vehicleStartDate,
			Timestamp vehicleEndDate, String registrationNo,
			String registeredState, Integer ownerTypeId, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy, Timestamp startDate, Timestamp endDate,
			String action, Integer clientId,
			Set<VehicleMovementLogAll> vehicleMovementLogAlls,
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.userVehicleId = userVehicleId;
		this.userId = userId;
		this.vehicleTypeId = vehicleTypeId;
		this.isActive = isActive;
		this.vehicleStartDate = vehicleStartDate;
		this.vehicleEndDate = vehicleEndDate;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.ownerTypeId = ownerTypeId;
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
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
		this.lastModifiedBy = lastModifiedBy;
		this.startDate = startDate;
		this.endDate = endDate;
		this.action = action;
		this.clientId = clientId;
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "uvh_id", unique = true, nullable = false)
	public Integer getUvhId() {
		return this.uvhId;
	}

	public void setUvhId(Integer uvhId) {
		this.uvhId = uvhId;
	}

	@Column(name = "user_vehicle_id")
	public Integer getUserVehicleId() {
		return this.userVehicleId;
	}

	public void setUserVehicleId(Integer userVehicleId) {
		this.userVehicleId = userVehicleId;
	}

	@Column(name = "user_id", nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "vehicle_type_id", nullable = false)
	public Integer getVehicleTypeId() {
		return this.vehicleTypeId;
	}

	public void setVehicleTypeId(Integer vehicleTypeId) {
		this.vehicleTypeId = vehicleTypeId;
	}

	@Column(name = "is_active", nullable = false, length = 1)
	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
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

	@Column(name = "owner_type_id")
	public Integer getOwnerTypeId() {
		return this.ownerTypeId;
	}

	public void setOwnerTypeId(Integer ownerTypeId) {
		this.ownerTypeId = ownerTypeId;
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

	@Column(name = "created_on", length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	@Column(name = "last_modified_on", length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "last_modified_by")
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	@Column(name = "start_date", nullable = false, length = 19)
	public Timestamp getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	@Column(name = "end_date", nullable = false, length = 19)
	public Timestamp getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	@Column(name = "action", nullable = false, length = 20)
	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	@Column(name = "client_id")
	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userVehicleHistoryAll")
	public Set<VehicleMovementLogAll> getVehicleMovementLogAlls() {
		return this.vehicleMovementLogAlls;
	}

	public void setVehicleMovementLogAlls(
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userVehicleHistoryAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

}