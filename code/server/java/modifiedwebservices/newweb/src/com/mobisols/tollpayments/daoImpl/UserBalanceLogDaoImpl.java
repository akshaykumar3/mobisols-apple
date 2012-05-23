package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserBalanceLogDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserBalanceLog;

// TODO: Auto-generated Javadoc
/**
 * The Class UserBalanceLogDaoImpl.
 */
public class UserBalanceLogDaoImpl implements UserBalanceLogDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserBalanceLogDao#getRecentBalanceLogId(int)
	 */
	public UserBalanceLog getRecentBalanceLogId(int balanceId)
	{
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalanceLog.class);
		crit.add(Restrictions.eq("ubalId", balanceId));
		crit.addOrder(Order.desc("timestamp"));
		List<UserBalanceLog> l=crit.list();
		return l.get(0);
	}
}
