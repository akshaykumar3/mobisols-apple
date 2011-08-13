package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.response.get.TollLocationListResponse;

public interface TollDetailsListService {

	TollLocationDao tollLocationDao=null;
	
	public TollLocationListResponse getTollLocations();
	public TollLocationListResponse getTollLocations(double lat1,double long1,double lat2,double long2);
}
