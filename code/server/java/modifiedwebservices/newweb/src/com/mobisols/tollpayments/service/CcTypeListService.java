package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.response.get.CcTypeListResponse;

public interface CcTypeListService extends GeneralService {
	CcTypeListResponse ccTypeListResponse = null;
	CcTypeDao ccTypeDao=null;
	
	public CcTypeListResponse getCcTypeList();

}
