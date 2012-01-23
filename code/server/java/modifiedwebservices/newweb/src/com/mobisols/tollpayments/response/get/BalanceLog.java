package com.mobisols.tollpayments.response.get;

import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;

public class BalanceLog {
	private Double delta;
	private String description;
	private Timestamp timeStamp;
	
	public Double getDelta() {
		return delta;
	}
	public void setDelta(Double delta) {
		this.delta = delta;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
}
