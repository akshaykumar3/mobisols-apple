package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserPaymentDetailHistoryDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserPaymentDetailHistory;

// TODO: Auto-generated Javadoc
/**
 * The Class UserPaymentDetailHistoryDaoImpl.
 */
public class UserPaymentDetailHistoryDaoImpl implements UserPaymentDetailHistoryDao{

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserPaymentDetailHistoryDao#getLatestUserPaymentDetailHistoryId(int)
	 */
	public int getLatestUserPaymentDetailHistoryId(int paymentDetailId)
	{
		Session s=HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserPaymentDetailHistory.class);
		crit.add(Restrictions.eq("updId", paymentDetailId));
		crit.addOrder(Order.desc("startDate"));
		List<UserPaymentDetailHistory> l= crit.list();
		return l.get(0).getUpdhId();
	}
}
