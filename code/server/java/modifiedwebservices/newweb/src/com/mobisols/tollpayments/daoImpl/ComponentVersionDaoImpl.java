package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.ComponentDao;
import com.mobisols.tollpayments.dao.ComponentVersionDao;
import com.mobisols.tollpayments.model.ComponentVersion;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

// TODO: Auto-generated Javadoc
/**
 * The Class ComponentVersionDaoImpl.
 */
public class ComponentVersionDaoImpl implements ComponentVersionDao {

	/** The component dao. */
	private ComponentDao componentDao;
	
	/**
	 * Instantiates a new component version dao impl.
	 */
	public ComponentVersionDaoImpl(){
		//this.componentDao = new ComponentDaoImpl();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ComponentVersionDao#getVersion(int, java.lang.String)
	 */
	public ComponentVersion getVersion(int componentId,String version)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ComponentVersion.class);
		crit.add(Restrictions.eq("componentId", componentId));
		crit.add(Restrictions.eq("version", version));
		return (ComponentVersion)crit.uniqueResult();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ComponentVersionDao#getVersion(java.lang.String, java.lang.String)
	 */
	public ComponentVersion getVersion(String component,String version)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ComponentVersion.class);
		crit.add(Restrictions.eq("componentId", componentDao.getComponent(component).getComponentId()));
		crit.add(Restrictions.eq("version", version));
		return (ComponentVersion)crit.uniqueResult();
	}
	
	/**
	 * Gets the component dao.
	 *
	 * @return the component dao
	 */
	public ComponentDao getComponentDao() {
		return componentDao;
	}
	
	/**
	 * Sets the component dao.
	 *
	 * @param componentDao the new component dao
	 */
	public void setComponentDao(ComponentDao componentDao) {
		this.componentDao = componentDao;
	}
}
