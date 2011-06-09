package com.mobisols.tollpayments.mockwebservices;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/TollDetailsList")
public class TollDetailsList {

	private List<TollDetails> tollDetailsList;

	public TollDetailsList(float latitude1,float longitude1,float latitude2,float logitude2){
		//TODO write an algorithm to find the toll details in the bounds
		//and populate the list
	}
	
	@GET
	@Produces("text/plain")
	public String generateTollDetailsList(@QueryParam("username") String user,@QueryParam("json") String json)
	{
		String request="";
		String status="";
		JsonConverter jc=new JsonConverter();
		Geometry g;
		try {
			g = (Geometry)jc.getObject(json, Class.forName("Geometry"));
			TollDetailsList td=new TollDetailsList(g.getLatitude1(),g.getLongitude1(),g.getLatitude2(),g.getLongitude2());
			return jc.getJSON(request,status,td);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * @param tollDetailsList the tollDetailsList to set
	 */
	public void setTollDetailsList(List<TollDetails> tollDetailsList) {
		this.tollDetailsList = tollDetailsList;
	}

	/**
	 * @return the tollDetailsList
	 */
	public List<TollDetails> getTollDetailsList() {
		return tollDetailsList;
	}
}
