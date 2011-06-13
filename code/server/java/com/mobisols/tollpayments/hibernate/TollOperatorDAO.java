package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * TollOperator entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollOperator
 * @author MyEclipse Persistence Tools
 */

public class TollOperatorDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollOperatorDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(TollOperator transientInstance) {
		log.debug("saving TollOperator instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollOperator persistentInstance) {
		log.debug("deleting TollOperator instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollOperator findById(
			com.mobisols.tollpayments.hibernate.TollOperatorId id) {
		log.debug("getting TollOperator instance with id: " + id);
		try {
			TollOperator instance = (TollOperator) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.TollOperator", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollOperator> findByExample(TollOperator instance) {
		log.debug("finding TollOperator instance by example");
		try {
			List<TollOperator> results = (List<TollOperator>) getHibernateTemplate()
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
		log.debug("finding TollOperator instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from TollOperator as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all TollOperator instances");
		try {
			String queryString = "from TollOperator";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollOperator merge(TollOperator detachedInstance) {
		log.debug("merging TollOperator instance");
		try {
			TollOperator result = (TollOperator) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollOperator instance) {
		log.debug("attaching dirty TollOperator instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollOperator instance) {
		log.debug("attaching clean TollOperator instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollOperatorDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TollOperatorDAO) ctx.getBean("TollOperatorDAO");
	}
}