package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.CcType;
import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VehicleType;

public class UserCcTypeImpl implements UserCcType {
     private String name;
     private String description;
     
     public UserCcTypeImpl(Integer CcTypeId) {
 		Session s=HibernateSessionFactory.getSession();
 		Criteria crit=s.createCriteria(CcType.class);
 		crit.add(Restrictions.eq("ccTypeId", CcTypeId));
 		CcType ct=(CcType) crit.uniqueResult();
 		this.setDescription(ct.getDescription());
 		this.setName(ct.getName());
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
