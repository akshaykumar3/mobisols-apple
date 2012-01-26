package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class NearestTollResponse.
 */
public class NearestTollResponse {
	
	/** The latitude. */
	private double latitude;
	
	/** The longitude. */
	private double longitude;
	
	/** The city. */
	private String city;
	
	/** The state. */
	private String state;
	
	/** The toll operator. */
	private String tollOperator;
	
	/** The cost price. */
	private double costPrice;
	
	/** The selling price. */
	private double sellingPrice;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new nearest toll response.
	 */
	public NearestTollResponse()
	{
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	/**
	 * Gets the latitude.
	 *
	 * @return the latitude
	 */
	public double getLatitude() {
		return latitude;
	}
	
	/**
	 * Sets the latitude.
	 *
	 * @param latitude the new latitude
	 */
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	/**
	 * Gets the longitude.
	 *
	 * @return the longitude
	 */
	public double getLongitude() {
		return longitude;
	}
	
	/**
	 * Sets the longitude.
	 *
	 * @param longitude the new longitude
	 */
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	/**
	 * Gets the notifications.
	 *
	 * @return the notifications
	 */
	public List<String> getNotifications() {
		return notifications;
	}
	
	/**
	 * Sets the notifications.
	 *
	 * @param notifications the new notifications
	 */
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	
	/**
	 * Gets the city.
	 *
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	
	/**
	 * Sets the city.
	 *
	 * @param city the new city
	 */
	public void setCity(String city) {
		this.city = city;
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
	 * Gets the toll operator.
	 *
	 * @return the toll operator
	 */
	public String getTollOperator() {
		return tollOperator;
	}
	
	/**
	 * Sets the toll operator.
	 *
	 * @param tollOperator the new toll operator
	 */
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	
	/**
	 * Gets the cost price.
	 *
	 * @return the cost price
	 */
	public double getCostPrice() {
		return costPrice;
	}
	
	/**
	 * Sets the cost price.
	 *
	 * @param costPrice the new cost price
	 */
	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}
	
	/**
	 * Sets the commands.
	 *
	 * @param commands the new commands
	 */
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	
	/**
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public List<String> getCommands() {
		return commands;
	}
	
	/**
	 * Gets the selling price.
	 *
	 * @return the selling price
	 */
	public double getSellingPrice() {
		return sellingPrice;
	}
	
	/**
	 * Sets the selling price.
	 *
	 * @param sellingPrice the new selling price
	 */
	public void setSellingPrice(double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
}
