package com.mobisols.tollpayments.request.post;

import java.util.Date;

public class PaymentDetailRequest {
	private String ccName;
	private String cardNumber;
	private Integer expMonth;
	private int ccCVV;
	private Date expYear;
	private String cardType;
	private Integer bankRouting;
	private Long bankAccount;
	private int paymentId;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String zip;
	private String payPrefer;
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
	public Date getExpYear() {
		return expYear;
	}
	public void setExpYear(Date expYear) {
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
}
