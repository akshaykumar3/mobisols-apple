package com.mobisols.tollpayments.webservice;

import java.util.List;
public interface CcTypeList {
	
List<UserCcTypeImpl> ccTypes=null;
	
	public String getCcType();
	public void setCcTypes(List<UserCcTypeImpl> ccTypes);
	public List<UserCcTypeImpl> getCcTypes();

}
