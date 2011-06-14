package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * UserPaymentDetailHistoryAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_payment_detail_history_all", catalog = "globaltoll")
public class UserPaymentDetailHistoryAll implements java.io.Serializable {

	// Fields

	private Integer updhId;
	private Integer updId;
	private Integer userId;
	private Integer ccTypeId;
	private String ccAcName;
	private String ccNumber;
	private Integer ccExpMonth;
	private Date ccExpYear;
	private Integer ccCvv;
	private Integer bankRouting;
	private Long bankAccount;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String ziip;
	private String payPrefer;
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
	private Timestamp lastModifiedBy;
	private Timestamp startDate;
	private Timestamp endDate;
	private Integer clientId;
	private Set<PaymentTransactionAll> paymentTransactionAlls = new HashSet<PaymentTransactionAll>(
			0);

	// Constructors

	/** default constructor */
	public UserPaymentDetailHistoryAll() {
	}

	/** minimal constructor */
	public UserPaymentDetailHistoryAll(String action, Timestamp startDate,
			Timestamp endDate) {
		this.action = action;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/** full constructor */
	public UserPaymentDetailHistoryAll(Integer updId, Integer userId,
			Integer ccTypeId, String ccAcName, String ccNumber,
			Integer ccExpMonth, Date ccExpYear, Integer ccCvv,
			Integer bankRouting, Long bankAccount, String address1,
			String address2, String city, String state, String country,
			String ziip, String payPrefer, String action, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Timestamp lastModifiedBy, Timestamp startDate, Timestamp endDate,
			Integer clientId, Set<PaymentTransactionAll> paymentTransactionAlls) {
		this.updId = updId;
		this.userId = userId;
		this.ccTypeId = ccTypeId;
		this.ccAcName = ccAcName;
		this.ccNumber = ccNumber;
		this.ccExpMonth = ccExpMonth;
		this.ccExpYear = ccExpYear;
		this.ccCvv = ccCvv;
		this.bankRouting = bankRouting;
		this.bankAccount = bankAccount;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.ziip = ziip;
		this.payPrefer = payPrefer;
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
		this.paymentTransactionAlls = paymentTransactionAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "updh_id", unique = true, nullable = false)
	public Integer getUpdhId() {
		return this.updhId;
	}

	public void setUpdhId(Integer updhId) {
		this.updhId = updhId;
	}

	@Column(name = "upd_id")
	public Integer getUpdId() {
		return this.updId;
	}

	public void setUpdId(Integer updId) {
		this.updId = updId;
	}

	@Column(name = "user_id")
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "cc_type_id")
	public Integer getCcTypeId() {
		return this.ccTypeId;
	}

	public void setCcTypeId(Integer ccTypeId) {
		this.ccTypeId = ccTypeId;
	}

	@Column(name = "cc_ac_name", length = 45)
	public String getCcAcName() {
		return this.ccAcName;
	}

	public void setCcAcName(String ccAcName) {
		this.ccAcName = ccAcName;
	}

	@Column(name = "cc_number", length = 15)
	public String getCcNumber() {
		return this.ccNumber;
	}

	public void setCcNumber(String ccNumber) {
		this.ccNumber = ccNumber;
	}

	@Column(name = "cc_exp_month")
	public Integer getCcExpMonth() {
		return this.ccExpMonth;
	}

	public void setCcExpMonth(Integer ccExpMonth) {
		this.ccExpMonth = ccExpMonth;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "cc_exp_year", length = 0)
	public Date getCcExpYear() {
		return this.ccExpYear;
	}

	public void setCcExpYear(Date ccExpYear) {
		this.ccExpYear = ccExpYear;
	}

	@Column(name = "cc_cvv")
	public Integer getCcCvv() {
		return this.ccCvv;
	}

	public void setCcCvv(Integer ccCvv) {
		this.ccCvv = ccCvv;
	}

	@Column(name = "bank_routing", precision = 9, scale = 0)
	public Integer getBankRouting() {
		return this.bankRouting;
	}

	public void setBankRouting(Integer bankRouting) {
		this.bankRouting = bankRouting;
	}

	@Column(name = "bank_account", precision = 10, scale = 0)
	public Long getBankAccount() {
		return this.bankAccount;
	}

	public void setBankAccount(Long bankAccount) {
		this.bankAccount = bankAccount;
	}

	@Column(name = "address1", length = 100)
	public String getAddress1() {
		return this.address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	@Column(name = "address2", length = 100)
	public String getAddress2() {
		return this.address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	@Column(name = "city", length = 100)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "state", length = 100)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "country", length = 100)
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "ziip", length = 10)
	public String getZiip() {
		return this.ziip;
	}

	public void setZiip(String ziip) {
		this.ziip = ziip;
	}

	@Column(name = "pay_prefer", length = 1)
	public String getPayPrefer() {
		return this.payPrefer;
	}

	public void setPayPrefer(String payPrefer) {
		this.payPrefer = payPrefer;
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

	@Column(name = "last_modified_by", length = 19)
	public Timestamp getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Timestamp lastModifiedBy) {
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

	@Column(name = "client_id")
	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userPaymentDetailHistoryAll")
	public Set<PaymentTransactionAll> getPaymentTransactionAlls() {
		return this.paymentTransactionAlls;
	}

	public void setPaymentTransactionAlls(
			Set<PaymentTransactionAll> paymentTransactionAlls) {
		this.paymentTransactionAlls = paymentTransactionAlls;
	}

}