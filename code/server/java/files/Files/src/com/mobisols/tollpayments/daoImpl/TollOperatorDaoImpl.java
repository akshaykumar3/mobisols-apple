package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.TollOperatorDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TollOperator;
import com.mobisols.tollpayments.model.User;

public class TollOperatorDaoImpl implements TollOperatorDao {

	public User getUser(int tollOperatorId)
	{
		Session s = HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(TollOperator.class);
		crit.add(Restrictions.eq("tollOperatorId", tollOperatorId));
		TollOperator to=(TollOperator) crit.uniqueResult();
		return to.getUser();
	}
	
	public TollOperator getTollOperator(int tollOperatorId)
	{
		Session s = HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(TollOperator.class);
		crit.add(Restrictions.eq("tollOperatorId", tollOperatorId));
		TollOperator to=(TollOperator) crit.uniqueResult();
		return to;
	}
}
