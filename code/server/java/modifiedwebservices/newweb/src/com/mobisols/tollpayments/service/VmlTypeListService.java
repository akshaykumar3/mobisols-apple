package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VmlTypeDao;

public interface VmlTypeListService {
	VmlTypeDao vmlTypeDao  = null;

	
	public String getVmlTypeList(String request);

}
