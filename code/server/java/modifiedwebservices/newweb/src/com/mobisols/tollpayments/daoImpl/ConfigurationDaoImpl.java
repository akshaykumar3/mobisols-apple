package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.ComponentVersionDao;
import com.mobisols.tollpayments.dao.ConfigurationDao;
import com.mobisols.tollpayments.model.ComponentVersion;
import com.mobisols.tollpayments.model.Configuration;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class ConfigurationDaoImpl implements ConfigurationDao {
	private ComponentVersionDao componentVersionDao;
	
	public ConfigurationDaoImpl()
	{
		componentVersionDao = new ComponentVersionDaoImpl();
	}
	public List<Configuration> getKeyValues(String component,String version)
	{
		Session s=HibernateSessionFactory.getSession();
		ComponentVersion cv = componentVersionDao.getVersion(component, version);
		Criteria crit=s.createCriteria(Configuration.class);
		crit.add(Restrictions.eq("compVersionId", cv.getCompVersionId()));
		return crit.list();
	}
}
