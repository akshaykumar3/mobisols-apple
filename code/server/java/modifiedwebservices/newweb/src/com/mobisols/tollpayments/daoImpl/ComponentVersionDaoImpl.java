package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.dao.ComponentVersionDao;
import com.mobisols.tollpayments.model.ComponentVersion;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class ComponentVersionDaoImpl implements ComponentVersionDao {

	ComponentDao componentDao;
	
	public ComponentVersion getVersion(int componentId,String version)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ComponentVersion.class);
		crit.add(Restrictions.eq("componentId", componentId));
		crit.add(Restrictions.eq("version", version));
		return (ComponentVersion)crit.uniqueResult();
	}
	
	public ComponentVersion getVersion(String component,String version)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ComponentVersion.class);
		crit.add(Restrictions.eq("componentId", componentDao.getComponent(component).getComponentId()));
		crit.add(Restrictions.eq("version", version));
		return (ComponentVersion)crit.uniqueResult();
	}

	public ComponentDao getComponentDao() {
		return componentDao;
	}

	public void setComponentDao(ComponentDao componentDao) {
		this.componentDao = componentDao;
	}
}
