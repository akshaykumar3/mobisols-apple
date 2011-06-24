package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserService entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserService
 * @author MyEclipse Persistence Tools
 */

public class UserServiceDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserServiceDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserService transientInstance) {
		log.debug("saving UserService instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserService persistentInstance) {
		log.debug("deleting UserService instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserService findById(
			com.mobisols.tollpayments.hibernate.UserServiceId id) {
		log.debug("getting UserService instance with id: " + id);
		try {
			UserService instance = (UserService) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UserService", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserService> findByExample(UserService instance) {
		log.debug("finding UserService instance by example");
		try {
			List<UserService> results = (List<UserService>) getHibernateTemplate()
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
		log.debug("finding UserService instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserService as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserService instances");
		try {
			String queryString = "from UserService";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserService merge(UserService detachedInstance) {
		log.debug("merging UserService instance");
		try {
			UserService result = (UserService) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserService instance) {
		log.debug("attaching dirty UserService instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserService instance) {
		log.debug("attaching clean UserService instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserServiceDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserServiceDAO) ctx.getBean("UserServiceDAO");
	}
}