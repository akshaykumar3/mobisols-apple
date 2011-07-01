package com.mobisols.tollpayments.webservice;

import java.util.List;
public interface CcTypeList {
	
List<UserCcType> ccTypes=null;
	
	public String getCcType();
	public void setCcTypes(List<UserCcType> ccTypes);
	public List<UserCcType> getCcTypes();

}
