package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Configuration entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.Configuration
 * @author MyEclipse Persistence Tools
 */

public class ConfigurationDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ConfigurationDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(Configuration transientInstance) {
		log.debug("saving Configuration instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Configuration persistentInstance) {
		log.debug("deleting Configuration instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Configuration findById(
			com.mobisols.tollpayments.hibernate.ConfigurationId id) {
		log.debug("getting Configuration instance with id: " + id);
		try {
			Configuration instance = (Configuration) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.Configuration",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Configuration> findByExample(Configuration instance) {
		log.debug("finding Configuration instance by example");
		try {
			List<Configuration> results = (List<Configuration>) getHibernateTemplate()
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
		log.debug("finding Configuration instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Configuration as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all Configuration instances");
		try {
			String queryString = "from Configuration";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Configuration merge(Configuration detachedInstance) {
		log.debug("merging Configuration instance");
		try {
			Configuration result = (Configuration) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Configuration instance) {
		log.debug("attaching dirty Configuration instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Configuration instance) {
		log.debug("attaching clean Configuration instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ConfigurationDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ConfigurationDAO) ctx.getBean("ConfigurationDAO");
	}
}