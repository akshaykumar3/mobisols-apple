package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TollLocationAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_location_all", catalog = "globaltoll")
public class TollLocationAll implements java.io.Serializable {

	// Fields

	private Integer tollLocationId;
	private UserBasicAll userBasicAll;
	private TollOperatorAll tollOperatorAll;
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
	private Timestamp lastModifiedOn;
	private Timestamp createdOn;
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);
	private Set<TollPriceAll> tollPriceAlls = new HashSet<TollPriceAll>(0);

	// Constructors

	/** default constructor */
	public TollLocationAll() {
	}

	/** minimal constructor */
	public TollLocationAll(Integer tollLocationId, UserBasicAll userBasicAll,
			TollOperatorAll tollOperatorAll, String geometry, String isCovered,
			String isCashOnly, Timestamp lastModifiedOn, Timestamp createdOn) {
		this.tollLocationId = tollLocationId;
		this.userBasicAll = userBasicAll;
		this.tollOperatorAll = tollOperatorAll;
		this.geometry = geometry;
		this.isCovered = isCovered;
		this.isCashOnly = isCashOnly;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public TollLocationAll(Integer tollLocationId, UserBasicAll userBasicAll,
			TollOperatorAll tollOperatorAll, String geometry, String isCovered,
			String isCashOnly, String address1, String address2, String city,
			String state, String country, String zip, String udf1, String udf2,
			String udf3, String udf4, String udf5, String flag1, String flag2,
			String flag3, String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn, Set<VehicleTollUsageAll> vehicleTollUsageAlls,
			Set<TollPriceAll> tollPriceAlls) {
		this.tollLocationId = tollLocationId;
		this.userBasicAll = userBasicAll;
		this.tollOperatorAll = tollOperatorAll;
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
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
		this.tollPriceAlls = tollPriceAlls;
	}

	// Property accessors
	@Id
	@Column(name = "toll_location_id", unique = true, nullable = false)
	public Integer getTollLocationId() {
		return this.tollLocationId;
	}

	public void setTollLocationId(Integer tollLocationId) {
		this.tollLocationId = tollLocationId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserBasicAll getUserBasicAll() {
		return this.userBasicAll;
	}

	public void setUserBasicAll(UserBasicAll userBasicAll) {
		this.userBasicAll = userBasicAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "toll_operator_id", nullable = false)
	public TollOperatorAll getTollOperatorAll() {
		return this.tollOperatorAll;
	}

	public void setTollOperatorAll(TollOperatorAll tollOperatorAll) {
		this.tollOperatorAll = tollOperatorAll;
	}

	@Column(name = "geometry", nullable = false)
	public String getGeometry() {
		return this.geometry;
	}

	public void setGeometry(String geometry) {
		this.geometry = geometry;
	}

	@Column(name = "is_covered", nullable = false, length = 1)
	public String getIsCovered() {
		return this.isCovered;
	}

	public void setIsCovered(String isCovered) {
		this.isCovered = isCovered;
	}

	@Column(name = "is_cash_only", nullable = false, length = 1)
	public String getIsCashOnly() {
		return this.isCashOnly;
	}

	public void setIsCashOnly(String isCashOnly) {
		this.isCashOnly = isCashOnly;
	}

	@Column(name = "address1", length = 45)
	public String getAddress1() {
		return this.address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	@Column(name = "address2", length = 45)
	public String getAddress2() {
		return this.address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	@Column(name = "city", length = 50)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "state", length = 50)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "country", length = 70)
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "zip", length = 30)
	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
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

	@Column(name = "last_modified_on", nullable = false, length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "created_on", nullable = false, length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tollLocationAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tollLocationAll")
	public Set<TollPriceAll> getTollPriceAlls() {
		return this.tollPriceAlls;
	}

	public void setTollPriceAlls(Set<TollPriceAll> tollPriceAlls) {
		this.tollPriceAlls = tollPriceAlls;
	}

}