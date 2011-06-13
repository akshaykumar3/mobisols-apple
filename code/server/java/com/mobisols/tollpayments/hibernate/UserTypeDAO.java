package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserType entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserType
 * @author MyEclipse Persistence Tools
 */

public class UserTypeDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserTypeDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserType transientInstance) {
		log.debug("saving UserType instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserType persistentInstance) {
		log.debug("deleting UserType instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserType findById(com.mobisols.tollpayments.hibernate.UserTypeId id) {
		log.debug("getting UserType instance with id: " + id);
		try {
			UserType instance = (UserType) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UserType", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserType> findByExample(UserType instance) {
		log.debug("finding UserType instance by example");
		try {
			List<UserType> results = (List<UserType>) getHibernateTemplate()
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
		log.debug("finding UserType instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserType as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserType instances");
		try {
			String queryString = "from UserType";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserType merge(UserType detachedInstance) {
		log.debug("merging UserType instance");
		try {
			UserType result = (UserType) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserType instance) {
		log.debug("attaching dirty UserType instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserType instance) {
		log.debug("attaching clean UserType instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserTypeDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UserTypeDAO) ctx.getBean("UserTypeDAO");
	}
}