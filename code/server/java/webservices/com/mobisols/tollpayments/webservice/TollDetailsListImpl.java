package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/TollDetailsList")
public class TollDetailsListImpl implements TollDetailsList{
private List<TollDetails> tollDetailsList;
	

	public TollDetailsListImpl()
	{
		
	}
	
	public TollDetailsListImpl(double latitude1,double longitude1,double latitude2,double logitude2){
		//TODO write an algorithm to find the toll details in the bounds
		//and populate the list
		int id=0;
		System.out.println("creating a new list");
		this.tollDetailsList=new LinkedList<TollDetails>();
		this.tollDetailsList.add((TollDetails) new TollDetailsImpl(id));
		System.out.println("got the object and added it to the list");
	}
	
	@GET
	@Produces("text/plain")
	public String generateTollDetailsList(@QueryParam("username") String user,@QueryParam("json") String json)
	{
		String request="";
		String status="";
		System.out.println("this is Toll Payment List");
		JsonConverter jc=new JsonConverterImpl();
		System.out.println("the Json converter created");
		Geometry g;
		g = (GeometryImpl)jc.getObject(json,"com.mobisols.tollpayments.mockwebservices.Geometry");
		System.out.println("converted json to the object");
		TollDetailsList td=new TollDetailsListImpl(((GeometryImpl)g).getLatitude1(),((GeometryImpl)g).getLongitude1(),((GeometryImpl)g).getLatitude2(),((GeometryImpl)g).getLongitude2());
		System.out.println("created the list");
		return jc.getJSON(request,status,td);
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
