package com.mobisols.tollpayments.webservice;

import javax.ws.rs.QueryParam;


public interface AddBalance {
	float amount=(float) 0.0;
	String description=null;
	
	public String addBalance(@QueryParam("username") String user,@QueryParam("json")String json,int clientId);
	public float getAmount();
	public void setAmount(float amount);
	public String getDescription();
	public void setDescription(String description);
}
