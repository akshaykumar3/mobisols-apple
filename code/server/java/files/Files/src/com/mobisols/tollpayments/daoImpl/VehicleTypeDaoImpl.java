package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleType;

public class VehicleTypeDaoImpl implements VehicleTypeDao {

	public List getVehicleTypeList(){
		Session s=HibernateSessionFactory.getSession();	
		Criteria c=s.createCriteria(VehicleType.class);
		return c.list();
	}

	@Override
	public VehicleType getVehicleType(String type) {
		Session s=HibernateSessionFactory.getSession();	
		Criteria c=s.createCriteria(VehicleType.class);
		c.add(Restrictions.eq("name", type));
		VehicleType vt = (VehicleType) c.uniqueResult();
		return vt;
	}
}