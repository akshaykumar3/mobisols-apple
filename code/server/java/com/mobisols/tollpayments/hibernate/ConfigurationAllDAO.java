package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * ConfigurationAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.ConfigurationAll
 * @author MyEclipse Persistence Tools
 */

public class ConfigurationAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ConfigurationAllDAO.class);
	// property constants
	public static final String KEY = "key";
	public static final String VALUE = "value";
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

	public void save(ConfigurationAll transientInstance) {
		log.debug("saving ConfigurationAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ConfigurationAll persistentInstance) {
		log.debug("deleting ConfigurationAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ConfigurationAll findById(java.lang.Integer id) {
		log.debug("getting ConfigurationAll instance with id: " + id);
		try {
			ConfigurationAll instance = (ConfigurationAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.ConfigurationAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ConfigurationAll> findByExample(ConfigurationAll instance) {
		log.debug("finding ConfigurationAll instance by example");
		try {
			List<ConfigurationAll> results = (List<ConfigurationAll>) getHibernateTemplate()
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
		log.debug("finding ConfigurationAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ConfigurationAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<ConfigurationAll> findByKey(Object key) {
		return findByProperty(KEY, key);
	}

	public List<ConfigurationAll> findByValue(Object value) {
		return findByProperty(VALUE, value);
	}

	public List<ConfigurationAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<ConfigurationAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<ConfigurationAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<ConfigurationAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<ConfigurationAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<ConfigurationAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<ConfigurationAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<ConfigurationAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<ConfigurationAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<ConfigurationAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all ConfigurationAll instances");
		try {
			String queryString = "from ConfigurationAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ConfigurationAll merge(ConfigurationAll detachedInstance) {
		log.debug("merging ConfigurationAll instance");
		try {
			ConfigurationAll result = (ConfigurationAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ConfigurationAll instance) {
		log.debug("attaching dirty ConfigurationAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ConfigurationAll instance) {
		log.debug("attaching clean ConfigurationAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ConfigurationAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (ConfigurationAllDAO) ctx.getBean("ConfigurationAllDAO");
	}
}