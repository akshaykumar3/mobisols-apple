package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserPaymentDetailHistory entities. Transaction control of the save(),
 * update() and delete() operations can directly support Spring
 * container-managed transactions or they can be augmented to handle
 * user-managed Spring transactions. Each of these methods provides additional
 * information for how to configure it for the desired type of transaction
 * control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserPaymentDetailHistory
 * @author MyEclipse Persistence Tools
 */

public class UserPaymentDetailHistoryDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserPaymentDetailHistoryDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserPaymentDetailHistory transientInstance) {
		log.debug("saving UserPaymentDetailHistory instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserPaymentDetailHistory persistentInstance) {
		log.debug("deleting UserPaymentDetailHistory instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserPaymentDetailHistory findById(
			com.mobisols.tollpayments.hibernate.UserPaymentDetailHistoryId id) {
		log.debug("getting UserPaymentDetailHistory instance with id: " + id);
		try {
			UserPaymentDetailHistory instance = (UserPaymentDetailHistory) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserPaymentDetailHistory",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserPaymentDetailHistory> findByExample(
			UserPaymentDetailHistory instance) {
		log.debug("finding UserPaymentDetailHistory instance by example");
		try {
			List<UserPaymentDetailHistory> results = (List<UserPaymentDetailHistory>) getHibernateTemplate()
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
		log.debug("finding UserPaymentDetailHistory instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserPaymentDetailHistory as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserPaymentDetailHistory instances");
		try {
			String queryString = "from UserPaymentDetailHistory";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserPaymentDetailHistory merge(
			UserPaymentDetailHistory detachedInstance) {
		log.debug("merging UserPaymentDetailHistory instance");
		try {
			UserPaymentDetailHistory result = (UserPaymentDetailHistory) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserPaymentDetailHistory instance) {
		log.debug("attaching dirty UserPaymentDetailHistory instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserPaymentDetailHistory instance) {
		log.debug("attaching clean UserPaymentDetailHistory instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserPaymentDetailHistoryDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserPaymentDetailHistoryDAO) ctx
				.getBean("UserPaymentDetailHistoryDAO");
	}
}