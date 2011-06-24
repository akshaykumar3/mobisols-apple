package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * TollLocationHistory entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollLocationHistory
 * @author MyEclipse Persistence Tools
 */

public class TollLocationHistoryDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollLocationHistoryDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(TollLocationHistory transientInstance) {
		log.debug("saving TollLocationHistory instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollLocationHistory persistentInstance) {
		log.debug("deleting TollLocationHistory instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollLocationHistory findById(
			com.mobisols.tollpayments.hibernate.TollLocationHistoryId id) {
		log.debug("getting TollLocationHistory instance with id: " + id);
		try {
			TollLocationHistory instance = (TollLocationHistory) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.TollLocationHistory",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollLocationHistory> findByExample(TollLocationHistory instance) {
		log.debug("finding TollLocationHistory instance by example");
		try {
			List<TollLocationHistory> results = (List<TollLocationHistory>) getHibernateTemplate()
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
		log.debug("finding TollLocationHistory instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from TollLocationHistory as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all TollLocationHistory instances");
		try {
			String queryString = "from TollLocationHistory";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollLocationHistory merge(TollLocationHistory detachedInstance) {
		log.debug("merging TollLocationHistory instance");
		try {
			TollLocationHistory result = (TollLocationHistory) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollLocationHistory instance) {
		log.debug("attaching dirty TollLocationHistory instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollLocationHistory instance) {
		log.debug("attaching clean TollLocationHistory instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollLocationHistoryDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TollLocationHistoryDAO) ctx.getBean("TollLocationHistoryDAO");
	}
}