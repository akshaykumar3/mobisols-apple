package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * CcType entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.CcType
 * @author MyEclipse Persistence Tools
 */

public class CcTypeDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(CcTypeDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(CcType transientInstance) {
		log.debug("saving CcType instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(CcType persistentInstance) {
		log.debug("deleting CcType instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CcType findById(com.mobisols.tollpayments.hibernate.CcTypeId id) {
		log.debug("getting CcType instance with id: " + id);
		try {
			CcType instance = (CcType) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.CcType", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<CcType> findByExample(CcType instance) {
		log.debug("finding CcType instance by example");
		try {
			List<CcType> results = (List<CcType>) getHibernateTemplate()
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
		log.debug("finding CcType instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from CcType as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all CcType instances");
		try {
			String queryString = "from CcType";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public CcType merge(CcType detachedInstance) {
		log.debug("merging CcType instance");
		try {
			CcType result = (CcType) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(CcType instance) {
		log.debug("attaching dirty CcType instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CcType instance) {
		log.debug("attaching clean CcType instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CcTypeDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CcTypeDAO) ctx.getBean("CcTypeDAO");
	}
}