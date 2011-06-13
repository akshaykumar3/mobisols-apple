package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserBalanceLog entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserBalanceLog
 * @author MyEclipse Persistence Tools
 */

public class UserBalanceLogDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserBalanceLogDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserBalanceLog transientInstance) {
		log.debug("saving UserBalanceLog instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserBalanceLog persistentInstance) {
		log.debug("deleting UserBalanceLog instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserBalanceLog findById(
			com.mobisols.tollpayments.hibernate.UserBalanceLogId id) {
		log.debug("getting UserBalanceLog instance with id: " + id);
		try {
			UserBalanceLog instance = (UserBalanceLog) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserBalanceLog",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserBalanceLog> findByExample(UserBalanceLog instance) {
		log.debug("finding UserBalanceLog instance by example");
		try {
			List<UserBalanceLog> results = (List<UserBalanceLog>) getHibernateTemplate()
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
		log.debug("finding UserBalanceLog instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserBalanceLog as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserBalanceLog instances");
		try {
			String queryString = "from UserBalanceLog";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserBalanceLog merge(UserBalanceLog detachedInstance) {
		log.debug("merging UserBalanceLog instance");
		try {
			UserBalanceLog result = (UserBalanceLog) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserBalanceLog instance) {
		log.debug("attaching dirty UserBalanceLog instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserBalanceLog instance) {
		log.debug("attaching clean UserBalanceLog instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserBalanceLogDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserBalanceLogDAO) ctx.getBean("UserBalanceLogDAO");
	}
}