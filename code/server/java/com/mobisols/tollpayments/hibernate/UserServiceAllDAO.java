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
 * UserServiceAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserServiceAll
 * @author MyEclipse Persistence Tools
 */

public class UserServiceAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserServiceAllDAO.class);
	// property constants
	public static final String PRIORITY = "priority";
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

	public void save(UserServiceAll transientInstance) {
		log.debug("saving UserServiceAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserServiceAll persistentInstance) {
		log.debug("deleting UserServiceAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserServiceAll findById(java.lang.Integer id) {
		log.debug("getting UserServiceAll instance with id: " + id);
		try {
			UserServiceAll instance = (UserServiceAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserServiceAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserServiceAll> findByExample(UserServiceAll instance) {
		log.debug("finding UserServiceAll instance by example");
		try {
			List<UserServiceAll> results = (List<UserServiceAll>) getHibernateTemplate()
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
		log.debug("finding UserServiceAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserServiceAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserServiceAll> findByPriority(Object priority) {
		return findByProperty(PRIORITY, priority);
	}

	public List<UserServiceAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserServiceAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserServiceAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserServiceAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserServiceAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserServiceAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserServiceAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserServiceAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserServiceAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserServiceAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all UserServiceAll instances");
		try {
			String queryString = "from UserServiceAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserServiceAll merge(UserServiceAll detachedInstance) {
		log.debug("merging UserServiceAll instance");
		try {
			UserServiceAll result = (UserServiceAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserServiceAll instance) {
		log.debug("attaching dirty UserServiceAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserServiceAll instance) {
		log.debug("attaching clean UserServiceAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserServiceAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserServiceAllDAO) ctx.getBean("UserServiceAllDAO");
	}
}