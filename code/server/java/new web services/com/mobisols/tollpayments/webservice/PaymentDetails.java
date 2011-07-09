package com.mobisols.tollpayments.webservice;

import java.util.Date;


import javax.ws.rs.QueryParam;

import com.mobisols.tollpayments.hibernate.entity.UserPaymentDetail;


public interface PaymentDetails {
	String ccName=null;
	String cardNumber=null;
	Integer expMonth=0;
	int ccCVV=0;
	Date expYear=null;
	String cardType=null;
	Integer bankRouting=null;
	Long bankAccount=null;
	int paymentId=0;
	String address1=null;
	String address2=null;
	String city=null;
	String state=null;
	String country=null;
	String zip=null;
	String payPrefer=null;
	
	public GeneralResponse postPaymentDetails(PaymentDetails pd,int paymentId,int userId);
	public String postPaymentDetails(String json,String user,int hasId);
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
	public int getPaymentId();
	public void setPaymentId(int paymentId);


	public int getCcCVV();

	public void setCcCVV(int ccCVV);

	public String getAddress1();

	public void setAddress1(String address1);

	public String getAddress2();

	public void setAddress2(String address2);

	public String getCity();

	public void setCity(String city);

	public String getState();

	public void setState(String state);

	public String getCountry();

	public void setCountry(String country);

	public String getZip();

	public void setZip(String zip);

	public String getPayPrefer();

	public void setPayPrefer(String payPrefer);
	public void setCcName(String ccName);

	public String getCcName();
}
