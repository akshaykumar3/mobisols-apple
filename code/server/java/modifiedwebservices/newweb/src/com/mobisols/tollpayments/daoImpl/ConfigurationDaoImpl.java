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

// TODO: Auto-generated Javadoc
/**
 * The Class ConfigurationDaoImpl.
 */
public class ConfigurationDaoImpl implements ConfigurationDao {
	
	/** The component version dao. */
	private ComponentVersionDao componentVersionDao;
	
	/**
	 * Instantiates a new configuration dao impl.
	 */
	public ConfigurationDaoImpl()
	{
		//componentVersionDao = new ComponentVersionDaoImpl();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ConfigurationDao#getKeyValues(java.lang.String, java.lang.String)
	 */
	public List<Configuration> getKeyValues(String component,String version)
	{
		Session s=HibernateSessionFactory.getSession();
		ComponentVersion cv = componentVersionDao.getVersion(component, version);
		Criteria crit=s.createCriteria(Configuration.class);
		crit.add(Restrictions.eq("compVersionId", cv.getCompVersionId()));
		return crit.list();
	}
	
	/**
	 * Gets the component version dao.
	 *
	 * @return the component version dao
	 */
	public ComponentVersionDao getComponentVersionDao() {
		return componentVersionDao;
	}
	
	/**
	 * Sets the component version dao.
	 *
	 * @param componentVersionDao the new component version dao
	 */
	public void setComponentVersionDao(ComponentVersionDao componentVersionDao) {
		this.componentVersionDao = componentVersionDao;
	}
}
