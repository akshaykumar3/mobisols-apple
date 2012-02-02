/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.util.LinkedList;
import java.util.List;


/**
 * @author Raghu
 *
 */
public class UserDetailsResponse {

	private String userName;
	private String password;
	private Double currentBalance;
	private Double minBalance;
	private List<VehicleDetail> vehicleDetails;
	private PaymentDetail paymentDetails;
	private List<TollPaymentTransfer> tollPayments;;
	
	public UserDetailsResponse(){
		this.vehicleDetails = new LinkedList<VehicleDetail>();
		this.tollPayments = new LinkedList<TollPaymentTransfer>();
		this.paymentDetails = new PaymentDetail();
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(Double currentBalance) {
		this.currentBalance = currentBalance;
	}
	public Double getMinBalance() {
		return minBalance;
	}
	public void setMinBalance(Double minBalance) {
		this.minBalance = minBalance;
	}
	public List<VehicleDetail> getVehicleDetails() {
		return vehicleDetails;
	}
	public void setVehicleDetails(List<VehicleDetail> vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}
	public PaymentDetail getPaymentDetails() {
		return paymentDetails;
	}
	public void setPaymentDetails(PaymentDetail paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	public List<TollPaymentTransfer> getTollPayments() {
		return tollPayments;
	}
	public void setTollPayments(List<TollPaymentTransfer> tollPayments) {
		this.tollPayments = tollPayments;
	}
}
