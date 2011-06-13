package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * TollLocation entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollLocation
 * @author MyEclipse Persistence Tools
 */

public class TollLocationDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollLocationDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(TollLocation transientInstance) {
		log.debug("saving TollLocation instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollLocation persistentInstance) {
		log.debug("deleting TollLocation instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollLocation findById(
			com.mobisols.tollpayments.hibernate.TollLocationId id) {
		log.debug("getting TollLocation instance with id: " + id);
		try {
			TollLocation instance = (TollLocation) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.TollLocation", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollLocation> findByExample(TollLocation instance) {
		log.debug("finding TollLocation instance by example");
		try {
			List<TollLocation> results = (List<TollLocation>) getHibernateTemplate()
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
		log.debug("finding TollLocation instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from TollLocation as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all TollLocation instances");
		try {
			String queryString = "from TollLocation";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollLocation merge(TollLocation detachedInstance) {
		log.debug("merging TollLocation instance");
		try {
			TollLocation result = (TollLocation) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollLocation instance) {
		log.debug("attaching dirty TollLocation instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollLocation instance) {
		log.debug("attaching clean TollLocation instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollLocationDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TollLocationDAO) ctx.getBean("TollLocationDAO");
	}
}