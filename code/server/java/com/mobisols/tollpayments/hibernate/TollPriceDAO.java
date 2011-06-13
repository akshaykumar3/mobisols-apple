package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * TollPrice entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollPrice
 * @author MyEclipse Persistence Tools
 */

public class TollPriceDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollPriceDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(TollPrice transientInstance) {
		log.debug("saving TollPrice instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollPrice persistentInstance) {
		log.debug("deleting TollPrice instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollPrice findById(com.mobisols.tollpayments.hibernate.TollPriceId id) {
		log.debug("getting TollPrice instance with id: " + id);
		try {
			TollPrice instance = (TollPrice) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.TollPrice", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollPrice> findByExample(TollPrice instance) {
		log.debug("finding TollPrice instance by example");
		try {
			List<TollPrice> results = (List<TollPrice>) getHibernateTemplate()
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
		log.debug("finding TollPrice instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TollPrice as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all TollPrice instances");
		try {
			String queryString = "from TollPrice";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollPrice merge(TollPrice detachedInstance) {
		log.debug("merging TollPrice instance");
		try {
			TollPrice result = (TollPrice) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollPrice instance) {
		log.debug("attaching dirty TollPrice instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollPrice instance) {
		log.debug("attaching clean TollPrice instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollPriceDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TollPriceDAO) ctx.getBean("TollPriceDAO");
	}
}