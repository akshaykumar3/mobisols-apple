package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * OwnerTypeAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.OwnerTypeAll
 * @author MyEclipse Persistence Tools
 */

public class OwnerTypeAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(OwnerTypeAllDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String UDF1 = "udf1";
	public static final String UDF2 = "udf2";
	public static final String UDF3 = "udf3";
	public static final String UDF4 = "udf4";
	public static final String UDF5 = "udf5";
	public static final String FALG1 = "falg1";
	public static final String FLAG2 = "flag2";
	public static final String FLAG3 = "flag3";
	public static final String FLAG4 = "flag4";
	public static final String FLAG5 = "flag5";

	protected void initDao() {
		// do nothing
	}

	public void save(OwnerTypeAll transientInstance) {
		log.debug("saving OwnerTypeAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(OwnerTypeAll persistentInstance) {
		log.debug("deleting OwnerTypeAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public OwnerTypeAll findById(java.lang.Integer id) {
		log.debug("getting OwnerTypeAll instance with id: " + id);
		try {
			OwnerTypeAll instance = (OwnerTypeAll) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.OwnerTypeAll", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<OwnerTypeAll> findByExample(OwnerTypeAll instance) {
		log.debug("finding OwnerTypeAll instance by example");
		try {
			List<OwnerTypeAll> results = (List<OwnerTypeAll>) getHibernateTemplate()
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
		log.debug("finding OwnerTypeAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from OwnerTypeAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<OwnerTypeAll> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<OwnerTypeAll> findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List<OwnerTypeAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<OwnerTypeAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<OwnerTypeAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<OwnerTypeAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<OwnerTypeAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<OwnerTypeAll> findByFalg1(Object falg1) {
		return findByProperty(FALG1, falg1);
	}

	public List<OwnerTypeAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<OwnerTypeAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<OwnerTypeAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<OwnerTypeAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all OwnerTypeAll instances");
		try {
			String queryString = "from OwnerTypeAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public OwnerTypeAll merge(OwnerTypeAll detachedInstance) {
		log.debug("merging OwnerTypeAll instance");
		try {
			OwnerTypeAll result = (OwnerTypeAll) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(OwnerTypeAll instance) {
		log.debug("attaching dirty OwnerTypeAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(OwnerTypeAll instance) {
		log.debug("attaching clean OwnerTypeAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static OwnerTypeAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (OwnerTypeAllDAO) ctx.getBean("OwnerTypeAllDAO");
	}
}