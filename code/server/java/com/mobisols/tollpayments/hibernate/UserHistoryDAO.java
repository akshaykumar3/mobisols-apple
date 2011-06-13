package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserHistory entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserHistory
 * @author MyEclipse Persistence Tools
 */

public class UserHistoryDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserHistoryDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserHistory transientInstance) {
		log.debug("saving UserHistory instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserHistory persistentInstance) {
		log.debug("deleting UserHistory instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserHistory findById(
			com.mobisols.tollpayments.hibernate.UserHistoryId id) {
		log.debug("getting UserHistory instance with id: " + id);
		try {
			UserHistory instance = (UserHistory) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UserHistory", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserHistory> findByExample(UserHistory instance) {
		log.debug("finding UserHistory instance by example");
		try {
			List<UserHistory> results = (List<UserHistory>) getHibernateTemplate()
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
		log.debug("finding UserHistory instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserHistory as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserHistory instances");
		try {
			String queryString = "from UserHistory";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserHistory merge(UserHistory detachedInstance) {
		log.debug("merging UserHistory instance");
		try {
			UserHistory result = (UserHistory) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserHistory instance) {
		log.debug("attaching dirty UserHistory instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserHistory instance) {
		log.debug("attaching clean UserHistory instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserHistoryDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserHistoryDAO) ctx.getBean("UserHistoryDAO");
	}
}