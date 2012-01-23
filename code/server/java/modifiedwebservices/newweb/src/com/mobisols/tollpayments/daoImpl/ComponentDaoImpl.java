
package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.model.Component;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class ComponentDaoImpl implements ComponentDao {
	public Component getComponent(String name) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(Component.class);
		crit.add(Restrictions.eq("name", name));
		Component c=(Component) crit.uniqueResult();
		return c;
	}
}
