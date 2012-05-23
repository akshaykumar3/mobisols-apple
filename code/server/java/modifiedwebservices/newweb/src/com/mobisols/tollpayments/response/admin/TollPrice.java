/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

/**
 * @author Raghu
 *
 */
public class TollPrice {

	private String vehicleType;
	private double sellingPrice;
	private double costPrice;
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public double getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public double getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(double costPrice) {
		this.costPrice = costPrice;
	}
	
}
