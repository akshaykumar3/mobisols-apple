package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * UserPaymentDetailHistoryId entity. @author MyEclipse Persistence Tools
 */

public class UserPaymentDetailHistory implements java.io.Serializable {

	// Fields

	/** The updh id. */
	private Integer updhId;
	
	/** The upd id. */
	private Integer updId;
	
	/** The user id. */
	private Integer userId;
	
	/** The cc type id. */
	private Integer ccTypeId;
	
	/** The cc ac name. */
	private String ccAcName;
	
	/** The cc number. */
	private String ccNumber;
	
	/** The cc exp month. */
	private Integer ccExpMonth;
	
	/** The cc exp year. */
	private Integer ccExpYear;
	
	/** The cc cvv. */
	private Integer ccCvv;
	
	/** The bank routing. */
	private Integer bankRouting;
	
	/** The bank account. */
	private Long bankAccount;
	
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
	
	/** The pay prefer. */
	private String payPrefer;
	
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
	
	/** The user payment detail. */
	private UserPaymentDetail userPaymentDetail;

	// Constructors

	/**
	 * Gets the user payment detail.
	 *
	 * @return the user payment detail
	 */
	public UserPaymentDetail getUserPaymentDetail() {
		return userPaymentDetail;
	}

	/**
	 * Sets the user payment detail.
	 *
	 * @param userPaymentDetail the new user payment detail
	 */
	public void setUserPaymentDetail(UserPaymentDetail userPaymentDetail) {
		this.userPaymentDetail = userPaymentDetail;
	}

	/**
	 * default constructor.
	 */
	public UserPaymentDetailHistory() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param updhId the updh id
	 * @param action the action
	 * @param startDate the start date
	 * @param endDate the end date
	 */
	public UserPaymentDetailHistory(Integer updhId, String action,
			Timestamp startDate, Timestamp endDate) {
		this.updhId = updhId;
		this.action = action;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/**
	 * full constructor.
	 *
	 * @param updhId the updh id
	 * @param updId the upd id
	 * @param userId the user id
	 * @param ccTypeId the cc type id
	 * @param ccAcName the cc ac name
	 * @param ccNumber the cc number
	 * @param ccExpMonth the cc exp month
	 * @param ccExpYear the cc exp year
	 * @param ccCvv the cc cvv
	 * @param bankRouting the bank routing
	 * @param bankAccount the bank account
	 * @param address1 the address1
	 * @param address2 the address2
	 * @param city the city
	 * @param state the state
	 * @param country the country
	 * @param zip the zip
	 * @param payPrefer the pay prefer
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
	public UserPaymentDetailHistory(Integer updhId, Integer updId,
			Integer userId, Integer ccTypeId, String ccAcName, String ccNumber,
			Integer ccExpMonth, Integer ccExpYear, Integer ccCvv,
			Integer bankRouting, Long bankAccount, String address1,
			String address2, String city, String state, String country,
			String zip, String payPrefer, String action, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy, Timestamp startDate, Timestamp endDate,
			Integer clientId) {
		this.updhId = updhId;
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
		this.zip = zip;
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
	}

	// Property accessors

	/**
	 * Gets the updh id.
	 *
	 * @return the updh id
	 */
	public Integer getUpdhId() {
		return this.updhId;
	}

	/**
	 * Sets the updh id.
	 *
	 * @param updhId the new updh id
	 */
	public void setUpdhId(Integer updhId) {
		this.updhId = updhId;
	}

	/**
	 * Gets the upd id.
	 *
	 * @return the upd id
	 */
	public Integer getUpdId() {
		return this.updId;
	}

	/**
	 * Sets the upd id.
	 *
	 * @param updId the new upd id
	 */
	public void setUpdId(Integer updId) {
		this.updId = updId;
	}

	/**
	 * Gets the user id.
	 *
	 * @return the user id
	 */
	public Integer getUserId() {
		return this.userId;
	}

	/**
	 * Sets the user id.
	 *
	 * @param userId the new user id
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * Gets the cc type id.
	 *
	 * @return the cc type id
	 */
	public Integer getCcTypeId() {
		return this.ccTypeId;
	}

	/**
	 * Sets the cc type id.
	 *
	 * @param ccTypeId the new cc type id
	 */
	public void setCcTypeId(Integer ccTypeId) {
		this.ccTypeId = ccTypeId;
	}

	/**
	 * Gets the cc ac name.
	 *
	 * @return the cc ac name
	 */
	public String getCcAcName() {
		return this.ccAcName;
	}

	/**
	 * Sets the cc ac name.
	 *
	 * @param ccAcName the new cc ac name
	 */
	public void setCcAcName(String ccAcName) {
		this.ccAcName = ccAcName;
	}

	/**
	 * Gets the cc number.
	 *
	 * @return the cc number
	 */
	public String getCcNumber() {
		return this.ccNumber;
	}

	/**
	 * Sets the cc number.
	 *
	 * @param ccNumber the new cc number
	 */
	public void setCcNumber(String ccNumber) {
		this.ccNumber = ccNumber;
	}

	/**
	 * Gets the cc exp month.
	 *
	 * @return the cc exp month
	 */
	public Integer getCcExpMonth() {
		return this.ccExpMonth;
	}

	/**
	 * Sets the cc exp month.
	 *
	 * @param ccExpMonth the new cc exp month
	 */
	public void setCcExpMonth(Integer ccExpMonth) {
		this.ccExpMonth = ccExpMonth;
	}

	/**
	 * Gets the cc exp year.
	 *
	 * @return the cc exp year
	 */
	public Integer getCcExpYear() {
		return this.ccExpYear;
	}

	/**
	 * Sets the cc exp year.
	 *
	 * @param ccExpYear the new cc exp year
	 */
	public void setCcExpYear(Integer ccExpYear) {
		this.ccExpYear = ccExpYear;
	}

	/**
	 * Gets the cc cvv.
	 *
	 * @return the cc cvv
	 */
	public Integer getCcCvv() {
		return this.ccCvv;
	}

	/**
	 * Sets the cc cvv.
	 *
	 * @param ccCvv the new cc cvv
	 */
	public void setCcCvv(Integer ccCvv) {
		this.ccCvv = ccCvv;
	}

	/**
	 * Gets the bank routing.
	 *
	 * @return the bank routing
	 */
	public Integer getBankRouting() {
		return this.bankRouting;
	}

	/**
	 * Sets the bank routing.
	 *
	 * @param bankRouting the new bank routing
	 */
	public void setBankRouting(Integer bankRouting) {
		this.bankRouting = bankRouting;
	}

	/**
	 * Gets the bank account.
	 *
	 * @return the bank account
	 */
	public Long getBankAccount() {
		return this.bankAccount;
	}

	/**
	 * Sets the bank account.
	 *
	 * @param bankAccount the new bank account
	 */
	public void setBankAccount(Long bankAccount) {
		this.bankAccount = bankAccount;
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
	 * Gets the pay prefer.
	 *
	 * @return the pay prefer
	 */
	public String getPayPrefer() {
		return this.payPrefer;
	}

	/**
	 * Sets the pay prefer.
	 *
	 * @param payPrefer the new pay prefer
	 */
	public void setPayPrefer(String payPrefer) {
		this.payPrefer = payPrefer;
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

	/**
	 * Gets the zip.
	 *
	 * @return the zip
	 */
	public String getZip() {
		return zip;
	}

	/**
	 * Sets the zip.
	 *
	 * @param zip the new zip
	 */
	public void setZip(String zip) {
		this.zip = zip;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UserPaymentDetailHistory))
			return false;
		UserPaymentDetailHistory castOther = (UserPaymentDetailHistory) other;

		return ((this.getUpdhId() == castOther.getUpdhId()) || (this
				.getUpdhId() != null && castOther.getUpdhId() != null && this
				.getUpdhId().equals(castOther.getUpdhId())))
				&& ((this.getUpdId() == castOther.getUpdId()) || (this
						.getUpdId() != null && castOther.getUpdId() != null && this
						.getUpdId().equals(castOther.getUpdId())))
				&& ((this.getUserId() == castOther.getUserId()) || (this
						.getUserId() != null && castOther.getUserId() != null && this
						.getUserId().equals(castOther.getUserId())))
				&& ((this.getCcTypeId() == castOther.getCcTypeId()) || (this
						.getCcTypeId() != null
						&& castOther.getCcTypeId() != null && this
						.getCcTypeId().equals(castOther.getCcTypeId())))
				&& ((this.getCcAcName() == castOther.getCcAcName()) || (this
						.getCcAcName() != null
						&& castOther.getCcAcName() != null && this
						.getCcAcName().equals(castOther.getCcAcName())))
				&& ((this.getCcNumber() == castOther.getCcNumber()) || (this
						.getCcNumber() != null
						&& castOther.getCcNumber() != null && this
						.getCcNumber().equals(castOther.getCcNumber())))
				&& ((this.getCcExpMonth() == castOther.getCcExpMonth()) || (this
						.getCcExpMonth() != null
						&& castOther.getCcExpMonth() != null && this
						.getCcExpMonth().equals(castOther.getCcExpMonth())))
				&& ((this.getCcExpYear() == castOther.getCcExpYear()) || (this
						.getCcExpYear() != null
						&& castOther.getCcExpYear() != null && this
						.getCcExpYear().equals(castOther.getCcExpYear())))
				&& ((this.getCcCvv() == castOther.getCcCvv()) || (this
						.getCcCvv() != null && castOther.getCcCvv() != null && this
						.getCcCvv().equals(castOther.getCcCvv())))
				&& ((this.getBankRouting() == castOther.getBankRouting()) || (this
						.getBankRouting() != null
						&& castOther.getBankRouting() != null && this
						.getBankRouting().equals(castOther.getBankRouting())))
				&& ((this.getBankAccount() == castOther.getBankAccount()) || (this
						.getBankAccount() != null
						&& castOther.getBankAccount() != null && this
						.getBankAccount().equals(castOther.getBankAccount())))
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
						&& castOther.getZip() != null && this.getZip()
						.equals(castOther.getZip())))
				&& ((this.getPayPrefer() == castOther.getPayPrefer()) || (this
						.getPayPrefer() != null
						&& castOther.getPayPrefer() != null && this
						.getPayPrefer().equals(castOther.getPayPrefer())))
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
				+ (getUpdhId() == null ? 0 : this.getUpdhId().hashCode());
		result = 37 * result
				+ (getUpdId() == null ? 0 : this.getUpdId().hashCode());
		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		result = 37 * result
				+ (getCcTypeId() == null ? 0 : this.getCcTypeId().hashCode());
		result = 37 * result
				+ (getCcAcName() == null ? 0 : this.getCcAcName().hashCode());
		result = 37 * result
				+ (getCcNumber() == null ? 0 : this.getCcNumber().hashCode());
		result = 37
				* result
				+ (getCcExpMonth() == null ? 0 : this.getCcExpMonth()
						.hashCode());
		result = 37 * result
				+ (getCcExpYear() == null ? 0 : this.getCcExpYear().hashCode());
		result = 37 * result
				+ (getCcCvv() == null ? 0 : this.getCcCvv().hashCode());
		result = 37
				* result
				+ (getBankRouting() == null ? 0 : this.getBankRouting()
						.hashCode());
		result = 37
				* result
				+ (getBankAccount() == null ? 0 : this.getBankAccount()
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
				+ (getPayPrefer() == null ? 0 : this.getPayPrefer().hashCode());
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