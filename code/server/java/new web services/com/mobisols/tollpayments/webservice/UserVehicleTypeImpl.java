package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VehicleType;

public class UserVehicleTypeImpl implements UserVehicleType {
	private String name;
	private String description;

	public UserVehicleTypeImpl(Integer vehicleTypeId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("vehicleTypeId", vehicleTypeId));
		List<VehicleType> vt=crit.list();
		if(vt.isEmpty())
			return;
		this.setDescription(vt.get(0).getDescription());
		this.setName(vt.get(0).getName());
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
