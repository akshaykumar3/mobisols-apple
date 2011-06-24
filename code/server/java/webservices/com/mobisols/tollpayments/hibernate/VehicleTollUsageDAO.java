package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * VehicleTollUsage entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.VehicleTollUsage
 * @author MyEclipse Persistence Tools
 */

public class VehicleTollUsageDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(VehicleTollUsageDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(VehicleTollUsage transientInstance) {
		log.debug("saving VehicleTollUsage instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(VehicleTollUsage persistentInstance) {
		log.debug("deleting VehicleTollUsage instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public VehicleTollUsage findById(
			com.mobisols.tollpayments.hibernate.VehicleTollUsageId id) {
		log.debug("getting VehicleTollUsage instance with id: " + id);
		try {
			VehicleTollUsage instance = (VehicleTollUsage) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.VehicleTollUsage",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<VehicleTollUsage> findByExample(VehicleTollUsage instance) {
		log.debug("finding VehicleTollUsage instance by example");
		try {
			List<VehicleTollUsage> results = (List<VehicleTollUsage>) getHibernateTemplate()
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
		log.debug("finding VehicleTollUsage instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from VehicleTollUsage as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all VehicleTollUsage instances");
		try {
			String queryString = "from VehicleTollUsage";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public VehicleTollUsage merge(VehicleTollUsage detachedInstance) {
		log.debug("merging VehicleTollUsage instance");
		try {
			VehicleTollUsage result = (VehicleTollUsage) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(VehicleTollUsage instance) {
		log.debug("attaching dirty VehicleTollUsage instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(VehicleTollUsage instance) {
		log.debug("attaching clean VehicleTollUsage instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static VehicleTollUsageDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (VehicleTollUsageDAO) ctx.getBean("VehicleTollUsageDAO");
	}
}