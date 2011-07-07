package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.ServicePlan;
import com.mobisols.tollpayments.hibernate.entity.VehicleType;

public class UserServicePlanImpl implements UserServicePlan{
	String tollOpName =null;
	String name=null;
	String description=null;
	
	public UserServicePlanImpl(Integer servicePlanId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(ServicePlan.class);
		crit.add(Restrictions.eq("servicePlanId", servicePlanId));
		ServicePlan st=(ServicePlan) crit.uniqueResult();
		TollDetailsImpl toll = new TollDetailsImpl(st.getTollOperatorId());
		this.setDescription(st.getDescription());
		this.setName(st.getName());
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
