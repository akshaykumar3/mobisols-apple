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
 * UserAll entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserAll
 * @author MyEclipse Persistence Tools
 */

public class UserAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(UserAllDAO.class);
	// property constants
	public static final String USER_NAME = "userName";
	public static final String PASSWORD = "password";
	public static final String LOCALE = "locale";
	public static final String IS_ACTIVE = "isActive";
	public static final String CONTACT_NO = "contactNo";
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

	public void save(UserAll transientInstance) {
		log.debug("saving UserAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserAll persistentInstance) {
		log.debug("deleting UserAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserAll findById(java.lang.Integer id) {
		log.debug("getting UserAll instance with id: " + id);
		try {
			UserAll instance = (UserAll) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.UserAll", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserAll> findByExample(UserAll instance) {
		log.debug("finding UserAll instance by example");
		try {
			List<UserAll> results = (List<UserAll>) getHibernateTemplate()
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
		log.debug("finding UserAll instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserAll> findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List<UserAll> findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List<UserAll> findByLocale(Object locale) {
		return findByProperty(LOCALE, locale);
	}

	public List<UserAll> findByIsActive(Object isActive) {
		return findByProperty(IS_ACTIVE, isActive);
	}

	public List<UserAll> findByContactNo(Object contactNo) {
		return findByProperty(CONTACT_NO, contactNo);
	}

	public List<UserAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all UserAll instances");
		try {
			String queryString = "from UserAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserAll merge(UserAll detachedInstance) {
		log.debug("merging UserAll instance");
		try {
			UserAll result = (UserAll) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserAll instance) {
		log.debug("attaching dirty UserAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserAll instance) {
		log.debug("attaching clean UserAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserAllDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UserAllDAO) ctx.getBean("UserAllDAO");
	}
}