package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;

// TODO: Auto-generated Javadoc
/**
 * TollLocationId entity. @author MyEclipse Persistence Tools
 */

public class TollLocation implements java.io.Serializable {

	// Fields

	/** The toll location id. */
	private Integer tollLocationId;
	
	/** The toll operator id. */
	private Integer tollOperatorId;
	
	/** The geometry. */
	private String geometry;
	
	/** The is covered. */
	private String isCovered;
	
	/** The is cash only. */
	private String isCashOnly;
	
	/** The address1. */
	private String address1;
	
	/** The address2. */
	private String address2;
	
	/** The city. */
	private String city;
	
	/** The state. */
	private String state;
	
	/** The country. */
	private String country;
	
	/** The zip. */
	private String zip;
	
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
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The client id. */
	private Integer clientId;
	
	/** The latitude. */
	private Double latitude;
	
	/** The longitude. */
	private Double longitude;
	
	/** The direction. */
	private String direction;
	
	/** The type. */
	private String type;
	
	/** The name. */
	private String name;
	
	/** The description. */
	private String description;
	
	/** The toll operator. */
	private TollOperator tollOperator;
	
	/** The toll price. */
	private Set<TollPrice> tollPrice;
	
	/**
	 * Gets the toll operator.
	 *
	 * @return the toll operator
	 */
	public TollOperator getTollOperator() {
		return tollOperator;
	}

	/**
	 * Sets the toll operator.
	 *
	 * @param tollOperator the new toll operator
	 */
	public void setTollOperator(TollOperator tollOperator) {
		this.tollOperator = tollOperator;
	}

	

	// Constructors

	/**
	 * default constructor.
	 */
	public TollLocation() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param tollLocationId the toll location id
	 * @param tollOperatorId the toll operator id
	 * @param geometry the geometry
	 * @param isCovered the is covered
	 * @param isCashOnly the is cash only
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 */
	public TollLocation(Integer tollLocationId, Integer tollOperatorId,
			String geometry, String isCovered, String isCashOnly,
			Integer lastModifiedBy, Timestamp lastModifiedOn,
			Timestamp createdOn) {
		this.tollLocationId = tollLocationId;
		this.tollOperatorId = tollOperatorId;
		this.geometry = geometry;
		this.isCovered = isCovered;
		this.isCashOnly = isCashOnly;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/**
	 * full constructor.
	 *
	 * @param tollLocationId the toll location id
	 * @param tollOperatorId the toll operator id
	 * @param geometry the geometry
	 * @param isCovered the is covered
	 * @param isCashOnly the is cash only
	 * @param address1 the address1
	 * @param address2 the address2
	 * @param city the city
	 * @param state the state
	 * @param country the country
	 * @param zip the zip
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
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 * @param clientId the client id
	 * @param latitude the latitude
	 * @param longitude the longitude
	 * @param direction the direction
	 * @param type the type
	 */
	public TollLocation(Integer tollLocationId, Integer tollOperatorId,
			String geometry, String isCovered, String isCashOnly,
			String address1, String address2, String city, String state,
			String country, String zip, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn, Integer clientId,
			Double latitude, Double longitude, String direction, String type) {
		this.tollLocationId = tollLocationId;
		this.tollOperatorId = tollOperatorId;
		this.geometry = geometry;
		this.isCovered = isCovered;
		this.isCashOnly = isCashOnly;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zip = zip;
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
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.clientId = clientId;
		this.latitude = latitude;
		this.longitude = longitude;
		this.direction = direction;
		this.type = type;
	}

	// Property accessors

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
	 * Gets the toll operator id.
	 *
	 * @return the toll operator id
	 */
	public Integer getTollOperatorId() {
		return this.tollOperatorId;
	}

	/**
	 * Sets the toll operator id.
	 *
	 * @param tollOperatorId the new toll operator id
	 */
	public void setTollOperatorId(Integer tollOperatorId) {
		this.tollOperatorId = tollOperatorId;
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
	 * Gets the checks if is covered.
	 *
	 * @return the checks if is covered
	 */
	public String getIsCovered() {
		return this.isCovered;
	}

	/**
	 * Sets the checks if is covered.
	 *
	 * @param isCovered the new checks if is covered
	 */
	public void setIsCovered(String isCovered) {
		this.isCovered = isCovered;
	}

	/**
	 * Gets the checks if is cash only.
	 *
	 * @return the checks if is cash only
	 */
	public String getIsCashOnly() {
		return this.isCashOnly;
	}

	/**
	 * Sets the checks if is cash only.
	 *
	 * @param isCashOnly the new checks if is cash only
	 */
	public void setIsCashOnly(String isCashOnly) {
		this.isCashOnly = isCashOnly;
	}

	/**
	 * Gets the address1.
	 *
	 * @return the address1
	 */
	public String getAddress1() {
		return this.address1;
	}

	/**
	 * Sets the address1.
	 *
	 * @param address1 the new address1
	 */
	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	/**
	 * Gets the address2.
	 *
	 * @return the address2
	 */
	public String getAddress2() {
		return this.address2;
	}

	/**
	 * Sets the address2.
	 *
	 * @param address2 the new address2
	 */
	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	/**
	 * Gets the city.
	 *
	 * @return the city
	 */
	public String getCity() {
		return this.city;
	}

	/**
	 * Sets the city.
	 *
	 * @param city the new city
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * Gets the state.
	 *
	 * @return the state
	 */
	public String getState() {
		return this.state;
	}

	/**
	 * Sets the state.
	 *
	 * @param state the new state
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * Gets the country.
	 *
	 * @return the country
	 */
	public String getCountry() {
		return this.country;
	}

	/**
	 * Sets the country.
	 *
	 * @param country the new country
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * Gets the zip.
	 *
	 * @return the zip
	 */
	public String getZip() {
		return this.zip;
	}

	/**
	 * Sets the zip.
	 *
	 * @param zip the new zip
	 */
	public void setZip(String zip) {
		this.zip = zip;
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
	 * Gets the type.
	 *
	 * @return the type
	 */
	public String getType() {
		return this.type;
	}

	/**
	 * Sets the type.
	 *
	 * @param type the new type
	 */
	public void setType(String type) {
		this.type = type;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof TollLocation))
			return false;
		TollLocation castOther = (TollLocation) other;

		return ((this.getTollLocationId() == castOther.getTollLocationId()) || (this
				.getTollLocationId() != null
				&& castOther.getTollLocationId() != null && this
				.getTollLocationId().equals(castOther.getTollLocationId())))
				&& ((this.getTollOperatorId() == castOther.getTollOperatorId()) || (this
						.getTollOperatorId() != null
						&& castOther.getTollOperatorId() != null && this
						.getTollOperatorId().equals(
								castOther.getTollOperatorId())))
				&& ((this.getGeometry() == castOther.getGeometry()) || (this
						.getGeometry() != null
						&& castOther.getGeometry() != null && this
						.getGeometry().equals(castOther.getGeometry())))
				&& ((this.getIsCovered() == castOther.getIsCovered()) || (this
						.getIsCovered() != null
						&& castOther.getIsCovered() != null && this
						.getIsCovered().equals(castOther.getIsCovered())))
				&& ((this.getIsCashOnly() == castOther.getIsCashOnly()) || (this
						.getIsCashOnly() != null
						&& castOther.getIsCashOnly() != null && this
						.getIsCashOnly().equals(castOther.getIsCashOnly())))
				&& ((this.getAddress1() == castOther.getAddress1()) || (this
						.getAddress1() != null
						&& castOther.getAddress1() != null && this
						.getAddress1().equals(castOther.getAddress1())))
				&& ((this.getAddress2() == castOther.getAddress2()) || (this
						.getAddress2() != null
						&& castOther.getAddress2() != null && this
						.getAddress2().equals(castOther.getAddress2())))
				&& ((this.getCity() == castOther.getCity()) || (this.getCity() != null
						&& castOther.getCity() != null && this.getCity()
						.equals(castOther.getCity())))
				&& ((this.getState() == castOther.getState()) || (this
						.getState() != null && castOther.getState() != null && this
						.getState().equals(castOther.getState())))
				&& ((this.getCountry() == castOther.getCountry()) || (this
						.getCountry() != null && castOther.getCountry() != null && this
						.getCountry().equals(castOther.getCountry())))
				&& ((this.getZip() == castOther.getZip()) || (this.getZip() != null
						&& castOther.getZip() != null && this.getZip().equals(
						castOther.getZip())))
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
				&& ((this.getDirection() == castOther.getDirection()) || (this
						.getDirection() != null
						&& castOther.getDirection() != null && this
						.getDirection().equals(castOther.getDirection())))
				&& ((this.getType() == castOther.getType()) || (this.getType() != null
						&& castOther.getType() != null && this.getType()
						.equals(castOther.getType())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getTollLocationId() == null ? 0 : this.getTollLocationId()
						.hashCode());
		result = 37
				* result
				+ (getTollOperatorId() == null ? 0 : this.getTollOperatorId()
						.hashCode());
		result = 37 * result
				+ (getGeometry() == null ? 0 : this.getGeometry().hashCode());
		result = 37 * result
				+ (getIsCovered() == null ? 0 : this.getIsCovered().hashCode());
		result = 37
				* result
				+ (getIsCashOnly() == null ? 0 : this.getIsCashOnly()
						.hashCode());
		result = 37 * result
				+ (getAddress1() == null ? 0 : this.getAddress1().hashCode());
		result = 37 * result
				+ (getAddress2() == null ? 0 : this.getAddress2().hashCode());
		result = 37 * result
				+ (getCity() == null ? 0 : this.getCity().hashCode());
		result = 37 * result
				+ (getState() == null ? 0 : this.getState().hashCode());
		result = 37 * result
				+ (getCountry() == null ? 0 : this.getCountry().hashCode());
		result = 37 * result
				+ (getZip() == null ? 0 : this.getZip().hashCode());
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
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
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
				+ (getDirection() == null ? 0 : this.getDirection().hashCode());
		result = 37 * result
				+ (getType() == null ? 0 : this.getType().hashCode());
		return result;
	}

	/**
	 * Sets the toll price.
	 *
	 * @param tollPrice the new toll price
	 */
	public void setTollPrice(Set<TollPrice> tollPrice) {
		this.tollPrice = tollPrice;
	}

	/**
	 * Gets the toll price.
	 *
	 * @return the toll price
	 */
	public Set<TollPrice> getTollPrice() {
		return tollPrice;
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
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName() {
		return name;
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
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

}