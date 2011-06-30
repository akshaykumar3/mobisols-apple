package com.mobisols.tollpayments.webservice;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
@Path("/PayForToll")
public class PayForTollImpl implements PayForToll{

	@POST
	@Produces("text/plain")
	public String postPayForToll(@QueryParam("username") String user,@QueryParam("json") String json){
		JsonConverter c=new JsonConverterImpl();
		Location loc=(Location)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.Location");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponseImpl(); 
		((GeneralResponseImpl) response).setDescription("you hvae been charged for $0.10 for passing through this toll");
		//TODO update general response details
		String status="";
		String request="";
		String res= c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
}
