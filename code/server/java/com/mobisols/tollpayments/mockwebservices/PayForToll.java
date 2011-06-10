package com.mobisols.tollpayments.mockwebservices;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/PayForToll")
public class PayForToll {
	
	public PayForToll(){
		
	}
	
	@POST
	@Produces("text/plain")
	public String postPayForToll(@QueryParam("username") String user,@QueryParam("json") String json){
		JsonConverter c=new JsonConverter();
		Location loc=(Location)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.Location");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponse(); 
		response.setDescription("you hvae been charged for $0.10 for passing through this toll");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
}
