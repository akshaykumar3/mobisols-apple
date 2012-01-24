package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * TollPriceHistoryId entity. @author MyEclipse Persistence Tools
 */

public class TollPriceHistory implements java.io.Serializable {

	// Fields

	/** The tph id. */
	private Integer tphId;
	
	/** The toll price id. */
	private Integer tollPriceId;
	
	/** The toll location id. */
	private Integer tollLocationId;
	
	/** The vehicle type id. */
	private Integer vehicleTypeId;
	
	/** The direction. */
	private String direction;
	
	/** The cost price. */
	private Double costPrice;
	
	/** The selling price. */
	private Double sellingPrice;
	
	/** The action. */
	private String action;
	
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
	
	/** The client id. */
	private Integer clientId;
	
	/** The toll price. */
	private TollPrice tollPrice;
	
	/** The toll location. */
	private TollLocation tollLocation;
	
	/** The vehicle type. */
	private VehicleType vehicleType;

	// Constructors

	/**
	 * Gets the toll price.
	 *
	 * @return the toll price
	 */
	public TollPrice getTollPrice() {
		return tollPrice;
	}

	/**
	 * Sets the toll price.
	 *
	 * @param tollPrice the new toll price
	 */
	public void setTollPrice(TollPrice tollPrice) {
		this.tollPrice = tollPrice;
	}

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


	/**
	 * default constructor.
	 */
	public TollPriceHistory() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param tphId the tph id
	 * @param tollPriceId the toll price id
	 * @param tollLocationId the toll location id
	 * @param vehicleTypeId the vehicle type id
	 * @param costPrice the cost price
	 * @param action the action
	 * @param startDate the start date
	 * @param endDate the end date
	 */
	public TollPriceHistory(Integer tphId, Integer tollPriceId,
			Integer tollLocationId, Integer vehicleTypeId, Double costPrice,
			String action, Timestamp startDate, Timestamp endDate) {
		this.tphId = tphId;
		this.tollPriceId = tollPriceId;
		this.tollLocationId = tollLocationId;
		this.vehicleTypeId = vehicleTypeId;
		this.costPrice = costPrice;
		this.action = action;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/**
	 * full constructor.
	 *
	 * @param tphId the tph id
	 * @param tollPriceId the toll price id
	 * @param tollLocationId the toll location id
	 * @param vehicleTypeId the vehicle type id
	 * @param direction the direction
	 * @param costPrice the cost price
	 * @param sellingPrice the selling price
	 * @param action the action
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
	 * @param clientId the client id
	 */
	public TollPriceHistory(Integer tphId, Integer tollPriceId,
			Integer tollLocationId, Integer vehicleTypeId, String direction,
			Double costPrice, Double sellingPrice, String action, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy, Timestamp startDate, Timestamp endDate,
			Integer clientId) {
		this.tphId = tphId;
		this.tollPriceId = tollPriceId;
		this.tollLocationId = tollLocationId;
		this.vehicleTypeId = vehicleTypeId;
		this.direction = direction;
		this.costPrice = costPrice;
		this.sellingPrice = sellingPrice;
		this.action = action;
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
		this.clientId = clientId;
	}

	// Property accessors

	/**
	 * Gets the tph id.
	 *
	 * @return the tph id
	 */
	public Integer getTphId() {
		return this.tphId;
	}

	/**
	 * Sets the tph id.
	 *
	 * @param tphId the new tph id
	 */
	public void setTphId(Integer tphId) {
		this.tphId = tphId;
	}

	/**
	 * Gets the toll price id.
	 *
	 * @return the toll price id
	 */
	public Integer getTollPriceId() {
		return this.tollPriceId;
	}

	/**
	 * Sets the toll price id.
	 *
	 * @param tollPriceId the new toll price id
	 */
	public void setTollPriceId(Integer tollPriceId) {
		this.tollPriceId = tollPriceId;
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
	 * Gets the vehicle type id.
	 *
	 * @return the vehicle type id
	 */
	public Integer getVehicleTypeId() {
		return this.vehicleTypeId;
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
	 * Gets the direction.
	 *
	 * @return the direction
	 */
	public String getDirection() {
		return this.direction;
	}

	/**
	 * Sets the direction.
	 *
	 * @param direction the new direction
	 */
	public void setDirection(String direction) {
		this.direction = direction;
	}

	/**
	 * Gets the cost price.
	 *
	 * @return the cost price
	 */
	public Double getCostPrice() {
		return this.costPrice;
	}

	/**
	 * Sets the cost price.
	 *
	 * @param costPrice the new cost price
	 */
	public void setCostPrice(Double costPrice) {
		this.costPrice = costPrice;
	}

	/**
	 * Gets the selling price.
	 *
	 * @return the selling price
	 */
	public Double getSellingPrice() {
		return this.sellingPrice;
	}

	/**
	 * Sets the selling price.
	 *
	 * @param sellingPrice the new selling price
	 */
	public void setSellingPrice(Double sellingPrice) {
		this.sellingPrice = sellingPrice;
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

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof TollPriceHistory))
			return false;
		TollPriceHistory castOther = (TollPriceHistory) other;

		return ((this.getTphId() == castOther.getTphId()) || (this.getTphId() != null
				&& castOther.getTphId() != null && this.getTphId().equals(
				castOther.getTphId())))
				&& ((this.getTollPriceId() == castOther.getTollPriceId()) || (this
						.getTollPriceId() != null
						&& castOther.getTollPriceId() != null && this
						.getTollPriceId().equals(castOther.getTollPriceId())))
				&& ((this.getTollLocationId() == castOther.getTollLocationId()) || (this
						.getTollLocationId() != null
						&& castOther.getTollLocationId() != null && this
						.getTollLocationId().equals(
								castOther.getTollLocationId())))
				&& ((this.getVehicleTypeId() == castOther.getVehicleTypeId()) || (this
						.getVehicleTypeId() != null
						&& castOther.getVehicleTypeId() != null && this
						.getVehicleTypeId()
						.equals(castOther.getVehicleTypeId())))
				&& ((this.getDirection() == castOther.getDirection()) || (this
						.getDirection() != null
						&& castOther.getDirection() != null && this
						.getDirection().equals(castOther.getDirection())))
				&& ((this.getCostPrice() == castOther.getCostPrice()) || (this
						.getCostPrice() != null
						&& castOther.getCostPrice() != null && this
						.getCostPrice().equals(castOther.getCostPrice())))
				&& ((this.getSellingPrice() == castOther.getSellingPrice()) || (this
						.getSellingPrice() != null
						&& castOther.getSellingPrice() != null && this
						.getSellingPrice().equals(castOther.getSellingPrice())))
				&& ((this.getAction() == castOther.getAction()) || (this
						.getAction() != null && castOther.getAction() != null && this
						.getAction().equals(castOther.getAction())))
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
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getTphId() == null ? 0 : this.getTphId().hashCode());
		result = 37
				* result
				+ (getTollPriceId() == null ? 0 : this.getTollPriceId()
						.hashCode());
		result = 37
				* result
				+ (getTollLocationId() == null ? 0 : this.getTollLocationId()
						.hashCode());
		result = 37
				* result
				+ (getVehicleTypeId() == null ? 0 : this.getVehicleTypeId()
						.hashCode());
		result = 37 * result
				+ (getDirection() == null ? 0 : this.getDirection().hashCode());
		result = 37 * result
				+ (getCostPrice() == null ? 0 : this.getCostPrice().hashCode());
		result = 37
				* result
				+ (getSellingPrice() == null ? 0 : this.getSellingPrice()
						.hashCode());
		result = 37 * result
				+ (getAction() == null ? 0 : this.getAction().hashCode());
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
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		return result;
	}

}