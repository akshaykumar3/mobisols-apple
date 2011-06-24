package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserBalance entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserBalance
 * @author MyEclipse Persistence Tools
 */

public class UserBalanceDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserBalanceDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserBalance transientInstance) {
		log.debug("saving UserBalance instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserBalance persistentInstance) {
		log.debug("deleting UserBalance instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserBalance findById(
			com.mobisols.tollpayments.hibernate.UserBalanceId id) {
		log.debug("getting UserBalance instance with id: " + id);
		try {
			UserBalance instance = (UserBalance) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UserBalance", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserBalance> findByExample(UserBalance instance) {
		log.debug("finding UserBalance instance by example");
		try {
			List<UserBalance> results = (List<UserBalance>) getHibernateTemplate()
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
		log.debug("finding UserBalance instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserBalance as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserBalance instances");
		try {
			String queryString = "from UserBalance";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserBalance merge(UserBalance detachedInstance) {
		log.debug("merging UserBalance instance");
		try {
			UserBalance result = (UserBalance) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserBalance instance) {
		log.debug("attaching dirty UserBalance instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserBalance instance) {
		log.debug("attaching clean UserBalance instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserBalanceDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserBalanceDAO) ctx.getBean("UserBalanceDAO");
	}
}