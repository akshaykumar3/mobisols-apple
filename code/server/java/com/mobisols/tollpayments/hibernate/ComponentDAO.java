package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Component entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.Component
 * @author MyEclipse Persistence Tools
 */

public class ComponentDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ComponentDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(Component transientInstance) {
		log.debug("saving Component instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Component persistentInstance) {
		log.debug("deleting Component instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Component findById(com.mobisols.tollpayments.hibernate.ComponentId id) {
		log.debug("getting Component instance with id: " + id);
		try {
			Component instance = (Component) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.Component", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Component> findByExample(Component instance) {
		log.debug("finding Component instance by example");
		try {
			List<Component> results = (List<Component>) getHibernateTemplate()
					.findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Component instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Component as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all Component instances");
		try {
			String queryString = "from Component";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Component merge(Component detachedInstance) {
		log.debug("merging Component instance");
		try {
			Component result = (Component) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Component instance) {
		log.debug("attaching dirty Component instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Component instance) {
		log.debug("attaching clean Component instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ComponentDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ComponentDAO) ctx.getBean("ComponentDAO");
	}
}