package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleType;

public class VehicleTypeDaoImpl implements VehicleTypeDao {

	public List getVehicleTypeList(){
		Session s=HibernateSessionFactory.getSession();	
		Criteria c=s.createCriteria(VehicleType.class);
		return c.list();
	}
}
