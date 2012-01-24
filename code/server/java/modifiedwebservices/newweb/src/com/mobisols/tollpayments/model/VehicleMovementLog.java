package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * VehicleMovementLogId entity. @author MyEclipse Persistence Tools
 */

public class VehicleMovementLog implements java.io.Serializable {

	// Fields

	/** The vml id. */
	private Integer vmlId;
	
	/** The vml type id. */
	private Integer vmlTypeId;
	
	/** The device history id. */
	private Integer deviceHistoryId;
	
	/** The toll location id. */
	private Integer tollLocationId;
	
	/** The geometry. */
	private String geometry;
	
	/** The timestamp. */
	private Timestamp timestamp;
	
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
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The client id. */
	private Integer clientId;
	
	/** The latitude. */
	private Double latitude;
	
	/** The longitude. */
	private Double longitude;
	
	/** The status. */
	private String status;
	
	/** The toll location. */
	private TollLocation tollLocation;
	
	/** The vml type. */
	private VmlType vmlType;
	
	/** The device history. */
	private DeviceHistory deviceHistory;
	
	/** The toll session id. */
	private String tollSessionId;
	
	/** The distance. */
	private Double distance;

	// Constructors

	/**
	 * Gets the toll location.
	 *
	 * @return the toll location
	 */
	public TollLocation getTollLocation() {
		return tollLocation;
	}

	/**
	 * Sets the toll location.
	 *
	 * @param tollLocation the new toll location
	 */
	public void setTollLocation(TollLocation tollLocation) {
		this.tollLocation = tollLocation;
	}


	/**
	 * Gets the vml type.
	 *
	 * @return the vml type
	 */
	public VmlType getVmlType() {
		return vmlType;
	}

	/**
	 * Sets the vml type.
	 *
	 * @param vmlType the new vml type
	 */
	public void setVmlType(VmlType vmlType) {
		this.vmlType = vmlType;
	}

	/**
	 * Sets the device history.
	 *
	 * @param deviceHistory the new device history
	 */
	public void setDeviceHistory(DeviceHistory deviceHistory) {
		this.deviceHistory = deviceHistory;
	}

	/**
	 * Gets the device history.
	 *
	 * @return the device history
	 */
	public DeviceHistory getDeviceHistory() {
		return deviceHistory;
	}

	/**
	 * Sets the user vehicle history.
	 *
	 * @param deviceHistory the new user vehicle history
	 */
	public void setUserVehicleHistory(DeviceHistory deviceHistory) {
		this.deviceHistory = deviceHistory;
	}

	/**
	 * default constructor.
	 */
	public VehicleMovementLog() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param vmlId the vml id
	 * @param vmlTypeId the vml type id
	 * @param deviceHistoryId the device history id
	 * @param geometry the geometry
	 * @param timestamp the timestamp
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 * @param createdOn the created on
	 */
	public VehicleMovementLog(Integer vmlId, Integer vmlTypeId,
			Integer deviceHistoryId, String geometry, Timestamp timestamp,
			Timestamp lastModifiedOn, Integer lastModifiedBy,
			Timestamp createdOn) {
		this.vmlId = vmlId;
		this.vmlTypeId = vmlTypeId;
		this.deviceHistoryId = deviceHistoryId;
		this.geometry = geometry;
		this.timestamp = timestamp;
		this.lastModifiedOn = lastModifiedOn;
		this.lastModifiedBy = lastModifiedBy;
		this.createdOn = createdOn;
	}

	/**
	 * full constructor.
	 *
	 * @param vmlId the vml id
	 * @param vmlTypeId the vml type id
	 * @param deviceHistoryId the device history id
	 * @param tollLocationId the toll location id
	 * @param geometry the geometry
	 * @param timestamp the timestamp
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
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 * @param createdOn the created on
	 * @param clientId the client id
	 * @param latitude the latitude
	 * @param longitude the longitude
	 * @param status the status
	 */
	public VehicleMovementLog(Integer vmlId, Integer vmlTypeId,
			Integer deviceHistoryId, Integer tollLocationId, String geometry,
			Timestamp timestamp, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp lastModifiedOn,
			Integer lastModifiedBy, Timestamp createdOn, Integer clientId,
			Double latitude, Double longitude, String status) {
		this.vmlId = vmlId;
		this.vmlTypeId = vmlTypeId;
		this.deviceHistoryId = deviceHistoryId;
		this.tollLocationId = tollLocationId;
		this.geometry = geometry;
		this.timestamp = timestamp;
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
		this.lastModifiedBy = lastModifiedBy;
		this.createdOn = createdOn;
		this.clientId = clientId;
		this.latitude = latitude;
		this.longitude = longitude;
		this.status = status;
	}

	// Property accessors

	/**
	 * Gets the vml id.
	 *
	 * @return the vml id
	 */
	public Integer getVmlId() {
		return this.vmlId;
	}

	/**
	 * Sets the vml id.
	 *
	 * @param vmlId the new vml id
	 */
	public void setVmlId(Integer vmlId) {
		this.vmlId = vmlId;
	}

	/**
	 * Gets the vml type id.
	 *
	 * @return the vml type id
	 */
	public Integer getVmlTypeId() {
		return this.vmlTypeId;
	}

	/**
	 * Sets the vml type id.
	 *
	 * @param vmlTypeId the new vml type id
	 */
	public void setVmlTypeId(Integer vmlTypeId) {
		this.vmlTypeId = vmlTypeId;
	}

	
	/**
	 * Gets the device history id.
	 *
	 * @return the device history id
	 */
	public Integer getDeviceHistoryId() {
		return deviceHistoryId;
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
	 * Gets the toll location id.
	 *
	 * @return the toll location id
	 */
	public Integer getTollLocationId() {
		return this.tollLocationId;
	}

	/**
	 * Sets the toll location id.
	 *
	 * @param tollLocationId the new toll location id
	 */
	public void setTollLocationId(Integer tollLocationId) {
		this.tollLocationId = tollLocationId;
	}

	/**
	 * Gets the geometry.
	 *
	 * @return the geometry
	 */
	public String getGeometry() {
		return this.geometry;
	}

	/**
	 * Sets the geometry.
	 *
	 * @param geometry the new geometry
	 */
	public void setGeometry(String geometry) {
		this.geometry = geometry;
	}

	/**
	 * Gets the timestamp.
	 *
	 * @return the timestamp
	 */
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	/**
	 * Sets the timestamp.
	 *
	 * @param timestamp the new timestamp
	 */
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
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
	 * Gets the latitude.
	 *
	 * @return the latitude
	 */
	public Double getLatitude() {
		return this.latitude;
	}

	/**
	 * Sets the latitude.
	 *
	 * @param latitude the new latitude
	 */
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	/**
	 * Gets the longitude.
	 *
	 * @return the longitude
	 */
	public Double getLongitude() {
		return this.longitude;
	}

	/**
	 * Sets the longitude.
	 *
	 * @param longitude the new longitude
	 */
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	/**
	 * Gets the status.
	 *
	 * @return the status
	 */
	public String getStatus() {
		return this.status;
	}

	/**
	 * Sets the status.
	 *
	 * @param status the new status
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * Gets the toll session id.
	 *
	 * @return the toll session id
	 */
	public String getTollSessionId() {
		return tollSessionId;
	}

	/**
	 * Sets the toll session id.
	 *
	 * @param tollSessionId the new toll session id
	 */
	public void setTollSessionId(String tollSessionId) {
		this.tollSessionId = tollSessionId;
	}

	/**
	 * Gets the distance.
	 *
	 * @return the distance
	 */
	public Double getDistance() {
		return distance;
	}

	/**
	 * Sets the distance.
	 *
	 * @param distance the new distance
	 */
	public void setDistance(Double distance) {
		this.distance = distance;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof VehicleMovementLog))
			return false;
		VehicleMovementLog castOther = (VehicleMovementLog) other;

		return ((this.getVmlId() == castOther.getVmlId()) || (this.getVmlId() != null
				&& castOther.getVmlId() != null && this.getVmlId().equals(
				castOther.getVmlId())))
				&& ((this.getVmlTypeId() == castOther.getVmlTypeId()) || (this
						.getVmlTypeId() != null
						&& castOther.getVmlTypeId() != null && this
						.getVmlTypeId().equals(castOther.getVmlTypeId())))
				&& ((this.getDeviceHistoryId() == castOther.getDeviceHistoryId()) || (this
						.getDeviceHistoryId() != null && castOther.getDeviceHistoryId() != null && this
						.getDeviceHistoryId().equals(castOther.getDeviceHistoryId())))
				&& ((this.getTollLocationId() == castOther.getTollLocationId()) || (this
						.getTollLocationId() != null
						&& castOther.getTollLocationId() != null && this
						.getTollLocationId().equals(
								castOther.getTollLocationId())))
				&& ((this.getGeometry() == castOther.getGeometry()) || (this
						.getGeometry() != null
						&& castOther.getGeometry() != null && this
						.getGeometry().equals(castOther.getGeometry())))
				&& ((this.getTimestamp() == castOther.getTimestamp()) || (this
						.getTimestamp() != null
						&& castOther.getTimestamp() != null && this
						.getTimestamp().equals(castOther.getTimestamp())))
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
				&& ((this.getCreatedOn() == castOther.getCreatedOn()) || (this
						.getCreatedOn() != null
						&& castOther.getCreatedOn() != null && this
						.getCreatedOn().equals(castOther.getCreatedOn())))
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())))
				&& ((this.getLatitude() == castOther.getLatitude()) || (this
						.getLatitude() != null
						&& castOther.getLatitude() != null && this
						.getLatitude().equals(castOther.getLatitude())))
				&& ((this.getLongitude() == castOther.getLongitude()) || (this
						.getLongitude() != null
						&& castOther.getLongitude() != null && this
						.getLongitude().equals(castOther.getLongitude())))
				&& ((this.getStatus() == castOther.getStatus()) || (this
						.getStatus() != null && castOther.getStatus() != null && this
						.getStatus().equals(castOther.getStatus())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getVmlId() == null ? 0 : this.getVmlId().hashCode());
		result = 37 * result
				+ (getVmlTypeId() == null ? 0 : this.getVmlTypeId().hashCode());
		result = 37 * result
				+ (getDeviceHistoryId() == null ? 0 : this.getDeviceHistoryId().hashCode());
		result = 37
				* result
				+ (getTollLocationId() == null ? 0 : this.getTollLocationId()
						.hashCode());
		result = 37 * result
				+ (getGeometry() == null ? 0 : this.getGeometry().hashCode());
		result = 37 * result
				+ (getTimestamp() == null ? 0 : this.getTimestamp().hashCode());
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
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37 * result
				+ (getCreatedOn() == null ? 0 : this.getCreatedOn().hashCode());
		result = 37 * result
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		result = 37 * result
				+ (getLatitude() == null ? 0 : this.getLatitude().hashCode());
		result = 37 * result
				+ (getLongitude() == null ? 0 : this.getLongitude().hashCode());
		result = 37 * result
				+ (getStatus() == null ? 0 : this.getStatus().hashCode());
		return result;
	}

}