package com.mobisols.tollpayments.webservice;

public class GeometryImpl implements Geometry{
	private double latitude1;
	private double longitude1;
	private double latitude2;
	private double longitude2;
	public GeometryImpl(){
		
	}
	public double getLatitude1() {
		return latitude1;
	}
	public void setLatitude1(double latitude1) {
		this.latitude1 = latitude1;
	}
	public double getLongitude1() {
		return longitude1;
	}
	public void setLongitude1(double longitude1) {
		this.longitude1 = longitude1;
	}
	public double getLatitude2() {
		return latitude2;
	}
	public void setLatitude2(double latitude2) {
		this.latitude2 = latitude2;
	}
	public double getLongitude2() {
		return longitude2;
	}
	public void setLongitude2(double longitude2) {
		this.longitude2 = longitude2;
	}
}
