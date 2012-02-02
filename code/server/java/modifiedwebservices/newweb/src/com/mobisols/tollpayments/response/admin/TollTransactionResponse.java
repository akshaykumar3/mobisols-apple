/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class TollTransactionResponse {

	private String tollOperator;
	private String tollName;
	private double latitude;
	private double longitude;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String zip;
	private List<TollPrice> tollPrice;
	private List<TollCrossing> tollCrossing;
	
	public TollTransactionResponse(){
		this.tollPrice = new LinkedList<TollPrice>();
		this.tollCrossing = new LinkedList<TollCrossing>();
	}
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getTollName() {
		return tollName;
	}
	public void setTollName(String tollName) {
		this.tollName = tollName;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public List<TollPrice> getTollPrice() {
		return tollPrice;
	}
	public void setTollPrice(List<TollPrice> tollPrice) {
		this.tollPrice = tollPrice;
	}
	public List<TollCrossing> getTollCrossing() {
		return tollCrossing;
	}
	public void setTollCrossing(List<TollCrossing> tollCrossing) {
		this.tollCrossing = tollCrossing;
	}
	
	
}
