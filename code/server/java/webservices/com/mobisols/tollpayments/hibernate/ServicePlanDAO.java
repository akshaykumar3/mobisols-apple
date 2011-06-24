package com.mobisols.tollpayments.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * ServicePlan entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.ServicePlan
 * @author MyEclipse Persistence Tools
 */

public class ServicePlanDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ServicePlanDAO.class);

	// property constants

	protected void initDao() {
		// do nothing
	}

	public void save(ServicePlan transientInstance) {
		log.debug("saving ServicePlan instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ServicePlan persistentInstance) {
		log.debug("deleting ServicePlan instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ServicePlan findById(
			com.mobisols.tollpayments.hibernate.ServicePlanId id) {
		log.debug("getting ServicePlan instance with id: " + id);
		try {
			ServicePlan instance = (ServicePlan) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.ServicePlan", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ServicePlan> findByExample(ServicePlan instance) {
		log.debug("finding ServicePlan instance by example");
		try {
			List<ServicePlan> results = (List<ServicePlan>) getHibernateTemplate()
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
		log.debug("finding ServicePlan instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from ServicePlan as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all ServicePlan instances");
		try {
			String queryString = "from ServicePlan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ServicePlan merge(ServicePlan detachedInstance) {
		log.debug("merging ServicePlan instance");
		try {
			ServicePlan result = (ServicePlan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ServicePlan instance) {
		log.debug("attaching dirty ServicePlan instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ServicePlan instance) {
		log.debug("attaching clean ServicePlan instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ServicePlanDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ServicePlanDAO) ctx.getBean("ServicePlanDAO");
	}
}