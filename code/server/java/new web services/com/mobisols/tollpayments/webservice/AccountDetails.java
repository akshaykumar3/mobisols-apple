package com.mobisols.tollpayments.webservice;

import java.util.List;


import javax.ws.rs.QueryParam;

public interface AccountDetails {
	String cotnactNo=null;
	PaymentDetailsImpl paymentDetails=null;
	List<VehicleDetailsImpl> vehicleDetails=null;
	List<TollPaymentsImpl> tollPayments=null;
	BalanceInfo balanceInfo=null;
	int user_id=0;
	public String getAccountDetails(@QueryParam("username") String user);
	public PaymentDetailsImpl getPaymentDetails() ;
	public void setPaymentDetails(PaymentDetailsImpl paymentDetails) ;
	public List<VehicleDetailsImpl> getVehicleDetails() ;
	public void setVehicleDetails(List<VehicleDetailsImpl> vehicleDetails) ;
	public List<TollPaymentsImpl> getTollPayments() ;
	public void setTollPayments(List<TollPaymentsImpl> tollPayments) ;
	public BalanceInfo getBalanceInfo();
	public void setBalanceInfo(BalanceInfo balanceInfo);
	public int getUserId();
	public void setUserId(int userId);
	public void setContactNo(String contactNo);
	public String getContactNo();
}
