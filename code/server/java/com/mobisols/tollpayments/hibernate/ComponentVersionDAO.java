package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * ComponentVersion entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.ComponentVersion
 * @author MyEclipse Persistence Tools
 */

public class ComponentVersionDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ComponentVersionDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(ComponentVersion transientInstance) {
		log.debug("saving ComponentVersion instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ComponentVersion persistentInstance) {
		log.debug("deleting ComponentVersion instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ComponentVersion findById(
			com.mobisols.tollpayments.hibernate.ComponentVersionId id) {
		log.debug("getting ComponentVersion instance with id: " + id);
		try {
			ComponentVersion instance = (ComponentVersion) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.ComponentVersion",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ComponentVersion> findByExample(ComponentVersion instance) {
		log.debug("finding ComponentVersion instance by example");
		try {
			List<ComponentVersion> results = (List<ComponentVersion>) getHibernateTemplate()
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
		log.debug("finding ComponentVersion instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ComponentVersion as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all ComponentVersion instances");
		try {
			String queryString = "from ComponentVersion";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ComponentVersion merge(ComponentVersion detachedInstance) {
		log.debug("merging ComponentVersion instance");
		try {
			ComponentVersion result = (ComponentVersion) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ComponentVersion instance) {
		log.debug("attaching dirty ComponentVersion instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ComponentVersion instance) {
		log.debug("attaching clean ComponentVersion instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ComponentVersionDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ComponentVersionDAO) ctx.getBean("ComponentVersionDAO");
	}
}