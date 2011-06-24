package com.mobisols.tollpayments.webservice;

import java.util.List;


import javax.ws.rs.QueryParam;

public interface AccountDetails {
	PaymentDetails paymentDetails=null;
	List<VehicleDetails> vehicleDetails=null;
	List<TollPayments> tollPayments=null;
	BalanceInfo balanceInfo=null;
	
	public String getAccountDetails(@QueryParam("username") String user,@QueryParam("clientid")int clientId);
	public PaymentDetails getPaymentDetails() ;
	public void setPaymentDetails(PaymentDetails paymentDetails) ;
	public List<VehicleDetails> getVehicleDetails() ;
	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) ;
	public List<TollPayments> getTollPayments() ;
	public void setTollPayments(List<TollPayments> tollPayments) ;
	public BalanceInfo getBalanceInfo();
	public void setBalanceInfo(BalanceInfo balanceInfo);
}
