package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;

public interface TollDetailsListService {

	TollLocationDao tollLocationDao=null;
	
	public String getTollLocations(String request);
	public String getTollLocations(String request,double lat1,double long1,double lat2,double long2);
}
