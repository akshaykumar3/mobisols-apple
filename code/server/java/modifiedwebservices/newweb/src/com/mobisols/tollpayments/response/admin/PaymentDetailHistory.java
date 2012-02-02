/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class PaymentDetailHistory {
	/** The cc name. */
	private String ccName;
	
	/** The card number. */
	private String cardNumber;
	
	/** The exp month. */
	private Integer expMonth;
	
	/** The cc cvv. */
	private int ccCVV;
	
	/** The exp year. */
	private Integer expYear;
	
	/** The card type. */
	private String cardType;
	
	/** The bank routing. */
	private Integer bankRouting;
	
	/** The bank account. */
	private Long bankAccount;
	
	/** The payment id. */
	private int paymentId;
	
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
	
	private Timestamp startDate;
	
	private Timestamp endDate;
	
	private String action;

	public String getCcName() {
		return ccName;
	}

	public void setCcName(String ccName) {
		this.ccName = ccName;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public Integer getExpMonth() {
		return expMonth;
	}

	public void setExpMonth(Integer expMonth) {
		this.expMonth = expMonth;
	}

	public int getCcCVV() {
		return ccCVV;
	}

	public void setCcCVV(int ccCVV) {
		this.ccCVV = ccCVV;
	}

	public Integer getExpYear() {
		return expYear;
	}

	public void setExpYear(Integer expYear) {
		this.expYear = expYear;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public Integer getBankRouting() {
		return bankRouting;
	}

	public void setBankRouting(Integer bankRouting) {
		this.bankRouting = bankRouting;
	}

	public Long getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(Long bankAccount) {
		this.bankAccount = bankAccount;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPayPrefer() {
		return payPrefer;
	}

	public void setPayPrefer(String payPrefer) {
		this.payPrefer = payPrefer;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
}
