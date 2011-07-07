package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VehicleType;

public class UserVehicleTypeImpl implements UserVehicleType {
	private String name;
	private String description;

	public UserVehicleTypeImpl(Integer vehicleTypeId) {
		Session s=HibernateSessionFactory.getSession();
		System.out.println(vehicleTypeId);
		Criteria crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("vehicleTypeId", vehicleTypeId));
		VehicleType vt=(VehicleType) crit.uniqueResult();
		System.out.println("list is not empty");
		this.setDescription(vt.getDescription());
		this.setName(vt.getName());
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
