package com.mobisols.tollpayments.webservice;

import java.util.List;


import javax.ws.rs.QueryParam;

public interface AccountDetails {
	String cotnactNo=null;
	PaymentDetails paymentDetails=null;
	List<VehicleDetails> vehicleDetails=null;
	List<TollPayments> tollPayments=null;
	BalanceInfo balanceInfo=null;
	int user_id=0;
	public String getAccountDetails(@QueryParam("username") String user);
	public PaymentDetails getPaymentDetails() ;
	public void setPaymentDetails(PaymentDetails paymentDetails) ;
	public List<VehicleDetails> getVehicleDetails() ;
	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) ;
	public List<TollPayments> getTollPayments() ;
	public void setTollPayments(List<TollPayments> tollPayments) ;
	public BalanceInfo getBalanceInfo();
	public void setBalanceInfo(BalanceInfo balanceInfo);
	public int getUserId();
	public void setUserId(int userId);
	public void setContactNo(String contactNo);
	public String getContactNo();
}
