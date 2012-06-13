package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * The Class Model.
 */
public class Model implements Comparable<Model>{
	
	/** The model id. */
	private Integer modelId;
	
	/** The name. */
	private String name;
	
	/** The description. */
	private String description;
	
	/** The make id. */
	private Integer makeId;
	
	/** The vehicle type id. */
	private Integer vehicleTypeId;
	
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
	
	/** The client id. */
	private Integer clientId;
	
	/** The make. */
	private Make make;
	
	/** The vehicle type. */
	private VehicleType vehicleType;
	
	/**
	 * Gets the make.
	 *
	 * @return the make
	 */
	public Make getMake() {
		return make;
	}
	
	/**
	 * Sets the make.
	 *
	 * @param make the new make
	 */
	public void setMake(Make make) {
		this.make = make;
	}
	
	/**
	 * Instantiates a new model.
	 */
	public Model(){
		
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
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * Sets the name.
	 *
	 * @param name the new name
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	
	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * Gets the make id.
	 *
	 * @return the make id
	 */
	public Integer getMakeId() {
		return makeId;
	}
	
	/**
	 * Sets the make id.
	 *
	 * @param makeId the new make id
	 */
	public void setMakeId(Integer makeId) {
		this.makeId = makeId;
	}
	
	/**
	 * Gets the udf1.
	 *
	 * @return the udf1
	 */
	public String getUdf1() {
		return udf1;
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
		return udf2;
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
		return udf3;
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
		return udf4;
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
		return udf5;
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
		return flag1;
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
		return flag2;
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
		return flag3;
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
		return flag4;
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
		return flag5;
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
		return createdOn;
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
		return lastModifiedOn;
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
		return lastModifiedBy;
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
	 * Gets the client id.
	 *
	 * @return the client id
	 */
	public Integer getClientId() {
		return clientId;
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
	 * Gets the vehicle type id.
	 *
	 * @return the vehicle type id
	 */
	public Integer getVehicleTypeId() {
		return vehicleTypeId;
	}
	
	/**
	 * Sets the vehicle type id.
	 *
	 * @param vehicleTypeId the new vehicle type id
	 */
	public void setVehicleTypeId(Integer vehicleTypeId) {
		this.vehicleTypeId = vehicleTypeId;
	}
	
	/**
	 * Gets the vehicle type.
	 *
	 * @return the vehicle type
	 */
	public VehicleType getVehicleType() {
		return vehicleType;
	}
	
	/**
	 * Sets the vehicle type.
	 *
	 * @param vehicleType the new vehicle type
	 */
	public void setVehicleType(VehicleType vehicleType) {
		this.vehicleType = vehicleType;
	}

	/* (non-Javadoc)
	 * @see java.lang.Comparable#compareTo(java.lang.Object)
	 */
	@Override
	public int compareTo(Model o) {
		return this.name.compareTo(o.getName());
	}

}
