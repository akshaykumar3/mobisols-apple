package com.mobisols.tollpayments.webservice;

import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

@Path("/ClientConfiguration")
public class ClientConfigurationImpl implements ClientConfiguration{
	private Integer compVersionId=0;
	private String key=null;
	private String value=null;
	
	@POST
	@Produces("text/plain")
	public String postClientConfiguration(String json, String user) {
		JsonConverter c=new JsonConverterImpl();
		ClientConfigurationImpl cl=new ClientConfigurationImpl();
		System.out.println(json);
		GeneralResponse response;
		ad=(ClientConfiguration)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.ClientConfiguration");
		System.out.println("got the gson object");
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		if(u.isEmpty())
			return "";
		
		if(hasId==1)
		{
			response = clientConfig(cl, cl.getConfigId(),u.get(0).getUserId());
		}
	
		
		
	}

}
