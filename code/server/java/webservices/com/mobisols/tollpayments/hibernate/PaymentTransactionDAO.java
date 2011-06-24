package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * PaymentTransaction entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.PaymentTransaction
 * @author MyEclipse Persistence Tools
 */

public class PaymentTransactionDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(PaymentTransactionDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(PaymentTransaction transientInstance) {
		log.debug("saving PaymentTransaction instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(PaymentTransaction persistentInstance) {
		log.debug("deleting PaymentTransaction instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public PaymentTransaction findById(
			com.mobisols.tollpayments.hibernate.PaymentTransactionId id) {
		log.debug("getting PaymentTransaction instance with id: " + id);
		try {
			PaymentTransaction instance = (PaymentTransaction) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.PaymentTransaction",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<PaymentTransaction> findByExample(PaymentTransaction instance) {
		log.debug("finding PaymentTransaction instance by example");
		try {
			List<PaymentTransaction> results = (List<PaymentTransaction>) getHibernateTemplate()
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
		log.debug("finding PaymentTransaction instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from PaymentTransaction as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all PaymentTransaction instances");
		try {
			String queryString = "from PaymentTransaction";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public PaymentTransaction merge(PaymentTransaction detachedInstance) {
		log.debug("merging PaymentTransaction instance");
		try {
			PaymentTransaction result = (PaymentTransaction) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(PaymentTransaction instance) {
		log.debug("attaching dirty PaymentTransaction instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(PaymentTransaction instance) {
		log.debug("attaching clean PaymentTransaction instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static PaymentTransactionDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (PaymentTransactionDAO) ctx.getBean("PaymentTransactionDAO");
	}
}