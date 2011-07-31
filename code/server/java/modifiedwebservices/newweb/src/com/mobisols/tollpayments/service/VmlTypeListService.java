package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.response.get.VmlTypeListResponse;

public interface VmlTypeListService extends GeneralService{
	VmlTypeDao vmlTypeDao  = null;
	
	public VmlTypeListResponse getVmlTypeList();

}
