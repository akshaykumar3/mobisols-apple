package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;



/**
 * The Class AccountDetailsResponse.
 */
public class AccountDetailsResponse {
	
	/** The contact no. */
	private String contactNo;
	
	/** The payment details. */
	private PaymentDetailsResponse paymentDetails;
	
	/** The vehicle details. */
	private List<VehicleDetails> vehicleDetails;
	
	/** The toll payments. */
	private List<TollPayments> tollPayments;
	
	/** The balance info. */
	private BalanceInfoResponse balanceInfo;
	
	/** The user id. */
	private int userId;
	
	/** The is active. */
	private String isActive;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	
	/**
	 * Instantiates a new account details response.
	 */
	public AccountDetailsResponse(){
		this.paymentDetails = new PaymentDetailsResponse();
		this.vehicleDetails=new LinkedList<VehicleDetails>();
		this.tollPayments=new LinkedList<TollPayments>();
		this.notifications=new LinkedList<String>();
		this.balanceInfo = new BalanceInfoResponse();
		this.commands = new LinkedList<String>();
	}
	
	/**
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public List<String> getCommands()	{
		return commands;
	}
	
	/**
	 * Sets the commands.
	 *
	 * @param commands the new commands
	 */
	public void setCommands(List<String> commands)	{
		this.commands = commands;
	}
	
	/**
	 * Gets the notifications.
	 *
	 * @return the notifications
	 */
	public List<String> getNotifications() {
		return notifications;
	}
	
	/**
	 * Sets the notifications.
	 *
	 * @param notifications the new notifications
	 */
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	
	/**
	 * Gets the contact no.
	 *
	 * @return the contact no
	 */
	public String getContactNo() {
		return contactNo;
	}
	
	/**
	 * Sets the contact no.
	 *
	 * @param contactNo the new contact no
	 */
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	/**
	 * Gets the payment details.
	 *
	 * @return the payment details
	 */
	public PaymentDetailsResponse getPaymentDetails() {
		return paymentDetails;
	}
	
	/**
	 * Sets the payment details.
	 *
	 * @param paymentDetails the new payment details
	 */
	public void setPaymentDetails(PaymentDetailsResponse paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	
	/**
	 * Gets the vehicle details.
	 *
	 * @return the vehicle details
	 */
	public List<VehicleDetails> getVehicleDetails() {
		return vehicleDetails;
	}
	
	/**
	 * Sets the vehicle details.
	 *
	 * @param vehicleDetails the new vehicle details
	 */
	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}
	
	/**
	 * Gets the toll payments.
	 *
	 * @return the toll payments
	 */
	public List<TollPayments> getTollPayments() {
		return tollPayments;
	}
	
	/**
	 * Sets the toll payments.
	 *
	 * @param tollPayments the new toll payments
	 */
	public void setTollPayments(List<TollPayments> tollPayments) {
		this.tollPayments = tollPayments;
	}
	
	/**
	 * Gets the balance info.
	 *
	 * @return the balance info
	 */
	public BalanceInfoResponse getBalanceInfo() {
		return balanceInfo;
	}
	
	/**
	 * Sets the balance info.
	 *
	 * @param balanceInfo the new balance info
	 */
	public void setBalanceInfo(BalanceInfoResponse balanceInfo) {
		this.balanceInfo = balanceInfo;
	}
	
	/**
	 * Gets the user id.
	 *
	 * @return the user id
	 */
	public int getUserId() {
		return userId;
	}
	
	/**
	 * Sets the user id.
	 *
	 * @param userId the new user id
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	/**
	 * Gets the checks if is active.
	 *
	 * @return the checks if is active
	 */
	public String getIsActive() {
		return isActive;
	}
	
	/**
	 * Sets the checks if is active.
	 *
	 * @param isActive the new checks if is active
	 */
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	
}
