package com.mobisols.tollpayments.webservice;

import java.util.Date;


import javax.ws.rs.QueryParam;


public interface PaymentDetails {
	String cardNumber=null;
	Integer expMonth=null;
	Date expYear=null;
	String cardType=null;
	Integer bankRouting=null;
	Integer bankAccount=null;
	
	
	public String postPaymentDetails(@QueryParam("json") String json,@QueryParam("username") String user);
	public String getCardNumber();
	public void setCardNumber(String cardNumber);
	public Integer getExpMonth();
	public void setExpMonth(Integer expDate);
	public Date getExpYear();
	public void setExpYear(Date expYear);
	public String getCardType();
	public void setCardType(String cardType);
	public Integer getBankRouting();
	public void setBankRouting(Integer bankRouting);
	public Long getBankAccount();
	public void setBankAccount(Long bankAccount);
}
