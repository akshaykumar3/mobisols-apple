package com.mobisols.tollpayments.webservice;

import javax.ws.rs.QueryParam;


public interface PayForToll {
	public String postPayForToll(@QueryParam("username") String user,@QueryParam("json") String json);
}
