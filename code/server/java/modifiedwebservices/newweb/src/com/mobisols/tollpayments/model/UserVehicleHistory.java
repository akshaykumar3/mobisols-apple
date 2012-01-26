package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;

// TODO: Auto-generated Javadoc
/**
 * UserVehicleHistoryId entity. @author MyEclipse Persistence Tools
 */

public class UserVehicleHistory implements java.io.Serializable {

	// Fields

	/** The uvh id. */
	private Integer uvhId;
	
	/** The user vehicle id. */
	private Integer userVehicleId;
	
	/** The user id. */
	private Integer userId;
	
	/** The is active. */
	private String isActive;
	
	/** The vehicle start date. */
	private Timestamp vehicleStartDate;
	
	/** The vehicle end date. */
	private Timestamp vehicleEndDate;
	
	/** The registration no. */
	private String registrationNo;
	
	/** The registered state. */
	private String registeredState;
	
	/** The owner id. */
	private Integer ownerId;
	
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
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The start date. */
	private Timestamp startDate;
	
	/** The end date. */
	private Timestamp endDate;
	
	/** The action. */
	private String action;
	
	/** The client id. */
	private Integer clientId;
	
	/** The model id. */
	private Integer modelId;
	
	/** The vin. */
	private String vin;
	
	/** The color. */
	private String color;
	
	/** The manufactured year. */
	private Integer manufacturedYear;
    
    /** The user vehicle. */
    private UserVehicle userVehicle;
    
    /** The toll details. */
    private Set<VehicleTollUsage> tollDetails;
 
	// Constructors

	/**
	 * Gets the user vehicle.
	 *
	 * @return the user vehicle
	 */
	public UserVehicle getUserVehicle() {
		return userVehicle;
	}

	/**
	 * Sets the user vehicle.
	 *
	 * @param userVehicle the new user vehicle
	 */
	public void setUserVehicle(UserVehicle userVehicle) {
		this.userVehicle = userVehicle;
	}

	/**
	 * Gets the toll details.
	 *
	 * @return the toll details
	 */
	public Set<VehicleTollUsage> getTollDetails() {
		return tollDetails;
	}

	/**
	 * Sets the toll details.
	 *
	 * @param tollDetails the new toll details
	 */
	public void setTollDetails(Set<VehicleTollUsage> tollDetails) {
		this.tollDetails = tollDetails;
	}

	/**
	 * default constructor.
	 */
	public UserVehicleHistory() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param uvhId the uvh id
	 * @param userId the user id
	 * @param isActive the is active
	 * @param registrationNo the registration no
	 * @param registeredState the registered state
	 * @param startDate the start date
	 * @param endDate the end date
	 * @param action the action
	 */
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

	/**
	 * full constructor.
	 *
	 * @param uvhId the uvh id
	 * @param userVehicleId the user vehicle id
	 * @param userId the user id
	 * @param isActive the is active
	 * @param vehicleStartDate the vehicle start date
	 * @param vehicleEndDate the vehicle end date
	 * @param registrationNo the registration no
	 * @param registeredState the registered state
	 * @param ownerId the owner id
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
	 * @param createdOn the created on
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 * @param startDate the start date
	 * @param endDate the end date
	 * @param action the action
	 * @param clientId the client id
	 */
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

	/**
	 * Gets the uvh id.
	 *
	 * @return the uvh id
	 */
	public Integer getUvhId() {
		return this.uvhId;
	}

	/**
	 * Sets the uvh id.
	 *
	 * @param uvhId the new uvh id
	 */
	public void setUvhId(Integer uvhId) {
		this.uvhId = uvhId;
	}

	/**
	 * Gets the user vehicle id.
	 *
	 * @return the user vehicle id
	 */
	public Integer getUserVehicleId() {
		return this.userVehicleId;
	}

	/**
	 * Sets the user vehicle id.
	 *
	 * @param userVehicleId the new user vehicle id
	 */
	public void setUserVehicleId(Integer userVehicleId) {
		this.userVehicleId = userVehicleId;
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
	 * Gets the vehicle start date.
	 *
	 * @return the vehicle start date
	 */
	public Timestamp getVehicleStartDate() {
		return this.vehicleStartDate;
	}

	/**
	 * Sets the vehicle start date.
	 *
	 * @param vehicleStartDate the new vehicle start date
	 */
	public void setVehicleStartDate(Timestamp vehicleStartDate) {
		this.vehicleStartDate = vehicleStartDate;
	}

	/**
	 * Gets the vehicle end date.
	 *
	 * @return the vehicle end date
	 */
	public Timestamp getVehicleEndDate() {
		return this.vehicleEndDate;
	}

	/**
	 * Sets the vehicle end date.
	 *
	 * @param vehicleEndDate the new vehicle end date
	 */
	public void setVehicleEndDate(Timestamp vehicleEndDate) {
		this.vehicleEndDate = vehicleEndDate;
	}

	/**
	 * Gets the registration no.
	 *
	 * @return the registration no
	 */
	public String getRegistrationNo() {
		return this.registrationNo;
	}

	/**
	 * Sets the registration no.
	 *
	 * @param registrationNo the new registration no
	 */
	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	/**
	 * Gets the registered state.
	 *
	 * @return the registered state
	 */
	public String getRegisteredState() {
		return this.registeredState;
	}

	/**
	 * Sets the registered state.
	 *
	 * @param registeredState the new registered state
	 */
	public void setRegisteredState(String registeredState) {
		this.registeredState = registeredState;
	}

	/**
	 * Gets the owner id.
	 *
	 * @return the owner id
	 */
	public Integer getOwnerId() {
		return this.ownerId;
	}

	/**
	 * Sets the owner id.
	 *
	 * @param ownerId the new owner id
	 */
	public void setOwnerId(Integer ownerId) {
		this.ownerId = ownerId;
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
	 * Gets the model id.
	 *
	 * @return the model id
	 */
	public Integer getModelId() {
		return modelId;
	}

	/**
	 * Sets the model id.
	 *
	 * @param modelId the new model id
	 */
	public void setModelId(Integer modelId) {
		this.modelId = modelId;
	}

	/**
	 * Gets the vin.
	 *
	 * @return the vin
	 */
	public String getVin() {
		return vin;
	}

	/**
	 * Sets the vin.
	 *
	 * @param vin the new vin
	 */
	public void setVin(String vin) {
		this.vin = vin;
	}

	/**
	 * Gets the color.
	 *
	 * @return the color
	 */
	public String getColor() {
		return color;
	}

	/**
	 * Sets the color.
	 *
	 * @param color the new color
	 */
	public void setColor(String color) {
		this.color = color;
	}

	/**
	 * Gets the manufactured year.
	 *
	 * @return the manufactured year
	 */
	public Integer getManufacturedYear() {
		return manufacturedYear;
	}

	/**
	 * Sets the manufactured year.
	 *
	 * @param manufacturedYear the new manufactured year
	 */
	public void setManufacturedYear(Integer manufacturedYear) {
		this.manufacturedYear = manufacturedYear;
	}
	
}