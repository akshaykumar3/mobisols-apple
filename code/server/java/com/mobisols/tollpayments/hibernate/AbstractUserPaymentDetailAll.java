package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * AbstractUserPaymentDetailAll entity provides the base persistence definition
 * of the UserPaymentDetailAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractUserPaymentDetailAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer updId;
	private ClientAll clientAll;
	private UserAll userAllByUserId;
	private UserAll userAllByUserId;
	private CcTypeAll ccTypeAll;
	private String ccAcName;
	private String ccNumber;
	private Integer ccExpMonth;
	private Date ccExpYear;
	private Integer ccCvv;
	private Integer bankRouting;
	private Long bankAccount;
	private String payPrefer;
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

	// Constructors

	/** default constructor */
	public AbstractUserPaymentDetailAll() {
	}

	/** minimal constructor */
	public AbstractUserPaymentDetailAll(String payPrefer) {
		this.payPrefer = payPrefer;
	}

	/** full constructor */
	public AbstractUserPaymentDetailAll(ClientAll clientAll,
			UserAll userAllByUserId, UserAll userAllByUserId,
			CcTypeAll ccTypeAll, String ccAcName, String ccNumber,
			Integer ccExpMonth, Date ccExpYear, Integer ccCvv,
			Integer bankRouting, Long bankAccount, String payPrefer,
			String address1, String address2, String city, String state,
			String country, String zip, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn) {
		this.clientAll = clientAll;
		this.userAllByUserId = userAllByUserId;
		this.userAllByUserId = userAllByUserId;
		this.ccTypeAll = ccTypeAll;
		this.ccAcName = ccAcName;
		this.ccNumber = ccNumber;
		this.ccExpMonth = ccExpMonth;
		this.ccExpYear = ccExpYear;
		this.ccCvv = ccCvv;
		this.bankRouting = bankRouting;
		this.bankAccount = bankAccount;
		this.payPrefer = payPrefer;
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
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "upd_id", unique = true, nullable = false)
	public Integer getUpdId() {
		return this.updId;
	}

	public void setUpdId(Integer updId) {
		this.updId = updId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "client_id")
	public ClientAll getClientAll() {
		return this.clientAll;
	}

	public void setClientAll(ClientAll clientAll) {
		this.clientAll = clientAll;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userPaymentDetailAllByUserId")
	public UserAll getUserAllByUserId() {
		return this.userAllByUserId;
	}

	public void setUserAllByUserId(UserAll userAllByUserId) {
		this.userAllByUserId = userAllByUserId;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "tollOperatorAllByUserId")
	public UserAll getUserAllByUserId() {
		return this.userAllByUserId;
	}

	public void setUserAllByUserId(UserAll userAllByUserId) {
		this.userAllByUserId = userAllByUserId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cc_type_id")
	public CcTypeAll getCcTypeAll() {
		return this.ccTypeAll;
	}

	public void setCcTypeAll(CcTypeAll ccTypeAll) {
		this.ccTypeAll = ccTypeAll;
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

	@Column(name = "pay_prefer", nullable = false, length = 1)
	public String getPayPrefer() {
		return this.payPrefer;
	}

	public void setPayPrefer(String payPrefer) {
		this.payPrefer = payPrefer;
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

	@Column(name = "zip", length = 10)
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

	@Column(name = "last_modified_on", unique = true, length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "created_on", unique = true, length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

}