/**
 * 
 */
package com.mobisols.tollpayments.request.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class VehicleHistoryDetailsRequest {

	private String username;
	private String regNo;
	private String state;
	private Timestamp startDate;
	private Timestamp endDate;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	
}
