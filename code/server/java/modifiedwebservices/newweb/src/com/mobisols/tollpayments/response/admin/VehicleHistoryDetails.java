/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.sql.Timestamp;

/**
 * @author Raghu
 *
 */
public class VehicleHistoryDetails {
	private String regNo;
	private String state;
	private String status;
	private Timestamp startDate;
	private Timestamp endDate;
	private String model;
	private String make;
	private String vin;
	private String color;
	private Integer manufacturedYear;
	private int vehicleId;
	private String action;
	private Timestamp fromDate;
	private Timestamp toDate;
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Integer getManufacturedYear() {
		return manufacturedYear;
	}
	public void setManufacturedYear(Integer integer) {
		this.manufacturedYear = integer;
	}
	public int getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public Timestamp getFromDate() {
		return fromDate;
	}
	public void setFromDate(Timestamp fromDate) {
		this.fromDate = fromDate;
	}
	public Timestamp getToDate() {
		return toDate;
	}
	public void setToDate(Timestamp toDate) {
		this.toDate = toDate;
	}
}
