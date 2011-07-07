package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.OwnerType;


public class OwnerTypeImpl implements UserOwnerType {
	private String name;
	private String description;
	public OwnerTypeImpl(Integer OwnerTypeId){
    Session s = HibernateSessionFactory.getSession();
    Criteria crit = s.createCriteria(OwnerType.class);
    crit.add(Restrictions.eq("ownerTypeId", OwnerTypeId));
    OwnerType ot = (OwnerType) crit.uniqueResult();
    System.out.println("List is not empty");
    this.setDescription(ot.getDescription());
	this.setName(ot.getName());
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
