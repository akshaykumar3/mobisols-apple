package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

import com.mobisols.tollpayments.model.UserBalance;

// TODO: Auto-generated Javadoc
/**
 * The Class UserBalanceDaoImpl.
 */
public class UserBalanceDaoImpl implements UserBalanceDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserBalanceDao#getUserBalance(java.lang.String)
	 */
	public UserBalance getUserBalance(String username)
	{
		UserDao user=new UserDaoImpl();
		return user.getUser(username).getUserBalance();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserBalanceDao#save(com.mobisols.tollpayments.model.UserBalance)
	 */
	public void save(UserBalance u)
	{
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.saveOrUpdate(u);
		tx.commit();
	}
}
