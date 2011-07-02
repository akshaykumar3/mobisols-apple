package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.OwnerType;


public class OwnerTypeImpl implements UserOwnerType {
	private String name;
	private String description;
	public OwnerTypeImpl(Integer OwnerTypeId){
    Session s = HibernateSessionFactory.getSession();
    Criteria crit = s.createCriteria(OwnerType.class);
    crit.add(Restrictions.eq("ownerTypeId", OwnerTypeId));
    List <OwnerType> ot = crit.list();
    if(ot.isEmpty())
    { System.out.println("List is empty");
    	return;
    }
    System.out.println("List is not empty");
    this.setDescription(ot.get(0).getDescription());
	this.setName(ot.get(0).getName());
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
