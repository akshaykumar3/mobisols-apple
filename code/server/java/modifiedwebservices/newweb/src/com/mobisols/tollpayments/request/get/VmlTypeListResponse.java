package com.mobisols.tollpayments.request.get;

import java.util.LinkedList;
import java.util.List;

public class VmlTypeListResponse {
	
	private List<VmlType> vmlTypeList;
	
	public VmlTypeListResponse()
	{
		vmlTypeList = new LinkedList();
	}

	public List<VmlType> getVmlTypeList() {
		return vmlTypeList;
	}

	public void setVmlTypeList(List<VmlType> vmlTypeList) {
		this.vmlTypeList = vmlTypeList;
	}

	
}
