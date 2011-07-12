package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.TollLocation;

@Path("/TollDetailsList")
public class TollDetailsListImpl implements TollDetailsList{
private List<TollDetailsImpl> tollDetailsList;
	

	public TollDetailsListImpl()
	{
		
	}
	
	public TollDetailsList getTollDetailsListImpl(double latitude1,double longitude1,double latitude2,double longitude2){
		//TODO write an algorithm to find the toll details in the bounds
		//and populate the list
		System.out.println("creating a new list");
		//super().tollDetailsList=new LinkedList<TollDetails>();
		List<TollDetailsImpl> tollDetailsList=new LinkedList<TollDetailsImpl>();;
		Criteria crit=HibernateSessionFactory.getSession().createCriteria(TollLocation.class);
		List<TollLocation> tollList=crit.list();
		for(Iterator<TollLocation> it= tollList.iterator();it.hasNext();)
		{
			TollLocation t=it.next();
			if(t.getLatitude()>=latitude2 && t.getLatitude() <=latitude1 && t.getLongitude()>=longitude2 && t.getLongitude() <=longitude1)
				{
					tollDetailsList.add( new TollDetailsImpl(t.getTollLocationId()));
				}
		}
		TollDetailsList tdl=new TollDetailsListImpl();
		tdl.setTollDetailsList(tollDetailsList);
		System.out.println("got the object and added it to the list");
		return tdl;
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
		g = (GeometryImpl)jc.getObject(json,"com.mobisols.tollpayments.webservice.GeometryImpl");
		System.out.println("converted json to the object");
		TollDetailsList td=getTollDetailsListImpl(((GeometryImpl)g).getLatitude1(),((GeometryImpl)g).getLongitude1(),((GeometryImpl)g).getLatitude2(),((GeometryImpl)g).getLongitude2());
		System.out.println("created the list");
		String res = jc.getJSON(request,status,td);
		HibernateSessionFactory.closeSession();
		return res;
	}
	/**
	 * @param tollDetailsList the tollDetailsList to set
	 */
	public void setTollDetailsList(List<TollDetailsImpl> tollDetails) {
		this.tollDetailsList = tollDetails;
	}

	/**
	 * @return the tollDetailsList
	 */
	public List<TollDetailsImpl> getTollDetailsList() {
		return tollDetailsList;
	}

}
