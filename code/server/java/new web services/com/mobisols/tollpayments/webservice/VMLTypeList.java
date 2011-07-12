package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface VMLTypeList {
	List<VMLTypeImpl> vmltypes=null;
	public String getVMLTypeList();
	public List<VMLTypeImpl> getVmltypes();
	public void setVmltypes(List<VMLTypeImpl> vmltypes);
}
