package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;


public class AccountDetailsResponse {
	private String contactNo;
	private PaymentDetailsResponse paymentDetails;
	private List<VehicleDetails> vehicleDetails;
	private List<TollPayments> tollPayments;
	private BalanceInfoResponse balanceInfo;
	private int userId;
	private List<String> notifications;
	
	public AccountDetailsResponse(){
		this.paymentDetails = new PaymentDetailsResponse();
		this.vehicleDetails=new LinkedList();
		this.tollPayments=new LinkedList();
		this.notifications=new LinkedList<String>();
		this.balanceInfo = new BalanceInfoResponse();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public PaymentDetailsResponse getPaymentDetails() {
		return paymentDetails;
	}
	public void setPaymentDetails(PaymentDetailsResponse paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	public List<VehicleDetails> getVehicleDetails() {
		return vehicleDetails;
	}
	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}
	public List<TollPayments> getTollPayments() {
		return tollPayments;
	}
	public void setTollPayments(List<TollPayments> tollPayments) {
		this.tollPayments = tollPayments;
	}
	public BalanceInfoResponse getBalanceInfo() {
		return balanceInfo;
	}
	public void setBalanceInfo(BalanceInfoResponse balanceInfo) {
		this.balanceInfo = balanceInfo;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
