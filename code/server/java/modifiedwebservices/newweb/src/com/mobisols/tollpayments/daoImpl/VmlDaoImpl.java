package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleMovementLog;

// TODO: Auto-generated Javadoc
/**
 * The Class VmlDaoImpl.
 */
public class VmlDaoImpl implements VmlDao {

	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VmlDao#save(com.mobisols.tollpayments.model.VehicleMovementLog)
	 */
	public void save(VehicleMovementLog vml) {
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.save(vml);
		tx.commit();
	}

}
