package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * PaymentTransactionId entity. @author MyEclipse Persistence Tools
 */

public class PaymentTransaction implements java.io.Serializable {

	// Fields

	/** The ptran id. */
	private Integer ptranId;
	
	/** The user bl id. */
	private Integer userBlId;
	
	/** The to bl id. */
	private Integer toBlId;
	
	/** The updh id. */
	private Integer updhId;
	
	/** The timestamp. */
	private Timestamp timestamp;
	
	/** The status. */
	private String status;
	
	/** The amount. */
	private Double amount;
	
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
	
	/** The from user balance log. */
	private UserBalanceLog fromUserBalanceLog;
	
	/** The to user balance log. */
	private UserBalanceLog toUserBalanceLog;
	
	/** The user payment detail history. */
	private UserPaymentDetailHistory userPaymentDetailHistory;

	// Constructors

	/**
	 * Gets the user payment detail history.
	 *
	 * @return the user payment detail history
	 */
	public UserPaymentDetailHistory getUserPaymentDetailHistory() {
		return userPaymentDetailHistory;
	}

	/**
	 * Sets the user payment detail history.
	 *
	 * @param userPaymentDetailHistory the new user payment detail history
	 */
	public void setUserPaymentDetailHistory(
			UserPaymentDetailHistory userPaymentDetailHistory) {
		this.userPaymentDetailHistory = userPaymentDetailHistory;
	}

	

	/**
	 * Gets the from user balance log.
	 *
	 * @return the from user balance log
	 */
	public UserBalanceLog getFromUserBalanceLog() {
		return fromUserBalanceLog;
	}

	/**
	 * Sets the from user balance log.
	 *
	 * @param fromUserBalanceLog the new from user balance log
	 */
	public void setFromUserBalanceLog(UserBalanceLog fromUserBalanceLog) {
		this.fromUserBalanceLog = fromUserBalanceLog;
	}

	/**
	 * Gets the to user balance log.
	 *
	 * @return the to user balance log
	 */
	public UserBalanceLog getToUserBalanceLog() {
		return toUserBalanceLog;
	}

	/**
	 * Sets the to user balance log.
	 *
	 * @param toUserBalanceLog the new to user balance log
	 */
	public void setToUserBalanceLog(UserBalanceLog toUserBalanceLog) {
		this.toUserBalanceLog = toUserBalanceLog;
	}

	/**
	 * default constructor.
	 */
	public PaymentTransaction() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param ptranId the ptran id
	 * @param timestamp the timestamp
	 * @param status the status
	 * @param amount the amount
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 */
	public PaymentTransaction(Integer ptranId, Timestamp timestamp,
			String status, Double amount, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.ptranId = ptranId;
		this.timestamp = timestamp;
		this.status = status;
		this.amount = amount;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/**
	 * full constructor.
	 *
	 * @param ptranId the ptran id
	 * @param userBlId the user bl id
	 * @param toBlId the to bl id
	 * @param updhId the updh id
	 * @param timestamp the timestamp
	 * @param status the status
	 * @param amount the amount
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
	 */
	public PaymentTransaction(Integer ptranId, Integer userBlId,
			Integer toBlId, Integer updhId, Timestamp timestamp, String status,
			Double amount, String udf1, String udf2, String udf3, String udf4,
			String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn, Integer clientId) {
		this.ptranId = ptranId;
		this.userBlId = userBlId;
		this.toBlId = toBlId;
		this.updhId = updhId;
		this.timestamp = timestamp;
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
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.clientId = clientId;
	}

	// Property accessors

	/**
	 * Gets the ptran id.
	 *
	 * @return the ptran id
	 */
	public Integer getPtranId() {
		return this.ptranId;
	}

	/**
	 * Sets the ptran id.
	 *
	 * @param ptranId the new ptran id
	 */
	public void setPtranId(Integer ptranId) {
		this.ptranId = ptranId;
	}

	/**
	 * Gets the user bl id.
	 *
	 * @return the user bl id
	 */
	public Integer getUserBlId() {
		return this.userBlId;
	}

	/**
	 * Sets the user bl id.
	 *
	 * @param userBlId the new user bl id
	 */
	public void setUserBlId(Integer userBlId) {
		this.userBlId = userBlId;
	}

	/**
	 * Gets the to bl id.
	 *
	 * @return the to bl id
	 */
	public Integer getToBlId() {
		return this.toBlId;
	}

	/**
	 * Sets the to bl id.
	 *
	 * @param toBlId the new to bl id
	 */
	public void setToBlId(Integer toBlId) {
		this.toBlId = toBlId;
	}

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
	 * Gets the timestamp.
	 *
	 * @return the timestamp
	 */
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	/**
	 * Sets the timestamp.
	 *
	 * @param timestamp the new timestamp
	 */
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	/**
	 * Gets the status.
	 *
	 * @return the status
	 */
	public String getStatus() {
		return this.status;
	}

	/**
	 * Sets the status.
	 *
	 * @param status the new status
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * Gets the amount.
	 *
	 * @return the amount
	 */
	public Double getAmount() {
		return this.amount;
	}

	/**
	 * Sets the amount.
	 *
	 * @param amount the new amount
	 */
	public void setAmount(Double amount) {
		this.amount = amount;
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

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PaymentTransaction))
			return false;
		PaymentTransaction castOther = (PaymentTransaction) other;

		return ((this.getPtranId() == castOther.getPtranId()) || (this
				.getPtranId() != null && castOther.getPtranId() != null && this
				.getPtranId().equals(castOther.getPtranId())))
				&& ((this.getUserBlId() == castOther.getUserBlId()) || (this
						.getUserBlId() != null
						&& castOther.getUserBlId() != null && this
						.getUserBlId().equals(castOther.getUserBlId())))
				&& ((this.getToBlId() == castOther.getToBlId()) || (this
						.getToBlId() != null && castOther.getToBlId() != null && this
						.getToBlId().equals(castOther.getToBlId())))
				&& ((this.getUpdhId() == castOther.getUpdhId()) || (this
						.getUpdhId() != null && castOther.getUpdhId() != null && this
						.getUpdhId().equals(castOther.getUpdhId())))
				&& ((this.getTimestamp() == castOther.getTimestamp()) || (this
						.getTimestamp() != null
						&& castOther.getTimestamp() != null && this
						.getTimestamp().equals(castOther.getTimestamp())))
				&& ((this.getStatus() == castOther.getStatus()) || (this
						.getStatus() != null && castOther.getStatus() != null && this
						.getStatus().equals(castOther.getStatus())))
				&& ((this.getAmount() == castOther.getAmount()) || (this
						.getAmount() != null && castOther.getAmount() != null && this
						.getAmount().equals(castOther.getAmount())))
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
						.getClientId().equals(castOther.getClientId())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getPtranId() == null ? 0 : this.getPtranId().hashCode());
		result = 37 * result
				+ (getUserBlId() == null ? 0 : this.getUserBlId().hashCode());
		result = 37 * result
				+ (getToBlId() == null ? 0 : this.getToBlId().hashCode());
		result = 37 * result
				+ (getUpdhId() == null ? 0 : this.getUpdhId().hashCode());
		result = 37 * result
				+ (getTimestamp() == null ? 0 : this.getTimestamp().hashCode());
		result = 37 * result
				+ (getStatus() == null ? 0 : this.getStatus().hashCode());
		result = 37 * result
				+ (getAmount() == null ? 0 : this.getAmount().hashCode());
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
		return result;
	}

}