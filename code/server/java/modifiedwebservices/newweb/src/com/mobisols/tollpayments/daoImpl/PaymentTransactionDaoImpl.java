package com.mobisols.tollpayments.daoImpl;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.PaymentTransactionDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.PaymentTransaction;
import com.mobisols.tollpayments.model.User;

// TODO: Auto-generated Javadoc
/**
 * The Class PaymentTransactionDaoImpl.
 */
public class PaymentTransactionDaoImpl implements PaymentTransactionDao {

	private UserDao userDao;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.PaymentTransactionDao#save(com.mobisols.tollpayments.model.PaymentTransaction)
	 */
	public void save(PaymentTransaction paymentTransaction)
	{
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.save(paymentTransaction);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.PaymentTransactionDao#getPaymentTransactions(int, java.sql.Timestamp, java.sql.Timestamp)
	 */
	@Override
	public List<PaymentTransaction> getPaymentTransactions(int userId,
			Timestamp startDate, Timestamp endDate) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(PaymentTransaction.class);
		User u = userDao.getUser(userId);
		crit.add(Restrictions.eq("userBlId", u.getUserBalance().getUbalId()));
		crit.add(Restrictions.between("timestamp", startDate, endDate));
		return crit.list();
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
