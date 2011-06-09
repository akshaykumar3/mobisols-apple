/******************************************************************************
 * TollDetails
 * 
 * This class represents service which adds balance to the
 * clients account. This will contain data for the client account
 * balance.
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

@Path("/AddBalance")
public class AddBalance {
	
	int amount;
	String description;
	
	public AddBalance() {
	}

	@POST
	@Produces("text/plain")
	public String addBalance(@QueryParam("username") String user,@QueryParam("json")String json)
	{
		JsonConverter c=new JsonConverter();
		try {
			AddBalance ad=(AddBalance)c.getObject(json, Class.forName("PaymentDetails"));
			//TODO update data using Hibernate and add balance to the user's account
			GeneralResponse response =new GeneralResponse(); 
			response=response.getInstance();
			String status="";
			String request="";
			return c.getJSON(request, status, response);
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//TODO write hibernate that adds the amount to the user's account
		return null;
	}
	
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
