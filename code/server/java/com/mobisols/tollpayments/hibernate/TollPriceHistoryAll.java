package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TollPriceHistoryAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_price_history_all", catalog = "globaltoll")
public class TollPriceHistoryAll implements java.io.Serializable {

	// Fields

	private Integer tphId;
	private Integer tollPriceId;
	private Integer tollLocationId;
	private Integer vehicleTypeId;
	private String direction;
	private Double costPrice;
	private Double sellingPrice;
	private String action;
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
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);

	// Constructors

	/** default constructor */
	public TollPriceHistoryAll() {
	}

	/** minimal constructor */
	public TollPriceHistoryAll(Integer tollPriceId, Integer tollLocationId,
			Integer vehicleTypeId, Double costPrice, String action,
			Timestamp startDate, Timestamp endDate) {
		this.tollPriceId = tollPriceId;
		this.tollLocationId = tollLocationId;
		this.vehicleTypeId = vehicleTypeId;
		this.costPrice = costPrice;
		this.action = action;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/** full constructor */
	public TollPriceHistoryAll(Integer tollPriceId, Integer tollLocationId,
			Integer vehicleTypeId, String direction, Double costPrice,
			Double sellingPrice, String action, String udf1, String udf2,
			String udf3, String udf4, String udf5, String flag1, String flag2,
			String flag3, String flag4, String flag5, Timestamp createdOn,
			Timestamp lastModifiedOn, Integer lastModifiedBy,
			Timestamp startDate, Timestamp endDate,
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
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
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "tph_id", unique = true, nullable = false)
	public Integer getTphId() {
		return this.tphId;
	}

	public void setTphId(Integer tphId) {
		this.tphId = tphId;
	}

	@Column(name = "toll_price_id", nullable = false)
	public Integer getTollPriceId() {
		return this.tollPriceId;
	}

	public void setTollPriceId(Integer tollPriceId) {
		this.tollPriceId = tollPriceId;
	}

	@Column(name = "toll_location_id", nullable = false)
	public Integer getTollLocationId() {
		return this.tollLocationId;
	}

	public void setTollLocationId(Integer tollLocationId) {
		this.tollLocationId = tollLocationId;
	}

	@Column(name = "vehicle_type_id", nullable = false)
	public Integer getVehicleTypeId() {
		return this.vehicleTypeId;
	}

	public void setVehicleTypeId(Integer vehicleTypeId) {
		this.vehicleTypeId = vehicleTypeId;
	}

	@Column(name = "direction", length = 25)
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

	@Column(name = "selling_price", scale = 4)
	public Double getSellingPrice() {
		return this.sellingPrice;
	}

	public void setSellingPrice(Double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	@Column(name = "action", nullable = false, length = 20)
	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
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

	@Column(name = "created_on", length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	@Column(name = "last_modified_on", length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "last_modified_by")
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	@Column(name = "start_date", nullable = false, length = 19)
	public Timestamp getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	@Column(name = "end_date", nullable = false, length = 19)
	public Timestamp getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tollPriceHistoryAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

}