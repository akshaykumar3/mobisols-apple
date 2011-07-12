package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface OwnerTypeList {
	
	List <OwnerTypeImpl> ownerTypes =null;
	public String getOwnerType();
	public void setOwnerTypes(List<OwnerTypeImpl> ownerTypes);
	public List<OwnerTypeImpl> getOwnerTypes();

}
