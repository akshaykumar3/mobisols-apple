package com.mobisols.tollpayments.response.get;

public class ClientConfigurationResponse {
	private Integer compVersionId=0;
	private String key=null;
	private String value=null;
	
	public Integer getCompVersionId() {
		return compVersionId;
	}
	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
}
