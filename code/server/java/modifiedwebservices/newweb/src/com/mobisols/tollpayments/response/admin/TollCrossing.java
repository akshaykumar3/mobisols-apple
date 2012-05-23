/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class TollCrossing {
	private Timestamp timestamp;
	private String status;
	private String regNo;
	private String state;
	private String price;
	
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
