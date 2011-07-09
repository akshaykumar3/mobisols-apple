package com.mobisols.tollpayments.hibernate.entity;

import java.sql.Timestamp;

/**
 * TollLocationId entity. @author MyEclipse Persistence Tools
 */

public class TollLocation implements java.io.Serializable {

	// Fields

	private Integer tollLocationId;
	private Integer tollOperatorId;
	private String geometry;
	private String isCovered;
	private String isCashOnly;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String zip;
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
	private Integer lastModifiedBy;
	private Timestamp lastModifiedOn;
	private Timestamp createdOn;
	private Integer clientId;
	private Double latitude;
	private Double longitude;
	private String direction;
	private String type;
	private TollOperator tollOperator;
	
	
	public TollOperator getTollOperator() {
		return tollOperator;
	}

	public void setTollOperator(TollOperator tollOperator) {
		this.tollOperator = tollOperator;
	}

	

	// Constructors

	/** default constructor */
	public TollLocation() {
	}

	/** minimal constructor */
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

	/** full constructor */
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

	public Integer getTollLocationId() {
		return this.tollLocationId;
	}

	public void setTollLocationId(Integer tollLocationId) {
		this.tollLocationId = tollLocationId;
	}

	public Integer getTollOperatorId() {
		return this.tollOperatorId;
	}

	public void setTollOperatorId(Integer tollOperatorId) {
		this.tollOperatorId = tollOperatorId;
	}

	public String getGeometry() {
		return this.geometry;
	}

	public void setGeometry(String geometry) {
		this.geometry = geometry;
	}

	public String getIsCovered() {
		return this.isCovered;
	}

	public void setIsCovered(String isCovered) {
		this.isCovered = isCovered;
	}

	public String getIsCashOnly() {
		return this.isCashOnly;
	}

	public void setIsCashOnly(String isCashOnly) {
		this.isCashOnly = isCashOnly;
	}

	public String getAddress1() {
		return this.address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return this.address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
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

	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	public Double getLatitude() {
		return this.latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return this.longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getDirection() {
		return this.direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

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

}