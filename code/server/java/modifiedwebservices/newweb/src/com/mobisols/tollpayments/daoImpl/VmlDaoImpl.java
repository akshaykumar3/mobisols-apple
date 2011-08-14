package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleMovementLog;

public class VmlDaoImpl implements VmlDao {

	
	public void save(VehicleMovementLog vml) {
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.save(vml);
		tx.commit();
	}

}
