package com.mobisols.tollpayments.webservice;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

@Path("ClientConfiguration")
public class ClientConfigurationImpl implements ClientConfiguration{

	@POST
	@Produces("text/plain")
	public String postClientConfiguration(String json, String user) {
		// TODO Auto-generated method stub
		return null;
	}

}
