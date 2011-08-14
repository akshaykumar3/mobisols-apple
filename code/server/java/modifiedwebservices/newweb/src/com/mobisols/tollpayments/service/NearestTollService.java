package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.response.get.NearestTollResponse;

public interface NearestTollService {

	TollLocationUtil tollLocationUtil=null;
	TollLocationDao tollLocationDao=null;
	public NearestTollResponse getNearestToll(double lat,double longt);
}
