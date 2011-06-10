/******************************************************************************
 * TollDetails
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

public class TollDetails {
	private String tollName;
	private String tollOperator;
	private String city;
	private String State;
	private String zip;
	private float lat;
	private float longt;
	
	public TollDetails(){
		
	}
	public TollDetails(String tollid) {
		// TODO Auto-generated constructor stub
		this.setTollName("Illinois");
		this.setTollOperator("illinois");
		this.setCity("NewYork");
		this.setState("xyz");
		this.setLat((float)21.09);
		this.setLongt((float)21.09);
	}
	
	public String getTollName() {
		return tollName;
	}
	public void setTollName(String tollName) {
		this.tollName = tollName;
	}
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public float getLat() {
		return lat;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public float getLongt() {
		return longt;
	}
	public void setLongt(float longt) {
		this.longt = longt;
	}
	
}
