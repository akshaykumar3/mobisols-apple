package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.myutils.TollLocationUtil;

public interface NearestTollService {

	TollLocationUtil tollLocationUtil=null;
	TollLocationDao tollLocationDao=null;
	public String getNearestToll(String request,double lat,double longt);
}
