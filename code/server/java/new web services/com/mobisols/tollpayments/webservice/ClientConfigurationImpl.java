package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.List;
import java.lang.*;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.CcType;
import com.mobisols.tollpayments.hibernate.Component;
import com.mobisols.tollpayments.hibernate.ComponentVersion;
import com.mobisols.tollpayments.hibernate.Configuration;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;

@Path("/ClientConfiguration")
public class ClientConfigurationImpl implements ClientConfiguration{
	private Integer compVersionId=0;
	private String key=null;
	private String value=null;
	
	@GET
	@Produces("text/plain")
	public String postClientConfiguration(@QueryParam(value = "client_id")String client,@QueryParam(value= "json") String json)
	{
		JsonConverter c=new JsonConverterImpl();
		ClientConfigurationImpl cl=new ClientConfigurationImpl();
		System.out.println(json);
		GeneralResponse response;
		cl= (ClientConfigurationImpl) c.getObject(json,"Configuration");
		System.out.println("got the gson object");
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(Component.class);
		crit.add(Restrictions.eq("name", cl.getKey()));
		List<Component> co = crit.list();
		crit = s.createCriteria(ComponentVersion.class);
		crit.add(Restrictions.eq("description",cl.getCompVersionId()));
		List<ComponentVersion> cv = crit.list();
        for(Iterator i = co.iterator();i.hasNext();)
        	for(Iterator j = co.iterator();j.hasNext();)
        	{
        		if(((Component) i.next()).getComponentId()== (((ComponentVersion)j.next()).getComponentId()))
        		{
        			cl.setValue(((Component)i).getDescription());
        		}
        	}
        return (c.getJSON("", "success", cl));
	
	}

	public Integer getCompVersionId() {
		return compVersionId;
	}

	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}



	