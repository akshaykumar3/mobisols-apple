package com.mobisols.tollpayments.webservice;


public interface ClientConfiguration {
	private Integer configid;
	private Integer compVersionId=0;
	private String key=null;
	private String value=null;
	public Integer getConfigId();
	public void setConfigId(Integer configId);
	public Integer getCompVersionId();
	public void setCompVersionId(Integer compVersionId);
	public String getKey();
	public void setKey(String key);
	public String getValue();
	public void setValue(String value);
	
}
