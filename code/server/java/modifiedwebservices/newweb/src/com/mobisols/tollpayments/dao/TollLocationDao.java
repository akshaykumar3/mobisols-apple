package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollLocation;

public interface TollLocationDao {
	public List getTollLocations();
	
	public TollLocation getTollLocation(double latitude,double longitude);

	public TollLocation getTollLocation(String name);
}
