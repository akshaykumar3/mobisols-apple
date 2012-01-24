package com.mobisols.tollpayments.response.get;

import java.sql.Timestamp;


// TODO: Auto-generated Javadoc
/**
 * The Class TollPayments.
 */
public class TollPayments {
	
	/** The registration. */
	private String registration;
	
	/** The state. */
	private String state;
	
	/** The toll details. */
	private TollDetails tollDetails;
	
	/** The price. */
	private Double price;
	
	/** The time stamp. */
	private Timestamp timeStamp;
	
	/** The is paid. */
	private String isPaid;
	
	/**
	 * Instantiates a new toll payments.
	 */
	public TollPayments()
	{
		this.tollDetails = new TollDetails();
	}
	
	/**
	 * Gets the registration.
	 *
	 * @return the registration
	 */
	public String getRegistration() {
		return registration;
	}
	
	/**
	 * Sets the registration.
	 *
	 * @param registration the new registration
	 */
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	
	/**
	 * Gets the state.
	 *
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	
	/**
	 * Sets the state.
	 *
	 * @param state the new state
	 */
	public void setState(String state) {
		this.state = state;
	}
	
	/**
	 * Gets the toll details.
	 *
	 * @return the toll details
	 */
	public TollDetails getTollDetails() {
		return tollDetails;
	}
	
	/**
	 * Sets the toll details.
	 *
	 * @param tollDetails the new toll details
	 */
	public void setTollDetails(TollDetails tollDetails) {
		this.tollDetails = tollDetails;
	}
	
	/**
	 * Gets the price.
	 *
	 * @return the price
	 */
	public Double getPrice() {
		return price;
	}
	
	/**
	 * Sets the price.
	 *
	 * @param price the new price
	 */
	public void setPrice(Double price) {
		this.price = price;
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
	
	/**
	 * Gets the checks if is paid.
	 *
	 * @return the checks if is paid
	 */
	public String getIsPaid() {
		return isPaid;
	}
	
	/**
	 * Sets the checks if is paid.
	 *
	 * @param isPaid the new checks if is paid
	 */
	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}
	
}
