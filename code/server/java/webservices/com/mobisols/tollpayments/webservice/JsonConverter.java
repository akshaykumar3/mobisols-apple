package com.mobisols.tollpayments.webservice;

public interface JsonConverter {

	String request=null;
	String status=null;
	String version=null;
	Object response=null;
	String getJSON(String request, String status, Object o);
	Object getObject(String json, String className);
	public String getRequest();

	public void setRequest(String request);

	public String getStatus();

	public void setStatus(String status);

	public String getVersion();

	public void setVersion(String version);

	public Object getResponse();

	public void setResponse(Object response);
}
