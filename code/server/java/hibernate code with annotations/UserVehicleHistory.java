package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * UserVehicleHistoryId entity. @author MyEclipse Persistence Tools
 */
@Entity
public class UserVehicleHistory implements java.io.Serializable {

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
	private Integer ownerId;
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

	// Constructors

	/** default constructor */
	public UserVehicleHistory() {
	}

	/** minimal constructor */
	public UserVehicleHistory(Integer uvhId, Integer userId,
			Integer vehicleTypeId, String isActive, String registrationNo,
			String registeredState, Timestamp startDate, Timestamp endDate,
			String action) {
		this.uvhId = uvhId;
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
	public UserVehicleHistory(Integer uvhId, Integer userVehicleId,
			Integer userId, Integer vehicleTypeId, String isActive,
			Timestamp vehicleStartDate, Timestamp vehicleEndDate,
			String registrationNo, String registeredState, Integer ownerId,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy, Timestamp startDate, Timestamp endDate,
			String action, Integer clientId) {
		this.uvhId = uvhId;
		this.userVehicleId = userVehicleId;
		this.userId = userId;
		this.vehicleTypeId = vehicleTypeId;
		this.isActive = isActive;
		this.vehicleStartDate = vehicleStartDate;
		this.vehicleEndDate = vehicleEndDate;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.ownerId = ownerId;
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
	}

	// Property accessors
	@Id
	@Column(name = "uvh_id", nullable = false)
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

	@Column(name = "owner_id")
	public Integer getOwnerId() {
		return this.ownerId;
	}

	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UserVehicleHistory))
			return false;
		UserVehicleHistory castOther = (UserVehicleHistory) other;

		return ((this.getUvhId() == castOther.getUvhId()) || (this.getUvhId() != null
				&& castOther.getUvhId() != null && this.getUvhId().equals(
				castOther.getUvhId())))
				&& ((this.getUserVehicleId() == castOther.getUserVehicleId()) || (this
						.getUserVehicleId() != null
						&& castOther.getUserVehicleId() != null && this
						.getUserVehicleId()
						.equals(castOther.getUserVehicleId())))
				&& ((this.getUserId() == castOther.getUserId()) || (this
						.getUserId() != null && castOther.getUserId() != null && this
						.getUserId().equals(castOther.getUserId())))
				&& ((this.getVehicleTypeId() == castOther.getVehicleTypeId()) || (this
						.getVehicleTypeId() != null
						&& castOther.getVehicleTypeId() != null && this
						.getVehicleTypeId()
						.equals(castOther.getVehicleTypeId())))
				&& ((this.getIsActive() == castOther.getIsActive()) || (this
						.getIsActive() != null
						&& castOther.getIsActive() != null && this
						.getIsActive().equals(castOther.getIsActive())))
				&& ((this.getVehicleStartDate() == castOther
						.getVehicleStartDate()) || (this.getVehicleStartDate() != null
						&& castOther.getVehicleStartDate() != null && this
						.getVehicleStartDate().equals(
								castOther.getVehicleStartDate())))
				&& ((this.getVehicleEndDate() == castOther.getVehicleEndDate()) || (this
						.getVehicleEndDate() != null
						&& castOther.getVehicleEndDate() != null && this
						.getVehicleEndDate().equals(
								castOther.getVehicleEndDate())))
				&& ((this.getRegistrationNo() == castOther.getRegistrationNo()) || (this
						.getRegistrationNo() != null
						&& castOther.getRegistrationNo() != null && this
						.getRegistrationNo().equals(
								castOther.getRegistrationNo())))
				&& ((this.getRegisteredState() == castOther
						.getRegisteredState()) || (this.getRegisteredState() != null
						&& castOther.getRegisteredState() != null && this
						.getRegisteredState().equals(
								castOther.getRegisteredState())))
				&& ((this.getOwnerId() == castOther.getOwnerId()) || (this
						.getOwnerId() != null && castOther.getOwnerId() != null && this
						.getOwnerId().equals(castOther.getOwnerId())))
				&& ((this.getUdf1() == castOther.getUdf1()) || (this.getUdf1() != null
						&& castOther.getUdf1() != null && this.getUdf1()
						.equals(castOther.getUdf1())))
				&& ((this.getUdf2() == castOther.getUdf2()) || (this.getUdf2() != null
						&& castOther.getUdf2() != null && this.getUdf2()
						.equals(castOther.getUdf2())))
				&& ((this.getUdf3() == castOther.getUdf3()) || (this.getUdf3() != null
						&& castOther.getUdf3() != null && this.getUdf3()
						.equals(castOther.getUdf3())))
				&& ((this.getUdf4() == castOther.getUdf4()) || (this.getUdf4() != null
						&& castOther.getUdf4() != null && this.getUdf4()
						.equals(castOther.getUdf4())))
				&& ((this.getUdf5() == castOther.getUdf5()) || (this.getUdf5() != null
						&& castOther.getUdf5() != null && this.getUdf5()
						.equals(castOther.getUdf5())))
				&& ((this.getFlag1() == castOther.getFlag1()) || (this
						.getFlag1() != null && castOther.getFlag1() != null && this
						.getFlag1().equals(castOther.getFlag1())))
				&& ((this.getFlag2() == castOther.getFlag2()) || (this
						.getFlag2() != null && castOther.getFlag2() != null && this
						.getFlag2().equals(castOther.getFlag2())))
				&& ((this.getFlag3() == castOther.getFlag3()) || (this
						.getFlag3() != null && castOther.getFlag3() != null && this
						.getFlag3().equals(castOther.getFlag3())))
				&& ((this.getFlag4() == castOther.getFlag4()) || (this
						.getFlag4() != null && castOther.getFlag4() != null && this
						.getFlag4().equals(castOther.getFlag4())))
				&& ((this.getFlag5() == castOther.getFlag5()) || (this
						.getFlag5() != null && castOther.getFlag5() != null && this
						.getFlag5().equals(castOther.getFlag5())))
				&& ((this.getCreatedOn() == castOther.getCreatedOn()) || (this
						.getCreatedOn() != null
						&& castOther.getCreatedOn() != null && this
						.getCreatedOn().equals(castOther.getCreatedOn())))
				&& ((this.getLastModifiedOn() == castOther.getLastModifiedOn()) || (this
						.getLastModifiedOn() != null
						&& castOther.getLastModifiedOn() != null && this
						.getLastModifiedOn().equals(
								castOther.getLastModifiedOn())))
				&& ((this.getLastModifiedBy() == castOther.getLastModifiedBy()) || (this
						.getLastModifiedBy() != null
						&& castOther.getLastModifiedBy() != null && this
						.getLastModifiedBy().equals(
								castOther.getLastModifiedBy())))
				&& ((this.getStartDate() == castOther.getStartDate()) || (this
						.getStartDate() != null
						&& castOther.getStartDate() != null && this
						.getStartDate().equals(castOther.getStartDate())))
				&& ((this.getEndDate() == castOther.getEndDate()) || (this
						.getEndDate() != null && castOther.getEndDate() != null && this
						.getEndDate().equals(castOther.getEndDate())))
				&& ((this.getAction() == castOther.getAction()) || (this
						.getAction() != null && castOther.getAction() != null && this
						.getAction().equals(castOther.getAction())))
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getUvhId() == null ? 0 : this.getUvhId().hashCode());
		result = 37
				* result
				+ (getUserVehicleId() == null ? 0 : this.getUserVehicleId()
						.hashCode());
		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		result = 37
				* result
				+ (getVehicleTypeId() == null ? 0 : this.getVehicleTypeId()
						.hashCode());
		result = 37 * result
				+ (getIsActive() == null ? 0 : this.getIsActive().hashCode());
		result = 37
				* result
				+ (getVehicleStartDate() == null ? 0 : this
						.getVehicleStartDate().hashCode());
		result = 37
				* result
				+ (getVehicleEndDate() == null ? 0 : this.getVehicleEndDate()
						.hashCode());
		result = 37
				* result
				+ (getRegistrationNo() == null ? 0 : this.getRegistrationNo()
						.hashCode());
		result = 37
				* result
				+ (getRegisteredState() == null ? 0 : this.getRegisteredState()
						.hashCode());
		result = 37 * result
				+ (getOwnerId() == null ? 0 : this.getOwnerId().hashCode());
		result = 37 * result
				+ (getUdf1() == null ? 0 : this.getUdf1().hashCode());
		result = 37 * result
				+ (getUdf2() == null ? 0 : this.getUdf2().hashCode());
		result = 37 * result
				+ (getUdf3() == null ? 0 : this.getUdf3().hashCode());
		result = 37 * result
				+ (getUdf4() == null ? 0 : this.getUdf4().hashCode());
		result = 37 * result
				+ (getUdf5() == null ? 0 : this.getUdf5().hashCode());
		result = 37 * result
				+ (getFlag1() == null ? 0 : this.getFlag1().hashCode());
		result = 37 * result
				+ (getFlag2() == null ? 0 : this.getFlag2().hashCode());
		result = 37 * result
				+ (getFlag3() == null ? 0 : this.getFlag3().hashCode());
		result = 37 * result
				+ (getFlag4() == null ? 0 : this.getFlag4().hashCode());
		result = 37 * result
				+ (getFlag5() == null ? 0 : this.getFlag5().hashCode());
		result = 37 * result
				+ (getCreatedOn() == null ? 0 : this.getCreatedOn().hashCode());
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37 * result
				+ (getStartDate() == null ? 0 : this.getStartDate().hashCode());
		result = 37 * result
				+ (getEndDate() == null ? 0 : this.getEndDate().hashCode());
		result = 37 * result
				+ (getAction() == null ? 0 : this.getAction().hashCode());
		result = 37 * result
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		return result;
	}

}