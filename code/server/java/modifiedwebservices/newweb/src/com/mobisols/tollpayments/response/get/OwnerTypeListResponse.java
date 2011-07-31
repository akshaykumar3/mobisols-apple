package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class OwnerTypeListResponse {
	
	private List<OwnerType> ownerTypeList;
	public OwnerTypeListResponse()
	{
		ownerTypeList = new LinkedList();
	}
	public List<OwnerType> getOwnerTypeList() {
		return ownerTypeList;
	}
	public void setOwnerTypeList(List<OwnerType> ownerTypeList) {
		this.ownerTypeList = ownerTypeList;
	}

}
