package com.mobisols.tollpayments.webservice;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/AddBalance")
public class AddBalanceImpl implements AddBalance {

	private float amount;
	private String description;
	@POST
	@Produces("text/plain")
	public String addBalance(@QueryParam("username") String user,@QueryParam("json")String json) {
		// TODO Auto-generated method stub
		JsonConverter c=new JsonConverterImpl();
		AddBalance ad=new AddBalanceImpl();
		System.out.println(json);
		ad=(AddBalance)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.AddBalance");
		System.out.println("got the gson object");
		GeneralResponse response =new GeneralResponseImpl(); 
		((GeneralResponseImpl) response).setDescription("successfully added $20 to your account");
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
