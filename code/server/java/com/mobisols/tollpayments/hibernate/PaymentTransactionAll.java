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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Version;

/**
 * PaymentTransactionAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "payment_transaction_all", catalog = "globaltoll")
public class PaymentTransactionAll implements java.io.Serializable {

	// Fields

	private Integer ptranId;
	private Timestamp timestamp;
	private UserBasicAll userBasicAll;
	private UserBalanceLogAll userBalanceLogAllByToBlId;
	private UserPaymentDetailHistoryAll userPaymentDetailHistoryAll;
	private UserBalanceLogAll userBalanceLogAllByUserBlId;
	private String status;
	private Double amount;
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

	// Constructors

	/** default constructor */
	public PaymentTransactionAll() {
	}

	/** minimal constructor */
	public PaymentTransactionAll(UserBasicAll userBasicAll, String status,
			Double amount, Timestamp lastModifiedOn, Timestamp createdOn) {
		this.userBasicAll = userBasicAll;
		this.status = status;
		this.amount = amount;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public PaymentTransactionAll(UserBasicAll userBasicAll,
			UserBalanceLogAll userBalanceLogAllByToBlId,
			UserPaymentDetailHistoryAll userPaymentDetailHistoryAll,
			UserBalanceLogAll userBalanceLogAllByUserBlId, String status,
			Double amount, String udf1, String udf2, String udf3, String udf4,
			String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn, Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.userBasicAll = userBasicAll;
		this.userBalanceLogAllByToBlId = userBalanceLogAllByToBlId;
		this.userPaymentDetailHistoryAll = userPaymentDetailHistoryAll;
		this.userBalanceLogAllByUserBlId = userBalanceLogAllByUserBlId;
		this.status = status;
		this.amount = amount;
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
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ptran_id", unique = true, nullable = false)
	public Integer getPtranId() {
		return this.ptranId;
	}

	public void setPtranId(Integer ptranId) {
		this.ptranId = ptranId;
	}

	@Version
	@Column(name = "timestamp", nullable = false, length = 19)
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
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
	@JoinColumn(name = "to_bl_id")
	public UserBalanceLogAll getUserBalanceLogAllByToBlId() {
		return this.userBalanceLogAllByToBlId;
	}

	public void setUserBalanceLogAllByToBlId(
			UserBalanceLogAll userBalanceLogAllByToBlId) {
		this.userBalanceLogAllByToBlId = userBalanceLogAllByToBlId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "updh_id")
	public UserPaymentDetailHistoryAll getUserPaymentDetailHistoryAll() {
		return this.userPaymentDetailHistoryAll;
	}

	public void setUserPaymentDetailHistoryAll(
			UserPaymentDetailHistoryAll userPaymentDetailHistoryAll) {
		this.userPaymentDetailHistoryAll = userPaymentDetailHistoryAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_bl_id")
	public UserBalanceLogAll getUserBalanceLogAllByUserBlId() {
		return this.userBalanceLogAllByUserBlId;
	}

	public void setUserBalanceLogAllByUserBlId(
			UserBalanceLogAll userBalanceLogAllByUserBlId) {
		this.userBalanceLogAllByUserBlId = userBalanceLogAllByUserBlId;
	}

	@Column(name = "status", nullable = false, length = 10)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "amount", nullable = false, scale = 4)
	public Double getAmount() {
		return this.amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "paymentTransactionAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

}