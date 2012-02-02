/**
 * 
 */
package com.mobisols.tollpayments.request.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class TollTransactionRequest {
	private String tollOperator;
	private String tollLocationName;
	private Timestamp startDate;
	private Timestamp endDate;
	
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getTollLocationName() {
		return tollLocationName;
	}
	public void setTollLocationName(String tollLocationName) {
		this.tollLocationName = tollLocationName;
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
