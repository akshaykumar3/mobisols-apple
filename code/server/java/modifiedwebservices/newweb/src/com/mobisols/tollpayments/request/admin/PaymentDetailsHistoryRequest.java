/**
 * 
 */
package com.mobisols.tollpayments.request.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class PaymentDetailsHistoryRequest {

	private String username;
	private Timestamp startDate;
	private Timestamp endDate;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
