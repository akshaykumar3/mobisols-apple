package com.mobisols.tollpayments.request.get;

import java.util.LinkedList;
import java.util.List;

public class CcTypeListResponse {
	
	private List<CcType> ccTypeList;
	
	public CcTypeListResponse()
	{
		ccTypeList=new LinkedList();
	}

	public List<CcType> getCcTypeList() {
		return ccTypeList;
	}

	public void setCcTypeList(List<CcType> ccTypeList) {
		this.ccTypeList = ccTypeList;
	}
	

}
