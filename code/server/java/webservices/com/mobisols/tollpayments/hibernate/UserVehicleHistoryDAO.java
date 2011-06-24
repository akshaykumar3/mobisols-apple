package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserVehicleHistory entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserVehicleHistory
 * @author MyEclipse Persistence Tools
 */

public class UserVehicleHistoryDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserVehicleHistoryDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(UserVehicleHistory transientInstance) {
		log.debug("saving UserVehicleHistory instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserVehicleHistory persistentInstance) {
		log.debug("deleting UserVehicleHistory instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserVehicleHistory findById(
			com.mobisols.tollpayments.hibernate.UserVehicleHistoryId id) {
		log.debug("getting UserVehicleHistory instance with id: " + id);
		try {
			UserVehicleHistory instance = (UserVehicleHistory) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserVehicleHistory",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserVehicleHistory> findByExample(UserVehicleHistory instance) {
		log.debug("finding UserVehicleHistory instance by example");
		try {
			List<UserVehicleHistory> results = (List<UserVehicleHistory>) getHibernateTemplate()
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
		log.debug("finding UserVehicleHistory instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserVehicleHistory as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all UserVehicleHistory instances");
		try {
			String queryString = "from UserVehicleHistory";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserVehicleHistory merge(UserVehicleHistory detachedInstance) {
		log.debug("merging UserVehicleHistory instance");
		try {
			UserVehicleHistory result = (UserVehicleHistory) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserVehicleHistory instance) {
		log.debug("attaching dirty UserVehicleHistory instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserVehicleHistory instance) {
		log.debug("attaching clean UserVehicleHistory instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserVehicleHistoryDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserVehicleHistoryDAO) ctx.getBean("UserVehicleHistoryDAO");
	}
}