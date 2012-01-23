package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;

/**
 * UserVehicleHistoryId entity. @author MyEclipse Persistence Tools
 */

public class UserVehicleHistory implements java.io.Serializable {

	// Fields

	private Integer uvhId;
	private Integer userVehicleId;
	private Integer userId;
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
	private Integer modelId;
	private String vin;
	private String color;
	private Integer manufacturedYear;
    private UserVehicle userVehicle;
    private Set<VehicleTollUsage> tollDetails;
 
	// Constructors

	public UserVehicle getUserVehicle() {
		return userVehicle;
	}

	public void setUserVehicle(UserVehicle userVehicle) {
		this.userVehicle = userVehicle;
	}

	public Set<VehicleTollUsage> getTollDetails() {
		return tollDetails;
	}

	public void setTollDetails(Set<VehicleTollUsage> tollDetails) {
		this.tollDetails = tollDetails;
	}

	/** default constructor */
	public UserVehicleHistory() {
	}

	/** minimal constructor */
	public UserVehicleHistory(Integer uvhId, Integer userId,
			 String isActive, String registrationNo,
			String registeredState, Timestamp startDate, Timestamp endDate,
			String action) {
		this.uvhId = uvhId;
		this.userId = userId;
		this.isActive = isActive;
		this.registrationNo = registrationNo;
		this.registeredState = registeredState;
		this.startDate = startDate;
		this.endDate = endDate;
		this.action = action;
	}

	/** full constructor */
	public UserVehicleHistory(Integer uvhId, Integer userVehicleId,
			Integer userId,  String isActive,
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

	public Integer getUvhId() {
		return this.uvhId;
	}

	public void setUvhId(Integer uvhId) {
		this.uvhId = uvhId;
	}

	public Integer getUserVehicleId() {
		return this.userVehicleId;
	}

	public void setUserVehicleId(Integer userVehicleId) {
		this.userVehicleId = userVehicleId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public Timestamp getVehicleStartDate() {
		return this.vehicleStartDate;
	}

	public void setVehicleStartDate(Timestamp vehicleStartDate) {
		this.vehicleStartDate = vehicleStartDate;
	}

	public Timestamp getVehicleEndDate() {
		return this.vehicleEndDate;
	}

	public void setVehicleEndDate(Timestamp vehicleEndDate) {
		this.vehicleEndDate = vehicleEndDate;
	}

	public String getRegistrationNo() {
		return this.registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	public String getRegisteredState() {
		return this.registeredState;
	}

	public void setRegisteredState(String registeredState) {
		this.registeredState = registeredState;
	}

	public Integer getOwnerId() {
		return this.ownerId;
	}

	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
	}

	public String getUdf1() {
		return this.udf1;
	}

	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	public String getUdf2() {
		return this.udf2;
	}

	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	public String getUdf3() {
		return this.udf3;
	}

	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	public String getUdf4() {
		return this.udf4;
	}

	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	public String getUdf5() {
		return this.udf5;
	}

	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	public String getFlag1() {
		return this.flag1;
	}

	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	public String getFlag2() {
		return this.flag2;
	}

	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	public String getFlag3() {
		return this.flag3;
	}

	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	public String getFlag4() {
		return this.flag4;
	}

	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	public String getFlag5() {
		return this.flag5;
	}

	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	public Timestamp getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	public Integer getModelId() {
		return modelId;
	}

	public void setModelId(Integer modelId) {
		this.modelId = modelId;
	}

	public String getVin() {
		return vin;
	}

	public void setVin(String vin) {
		this.vin = vin;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Integer getManufacturedYear() {
		return manufacturedYear;
	}

	public void setManufacturedYear(Integer manufacturedYear) {
		this.manufacturedYear = manufacturedYear;
	}
	
}