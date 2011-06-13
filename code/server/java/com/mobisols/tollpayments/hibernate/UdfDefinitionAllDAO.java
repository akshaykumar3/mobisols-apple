package com.mobisols.tollpayments.hibernate;

import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UdfDefinitionAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UdfDefinitionAll
 * @author MyEclipse Persistence Tools
 */

public class UdfDefinitionAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UdfDefinitionAllDAO.class);
	// property constants
	public static final String NAME = "name";

	protected void initDao() {
		// do nothing
	}

	public void save(UdfDefinitionAll transientInstance) {
		log.debug("saving UdfDefinitionAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UdfDefinitionAll persistentInstance) {
		log.debug("deleting UdfDefinitionAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UdfDefinitionAll findById(java.lang.Integer id) {
		log.debug("getting UdfDefinitionAll instance with id: " + id);
		try {
			UdfDefinitionAll instance = (UdfDefinitionAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UdfDefinitionAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UdfDefinitionAll> findByExample(UdfDefinitionAll instance) {
		log.debug("finding UdfDefinitionAll instance by example");
		try {
			List<UdfDefinitionAll> results = (List<UdfDefinitionAll>) getHibernateTemplate()
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
		log.debug("finding UdfDefinitionAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UdfDefinitionAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UdfDefinitionAll> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findAll() {
		log.debug("finding all UdfDefinitionAll instances");
		try {
			String queryString = "from UdfDefinitionAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UdfDefinitionAll merge(UdfDefinitionAll detachedInstance) {
		log.debug("merging UdfDefinitionAll instance");
		try {
			UdfDefinitionAll result = (UdfDefinitionAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UdfDefinitionAll instance) {
		log.debug("attaching dirty UdfDefinitionAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UdfDefinitionAll instance) {
		log.debug("attaching clean UdfDefinitionAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UdfDefinitionAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UdfDefinitionAllDAO) ctx.getBean("UdfDefinitionAllDAO");
	}
}