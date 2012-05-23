/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class TollPaymentTransfer {

	private Timestamp timeStamp;
	private String status;
	private String tollOperator;
	private String tollLocation;
	private double amount;
	
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getTollLocation() {
		return tollLocation;
	}
	public void setTollLocation(String tollLocation) {
		this.tollLocation = tollLocation;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
}
