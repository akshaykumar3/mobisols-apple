package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * TollPriceAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_price_all", catalog = "globaltoll", uniqueConstraints = @UniqueConstraint(columnNames = {
		"toll_location_id", "vehicle_type_id", "direction" }))
public class TollPriceAll implements java.io.Serializable {

	// Fields

	private Integer tollPriceId;
	private TollLocationAll tollLocationAll;
	private UserBasicAll userBasicAll;
	private VehicleTypeAll vehicleTypeAll;
	private String direction;
	private Double costPrice;
	private Double sellingPrice;
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

	// Constructors

	/** default constructor */
	public TollPriceAll() {
	}

	/** minimal constructor */
	public TollPriceAll(TollLocationAll tollLocationAll,
			UserBasicAll userBasicAll, VehicleTypeAll vehicleTypeAll,
			String direction, Double costPrice, Double sellingPrice,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.tollLocationAll = tollLocationAll;
		this.userBasicAll = userBasicAll;
		this.vehicleTypeAll = vehicleTypeAll;
		this.direction = direction;
		this.costPrice = costPrice;
		this.sellingPrice = sellingPrice;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public TollPriceAll(TollLocationAll tollLocationAll,
			UserBasicAll userBasicAll, VehicleTypeAll vehicleTypeAll,
			String direction, Double costPrice, Double sellingPrice,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Timestamp lastModifiedOn, Timestamp createdOn) {
		this.tollLocationAll = tollLocationAll;
		this.userBasicAll = userBasicAll;
		this.vehicleTypeAll = vehicleTypeAll;
		this.direction = direction;
		this.costPrice = costPrice;
		this.sellingPrice = sellingPrice;
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
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "toll_price_id", unique = true, nullable = false)
	public Integer getTollPriceId() {
		return this.tollPriceId;
	}

	public void setTollPriceId(Integer tollPriceId) {
		this.tollPriceId = tollPriceId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "toll_location_id", nullable = false)
	public TollLocationAll getTollLocationAll() {
		return this.tollLocationAll;
	}

	public void setTollLocationAll(TollLocationAll tollLocationAll) {
		this.tollLocationAll = tollLocationAll;
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
	@JoinColumn(name = "vehicle_type_id", nullable = false)
	public VehicleTypeAll getVehicleTypeAll() {
		return this.vehicleTypeAll;
	}

	public void setVehicleTypeAll(VehicleTypeAll vehicleTypeAll) {
		this.vehicleTypeAll = vehicleTypeAll;
	}

	@Column(name = "direction", nullable = false, length = 25)
	public String getDirection() {
		return this.direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	@Column(name = "cost_price", nullable = false, scale = 4)
	public Double getCostPrice() {
		return this.costPrice;
	}

	public void setCostPrice(Double costPrice) {
		this.costPrice = costPrice;
	}

	@Column(name = "selling_price", nullable = false, scale = 4)
	public Double getSellingPrice() {
		return this.sellingPrice;
	}

	public void setSellingPrice(Double sellingPrice) {
		this.sellingPrice = sellingPrice;
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

}