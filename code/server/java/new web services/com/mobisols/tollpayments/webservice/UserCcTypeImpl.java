package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.CcType;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VehicleType;

public class UserCcTypeImpl implements UserCcType {
     private String name;
     private String description;
     
     public UserCcTypeImpl(Integer CcTypeId) {
 		Session s=HibernateSessionFactory.getSession();
 		Criteria crit=s.createCriteria(CcType.class);
 		crit.add(Restrictions.eq("cc_type_id", CcTypeId));
 		List<CcType> ct=crit.list();
 		if(ct.isEmpty())
 			return;
 		this.setDescription(ct.get(0).getDescription());
 		this.setName(ct.get(0).getName());
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
