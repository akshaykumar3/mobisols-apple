package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * OwnerType entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.OwnerType
 * @author MyEclipse Persistence Tools
 */

public class OwnerTypeDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(OwnerTypeDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(OwnerType transientInstance) {
		log.debug("saving OwnerType instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(OwnerType persistentInstance) {
		log.debug("deleting OwnerType instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public OwnerType findById(com.mobisols.tollpayments.hibernate.OwnerTypeId id) {
		log.debug("getting OwnerType instance with id: " + id);
		try {
			OwnerType instance = (OwnerType) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.OwnerType", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<OwnerType> findByExample(OwnerType instance) {
		log.debug("finding OwnerType instance by example");
		try {
			List<OwnerType> results = (List<OwnerType>) getHibernateTemplate()
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
		log.debug("finding OwnerType instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from OwnerType as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all OwnerType instances");
		try {
			String queryString = "from OwnerType";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public OwnerType merge(OwnerType detachedInstance) {
		log.debug("merging OwnerType instance");
		try {
			OwnerType result = (OwnerType) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(OwnerType instance) {
		log.debug("attaching dirty OwnerType instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(OwnerType instance) {
		log.debug("attaching clean OwnerType instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static OwnerTypeDAO getFromApplicationContext(ApplicationContext ctx) {
		return (OwnerTypeDAO) ctx.getBean("OwnerTypeDAO");
	}
}