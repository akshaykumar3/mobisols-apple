package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VmlType;

public class VMLTypeImpl implements VMLType {
	private String name;
	private String description;
	public VMLTypeImpl(Integer vmlTypeId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VmlType.class);
		crit.add(Restrictions.eq("vehicle_type_id", vmlTypeId));
		List<VmlType> vt=crit.list();
		if(vt.isEmpty())
			return;
		this.setDescription(vt.get(0).getId().getDescription());
		this.setName(vt.get(0).getId().getName());
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