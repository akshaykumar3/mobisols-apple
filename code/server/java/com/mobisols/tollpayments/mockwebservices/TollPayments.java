/******************************************************************************
 * TollPayments
 * 
 * This class represents response sent to the client for 
 * Toll Payments service. This will contain data for the client to display all
 * toll payments information to the user.
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Raghukumar		07-JUNE-2011				   Mockwebservice
 * 
 *
 */
package com.mobisols.tollpayments.mockwebservices;

public class TollPayments {
	private String registration;
	private String state;
	private TollDetails tollDetails;
	private float price;
	private String timeStamp;
	private String isPaid;
	
	public TollPayments(){
		
	}
	public TollPayments(String user,String vehicleId,String tollId){
		//TODO access data base and assign the details
		this.setRegistration("1234");
		this.setState("Calofornia");
		this.setIsPaid("true");
		this.setPrice((float)0.10);
		this.setTimeStamp("12-6-2011 21:16:12");
		this.setTollDetails(new TollDetails(tollId));
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public TollDetails getTollDetails() {
		return tollDetails;
	}
	public void setTollDetails(TollDetails tollDetails) {
		this.tollDetails = tollDetails;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float d) {
		this.price = d;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getIsPaid() {
		return isPaid;
	}
	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}
	
}
