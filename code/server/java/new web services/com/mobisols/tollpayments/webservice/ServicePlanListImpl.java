package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;
import java.util.Iterator;


import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.ServicePlan;
import com.mobisols.tollpayments.hibernate.VehicleType;

@Path("/ServicesList")
public class ServicePlanListImpl implements ServicePlanList {
	private List<UserServicePlan> servicePlans;
	public  ServicePlanListImpl(){
		this.servicePlans  = new LinkedList<UserServicePlan>();
	}
   
	@GET
	public String getServicePlan() {
	    Session s = HibernateSessionFactory.getSession();
	    Criteria crit = s.createCriteria(ServicePlan.class);
	    List<ServicePlan> st = crit.list();
	    ServicePlanListImpl sti = new ServicePlanListImpl();
	    for(Iterator it = st.iterator();it.hasNext();)
	    {
	    	sti.getServicePlans().add(new UserServicePlanImpl(((ServicePlan) it.next()).getServicePlanId()));
	    }
	    for(Iterator it = sti.getServicePlans().iterator();it.hasNext();)
	    {
	    	System.out.println(((UserServicePlan) it.next()).getName());
	    	System.out.println(((UserServicePlan) it.next()).getDescription());
	    }
	    
	    String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, sti);
		System.out.println(res);
		HibernateSessionFactory.closeSession();
		return res;    
	}

	@Override
	public void setServicePlans(List<UserServicePlan> servicePlans) {
		this.servicePlans = servicePlans;
	}

	@Override
	public List<UserServicePlan> getServicePlans() {
		return servicePlans;
	}

}
