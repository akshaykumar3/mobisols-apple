package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.MakeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.Make;

public class MakeDaoImpl implements MakeDao {

	public Make getMake(String name){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Make.class);
		crit.add(Restrictions.eq("name", name));
		return (Make) crit.uniqueResult();
	}
	
	public List<Make> getMake(){
		Session s =HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Make.class);
		return crit.list();
	}
}
