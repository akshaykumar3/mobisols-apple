/******************************************************************************
 * ClientConfiguration
 * 
 * This class represents service which gives client configuration details
 * to the server. The response will contain the details of new configuration
 * and the update details.
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Raghukumar		07-JUNE-2011				   Mockwebservice
 * 
 *
 */
package com.mobisols.tollpayments.mockwebservices;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("ClientConfiguration")
public class ClientConfiguration {
	private String version;
	private String userAgent;
	
	public ClientConfiguration(String user)	{
		
	}
	
	@POST
	@Produces("text/plain")
	public String postClientConfiguration(@QueryParam("json") String json,@QueryParam("username") String user){
		JsonConverter c=new JsonConverter();
		try {
			ClientConfiguration cc=(ClientConfiguration)c.getObject(json, Class.forName("PaymentDetails"));
			//TODO check client configuration
			GeneralResponse response =new GeneralResponse(); 
			//TODO update general response details
			String status="";
			String request="";
			return c.getJSON(request, status, response);
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ClientConfiguration getInstance(String user){
		return new ClientConfiguration(user);
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getUserAgent() {
		return userAgent;
	}
	public void setUserAgent(String userAgent) {
		this.userAgent = userAgent;
	}
}
