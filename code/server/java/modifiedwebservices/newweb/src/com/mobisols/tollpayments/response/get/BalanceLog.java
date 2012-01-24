package com.mobisols.tollpayments.response.get;

import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class BalanceLog.
 */
public class BalanceLog {
	
	/** The delta. */
	private Double delta;
	
	/** The description. */
	private String description;
	
	/** The time stamp. */
	private Timestamp timeStamp;
	
	/**
	 * Gets the delta.
	 *
	 * @return the delta
	 */
	public Double getDelta() {
		return delta;
	}
	
	/**
	 * Sets the delta.
	 *
	 * @param delta the new delta
	 */
	public void setDelta(Double delta) {
		this.delta = delta;
	}
	
	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	
	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * Gets the time stamp.
	 *
	 * @return the time stamp
	 */
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	
	/**
	 * Sets the time stamp.
	 *
	 * @param timeStamp the new time stamp
	 */
	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
}
