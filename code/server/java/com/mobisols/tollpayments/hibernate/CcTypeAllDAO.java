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
 * CcTypeAll entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.CcTypeAll
 * @author MyEclipse Persistence Tools
 */

public class CcTypeAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(CcTypeAllDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String DESCRIPTION = "description";
	public static final String UDF1 = "udf1";
	public static final String UDF2 = "udf2";
	public static final String UDF3 = "udf3";
	public static final String UDF4 = "udf4";
	public static final String UDF5 = "udf5";
	public static final String FLAG1 = "flag1";
	public static final String FLAG2 = "flag2";
	public static final String FLAG3 = "flag3";
	public static final String FLAG4 = "flag4";
	public static final String FLAG5 = "flag5";

	protected void initDao() {
		// do nothing
	}

	public void save(CcTypeAll transientInstance) {
		log.debug("saving CcTypeAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(CcTypeAll persistentInstance) {
		log.debug("deleting CcTypeAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CcTypeAll findById(java.lang.Integer id) {
		log.debug("getting CcTypeAll instance with id: " + id);
		try {
			CcTypeAll instance = (CcTypeAll) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.CcTypeAll", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<CcTypeAll> findByExample(CcTypeAll instance) {
		log.debug("finding CcTypeAll instance by example");
		try {
			List<CcTypeAll> results = (List<CcTypeAll>) getHibernateTemplate()
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
		log.debug("finding CcTypeAll instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from CcTypeAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<CcTypeAll> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<CcTypeAll> findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List<CcTypeAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<CcTypeAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<CcTypeAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<CcTypeAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<CcTypeAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<CcTypeAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<CcTypeAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<CcTypeAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<CcTypeAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<CcTypeAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all CcTypeAll instances");
		try {
			String queryString = "from CcTypeAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public CcTypeAll merge(CcTypeAll detachedInstance) {
		log.debug("merging CcTypeAll instance");
		try {
			CcTypeAll result = (CcTypeAll) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(CcTypeAll instance) {
		log.debug("attaching dirty CcTypeAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CcTypeAll instance) {
		log.debug("attaching clean CcTypeAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CcTypeAllDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CcTypeAllDAO) ctx.getBean("CcTypeAllDAO");
	}
}