package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UdfDataAll entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UdfDataAll
 * @author MyEclipse Persistence Tools
 */

public class UdfDataAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UdfDataAllDAO.class);
	// property constants
	public static final String UDF_VALUE = "udfValue";

	protected void initDao() {
		// do nothing
	}

	public void save(UdfDataAll transientInstance) {
		log.debug("saving UdfDataAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UdfDataAll persistentInstance) {
		log.debug("deleting UdfDataAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UdfDataAll findById(java.lang.Integer id) {
		log.debug("getting UdfDataAll instance with id: " + id);
		try {
			UdfDataAll instance = (UdfDataAll) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UdfDataAll", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UdfDataAll> findByExample(UdfDataAll instance) {
		log.debug("finding UdfDataAll instance by example");
		try {
			List<UdfDataAll> results = (List<UdfDataAll>) getHibernateTemplate()
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
		log.debug("finding UdfDataAll instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UdfDataAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UdfDataAll> findByUdfValue(Object udfValue) {
		return findByProperty(UDF_VALUE, udfValue);
	}

	public List findAll() {
		log.debug("finding all UdfDataAll instances");
		try {
			String queryString = "from UdfDataAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UdfDataAll merge(UdfDataAll detachedInstance) {
		log.debug("merging UdfDataAll instance");
		try {
			UdfDataAll result = (UdfDataAll) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UdfDataAll instance) {
		log.debug("attaching dirty UdfDataAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UdfDataAll instance) {
		log.debug("attaching clean UdfDataAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UdfDataAllDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UdfDataAllDAO) ctx.getBean("UdfDataAllDAO");
	}
}