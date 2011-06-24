package com.mobisols.tollpayments.webservice;

public class LocationImpl implements Location{
	private double latitude;
	private double longitude;
	
	public LocationImpl()
	{
		
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
}
