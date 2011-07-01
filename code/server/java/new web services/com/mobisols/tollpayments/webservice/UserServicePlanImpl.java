package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.ServicePlan;
import com.mobisols.tollpayments.hibernate.VehicleType;

public class UserServicePlanImpl implements UserServicePlan{
	String tollOpName =null;
	String name=null;
	String description=null;
	
	public UserServicePlanImpl(Integer servicePlanId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(ServicePlan.class);
		crit.add(Restrictions.eq("service_plan_id", servicePlanId));
		List<ServicePlan> st=crit.list();
		if(st.isEmpty())
			return;
		TollDetailsImpl toll = new TollDetailsImpl(st.get(0).getTollOperatorId());
		this.setDescription(st.get(0).getDescription());
		this.setName(st.get(0).getName());
		this.setTollOpName(toll.getTollOperator());
	}
	
	public String getTollOpName() {
		return tollOpName;
	}
	public void setTollOpName(String tollOpName) {
		this.tollOpName = tollOpName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


}
