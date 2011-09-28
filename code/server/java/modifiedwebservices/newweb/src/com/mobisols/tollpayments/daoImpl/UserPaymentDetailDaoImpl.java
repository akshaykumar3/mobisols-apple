package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserPaymentDetail;

public class UserPaymentDetailDaoImpl implements UserPaymentDetailDao {

	public void save(UserPaymentDetail upd)
	{
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.save(upd);
		tx.commit();
	}
	
	public void update(UserPaymentDetail upd)
	{
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.update(upd);
		tx.commit();
	}
	
}
