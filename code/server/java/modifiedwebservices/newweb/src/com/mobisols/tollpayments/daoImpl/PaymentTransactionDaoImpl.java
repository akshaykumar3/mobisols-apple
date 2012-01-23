package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.PaymentTransactionDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.PaymentTransaction;

public class PaymentTransactionDaoImpl implements PaymentTransactionDao {

	public void save(PaymentTransaction paymentTransaction)
	{
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.save(paymentTransaction);
		tx.commit();
	}
}
