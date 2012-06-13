package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.MakeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.Make;

// TODO: Auto-generated Javadoc
/**
 * The Class MakeDaoImpl.
 */
public class MakeDaoImpl implements MakeDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.MakeDao#getMake(java.lang.String)
	 */
	public Make getMake(String name){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Make.class);
		crit.add(Restrictions.eq("name", name));
		return (Make) crit.uniqueResult();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.MakeDao#getMake()
	 */
	public List<Make> getMake(){
		Session s =HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Make.class);
		crit.addOrder(Order.asc("name"));
		return crit.list();
	}
}
