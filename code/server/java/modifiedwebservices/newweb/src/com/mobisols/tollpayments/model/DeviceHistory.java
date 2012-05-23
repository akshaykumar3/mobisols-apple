package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * DeviceHistoryId entity. @author MyEclipse Persistence Tools
 */

public class DeviceHistory implements java.io.Serializable {

	// Fields

	/** The device history id. */
	private Integer deviceHistoryId;
	
	/** The device id. */
	private Integer deviceId;
	
	/** The user id. */
	private Integer userId;
	
	/** The device uuid. */
	private String deviceUuid;
	
	/** The device type. */
	private String deviceType;
	
	/** The is active. */
	private String isActive;
	
	/** The last login time. */
	private Timestamp lastLoginTime;
	
	/** The udf1. */
	private String udf1;
	
	/** The udf2. */
	private String udf2;
	
	/** The udf3. */
	private String udf3;
	
	/** The udf4. */
	private String udf4;
	
	/** The udf5. */
	private String udf5;
	
	/** The flag1. */
	private String flag1;
	
	/** The flag2. */
	private String flag2;
	
	/** The flag3. */
	private String flag3;
	
	/** The flag4. */
	private String flag4;
	
	/** The flag5. */
	private String flag5;
	
	/** The client id. */
	private Integer clientId;
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The start date. */
	private Timestamp startDate;
	
	/** The end date. */
	private Timestamp endDate;
	
	/** The action. */
	private String action;
	
	/** The user. */
	private User user;
	
	/** The device. */
	private Device device;

	// Constructors


	/**
	 * Gets the user.
	 *
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * Sets the user.
	 *
	 * @param user the new user
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * Gets the device.
	 *
	 * @return the device
	 */
	public Device getDevice() {
		return device;
	}

	/**
	 * Sets the device.
	 *
	 * @param device the new device
	 */
	public void setDevice(Device device) {
		this.device = device;
	}

	/**
	 * default constructor.
	 */
	public DeviceHistory() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param deviceHistoryId the device history id
	 */
	public DeviceHistory(Integer deviceHistoryId) {
		this.deviceHistoryId = deviceHistoryId;
	}

	/**
	 * full constructor.
	 *
	 * @param deviceHistoryId the device history id
	 * @param deviceId the device id
	 * @param userId the user id
	 * @param deviceUuid the device uuid
	 * @param deviceType the device type
	 * @param vehicleId the vehicle id
	 * @param isActive the is active
	 * @param lastLoginTime the last login time
	 * @param udf1 the udf1
	 * @param udf2 the udf2
	 * @param udf3 the udf3
	 * @param udf4 the udf4
	 * @param udf5 the udf5
	 * @param flag1 the flag1
	 * @param flag2 the flag2
	 * @param flag3 the flag3
	 * @param flag4 the flag4
	 * @param flag5 the flag5
	 * @param clientId the client id
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 * @param startDate the start date
	 * @param endDate the end date
	 * @param action the action
	 */
	public DeviceHistory(Integer deviceHistoryId, Integer deviceId,
			Integer userId, String deviceUuid, String deviceType,
			Integer vehicleId, String isActive, Timestamp lastLoginTime,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Integer clientId, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn, Timestamp startDate,
			Timestamp endDate, String action) {
		this.deviceHistoryId = deviceHistoryId;
		this.deviceId = deviceId;
		this.userId = userId;
		this.deviceUuid = deviceUuid;
		this.deviceType = deviceType;
		this.isActive = isActive;
		this.lastLoginTime = lastLoginTime;
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
		this.clientId = clientId;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.startDate = startDate;
		this.endDate = endDate;
		this.action = action;
	}

	// Property accessors

	/**
	 * Gets the device history id.
	 *
	 * @return the device history id
	 */
	public Integer getDeviceHistoryId() {
		return this.deviceHistoryId;
	}

	/**
	 * Sets the device history id.
	 *
	 * @param deviceHistoryId the new device history id
	 */
	public void setDeviceHistoryId(Integer deviceHistoryId) {
		this.deviceHistoryId = deviceHistoryId;
	}

	/**
	 * Gets the device id.
	 *
	 * @return the device id
	 */
	public Integer getDeviceId() {
		return this.deviceId;
	}

	/**
	 * Sets the device id.
	 *
	 * @param deviceId the new device id
	 */
	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	/**
	 * Gets the user id.
	 *
	 * @return the user id
	 */
	public Integer getUserId() {
		return this.userId;
	}

	/**
	 * Sets the user id.
	 *
	 * @param userId the new user id
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * Gets the device uuid.
	 *
	 * @return the device uuid
	 */
	public String getDeviceUuid() {
		return this.deviceUuid;
	}

	/**
	 * Sets the device uuid.
	 *
	 * @param deviceUuid the new device uuid
	 */
	public void setDeviceUuid(String deviceUuid) {
		this.deviceUuid = deviceUuid;
	}

	/**
	 * Gets the device type.
	 *
	 * @return the device type
	 */
	public String getDeviceType() {
		return this.deviceType;
	}

	/**
	 * Sets the device type.
	 *
	 * @param deviceType the new device type
	 */
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}

	/**
	 * Gets the checks if is active.
	 *
	 * @return the checks if is active
	 */
	public String getIsActive() {
		return this.isActive;
	}

	/**
	 * Sets the checks if is active.
	 *
	 * @param isActive the new checks if is active
	 */
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	/**
	 * Gets the last login time.
	 *
	 * @return the last login time
	 */
	public Timestamp getLastLoginTime() {
		return this.lastLoginTime;
	}

	/**
	 * Sets the last login time.
	 *
	 * @param lastLoginTime the new last login time
	 */
	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	/**
	 * Gets the udf1.
	 *
	 * @return the udf1
	 */
	public String getUdf1() {
		return this.udf1;
	}

	/**
	 * Sets the udf1.
	 *
	 * @param udf1 the new udf1
	 */
	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	/**
	 * Gets the udf2.
	 *
	 * @return the udf2
	 */
	public String getUdf2() {
		return this.udf2;
	}

	/**
	 * Sets the udf2.
	 *
	 * @param udf2 the new udf2
	 */
	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	/**
	 * Gets the udf3.
	 *
	 * @return the udf3
	 */
	public String getUdf3() {
		return this.udf3;
	}

	/**
	 * Sets the udf3.
	 *
	 * @param udf3 the new udf3
	 */
	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	/**
	 * Gets the udf4.
	 *
	 * @return the udf4
	 */
	public String getUdf4() {
		return this.udf4;
	}

	/**
	 * Sets the udf4.
	 *
	 * @param udf4 the new udf4
	 */
	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	/**
	 * Gets the udf5.
	 *
	 * @return the udf5
	 */
	public String getUdf5() {
		return this.udf5;
	}

	/**
	 * Sets the udf5.
	 *
	 * @param udf5 the new udf5
	 */
	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	/**
	 * Gets the flag1.
	 *
	 * @return the flag1
	 */
	public String getFlag1() {
		return this.flag1;
	}

	/**
	 * Sets the flag1.
	 *
	 * @param flag1 the new flag1
	 */
	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	/**
	 * Gets the flag2.
	 *
	 * @return the flag2
	 */
	public String getFlag2() {
		return this.flag2;
	}

	/**
	 * Sets the flag2.
	 *
	 * @param flag2 the new flag2
	 */
	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	/**
	 * Gets the flag3.
	 *
	 * @return the flag3
	 */
	public String getFlag3() {
		return this.flag3;
	}

	/**
	 * Sets the flag3.
	 *
	 * @param flag3 the new flag3
	 */
	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	/**
	 * Gets the flag4.
	 *
	 * @return the flag4
	 */
	public String getFlag4() {
		return this.flag4;
	}

	/**
	 * Sets the flag4.
	 *
	 * @param flag4 the new flag4
	 */
	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	/**
	 * Gets the flag5.
	 *
	 * @return the flag5
	 */
	public String getFlag5() {
		return this.flag5;
	}

	/**
	 * Sets the flag5.
	 *
	 * @param flag5 the new flag5
	 */
	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	/**
	 * Gets the client id.
	 *
	 * @return the client id
	 */
	public Integer getClientId() {
		return this.clientId;
	}

	/**
	 * Sets the client id.
	 *
	 * @param clientId the new client id
	 */
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	/**
	 * Gets the last modified by.
	 *
	 * @return the last modified by
	 */
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	/**
	 * Sets the last modified by.
	 *
	 * @param lastModifiedBy the new last modified by
	 */
	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	/**
	 * Gets the last modified on.
	 *
	 * @return the last modified on
	 */
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	/**
	 * Sets the last modified on.
	 *
	 * @param lastModifiedOn the new last modified on
	 */
	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	/**
	 * Gets the created on.
	 *
	 * @return the created on
	 */
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	/**
	 * Sets the created on.
	 *
	 * @param createdOn the new created on
	 */
	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	/**
	 * Gets the start date.
	 *
	 * @return the start date
	 */
	public Timestamp getStartDate() {
		return this.startDate;
	}

	/**
	 * Sets the start date.
	 *
	 * @param startDate the new start date
	 */
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	/**
	 * Gets the end date.
	 *
	 * @return the end date
	 */
	public Timestamp getEndDate() {
		return this.endDate;
	}

	/**
	 * Sets the end date.
	 *
	 * @param endDate the new end date
	 */
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	/**
	 * Gets the action.
	 *
	 * @return the action
	 */
	public String getAction() {
		return this.action;
	}

	/**
	 * Sets the action.
	 *
	 * @param action the new action
	 */
	public void setAction(String action) {
		this.action = action;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DeviceHistory))
			return false;
		DeviceHistory castOther = (DeviceHistory) other;

		return ((this.getDeviceHistoryId() == castOther.getDeviceHistoryId()) || (this
				.getDeviceHistoryId() != null
				&& castOther.getDeviceHistoryId() != null && this
				.getDeviceHistoryId().equals(castOther.getDeviceHistoryId())))
				&& ((this.getDeviceId() == castOther.getDeviceId()) || (this
						.getDeviceId() != null
						&& castOther.getDeviceId() != null && this
						.getDeviceId().equals(castOther.getDeviceId())))
				&& ((this.getUserId() == castOther.getUserId()) || (this
						.getUserId() != null && castOther.getUserId() != null && this
						.getUserId().equals(castOther.getUserId())))
				&& ((this.getDeviceUuid() == castOther.getDeviceUuid()) || (this
						.getDeviceUuid() != null
						&& castOther.getDeviceUuid() != null && this
						.getDeviceUuid().equals(castOther.getDeviceUuid())))
				&& ((this.getDeviceType() == castOther.getDeviceType()) || (this
						.getDeviceType() != null
						&& castOther.getDeviceType() != null && this
						.getDeviceType().equals(castOther.getDeviceType())))
				&& ((this.getLastLoginTime() == castOther.getLastLoginTime()) || (this
						.getLastLoginTime() != null
						&& castOther.getLastLoginTime() != null && this
						.getLastLoginTime()
						.equals(castOther.getLastLoginTime())))
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
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())))
				&& ((this.getLastModifiedBy() == castOther.getLastModifiedBy()) || (this
						.getLastModifiedBy() != null
						&& castOther.getLastModifiedBy() != null && this
						.getLastModifiedBy().equals(
								castOther.getLastModifiedBy())))
				&& ((this.getLastModifiedOn() == castOther.getLastModifiedOn()) || (this
						.getLastModifiedOn() != null
						&& castOther.getLastModifiedOn() != null && this
						.getLastModifiedOn().equals(
								castOther.getLastModifiedOn())))
				&& ((this.getCreatedOn() == castOther.getCreatedOn()) || (this
						.getCreatedOn() != null
						&& castOther.getCreatedOn() != null && this
						.getCreatedOn().equals(castOther.getCreatedOn())))
				&& ((this.getStartDate() == castOther.getStartDate()) || (this
						.getStartDate() != null
						&& castOther.getStartDate() != null && this
						.getStartDate().equals(castOther.getStartDate())))
				&& ((this.getEndDate() == castOther.getEndDate()) || (this
						.getEndDate() != null && castOther.getEndDate() != null && this
						.getEndDate().equals(castOther.getEndDate())))
				&& ((this.getAction() == castOther.getAction()) || (this
						.getAction() != null && castOther.getAction() != null && this
						.getAction().equals(castOther.getAction())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getDeviceHistoryId() == null ? 0 : this.getDeviceHistoryId()
						.hashCode());
		result = 37 * result
				+ (getDeviceId() == null ? 0 : this.getDeviceId().hashCode());
		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		result = 37
				* result
				+ (getDeviceUuid() == null ? 0 : this.getDeviceUuid()
						.hashCode());
		result = 37
				* result
				+ (getDeviceType() == null ? 0 : this.getDeviceType()
						.hashCode());
		result = 37 * result
				+ (getIsActive() == null ? 0 : this.getIsActive().hashCode());
		result = 37
				* result
				+ (getLastLoginTime() == null ? 0 : this.getLastLoginTime()
						.hashCode());
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
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		result = 37
				* result
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
						.hashCode());
		result = 37 * result
				+ (getCreatedOn() == null ? 0 : this.getCreatedOn().hashCode());
		result = 37 * result
				+ (getStartDate() == null ? 0 : this.getStartDate().hashCode());
		result = 37 * result
				+ (getEndDate() == null ? 0 : this.getEndDate().hashCode());
		result = 37 * result
				+ (getAction() == null ? 0 : this.getAction().hashCode());
		return result;
	}

}