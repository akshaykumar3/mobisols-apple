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
 * UserHistoryAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserHistoryAll
 * @author MyEclipse Persistence Tools
 */

public class UserHistoryAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserHistoryAllDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String USER_NAME = "userName";
	public static final String PASSWORD = "password";
	public static final String LOCALE = "locale";
	public static final String UTYPE_ID = "utypeId";
	public static final String IS_ACTIVE = "isActive";
	public static final String CONTACT_NO = "contactNo";
	public static final String CLIENT_ID = "clientId";
	public static final String ACTION = "action";
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
	public static final String LAST_MODIFIED_BY = "lastModifiedBy";

	protected void initDao() {
		// do nothing
	}

	public void save(UserHistoryAll transientInstance) {
		log.debug("saving UserHistoryAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserHistoryAll persistentInstance) {
		log.debug("deleting UserHistoryAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserHistoryAll findById(java.lang.Integer id) {
		log.debug("getting UserHistoryAll instance with id: " + id);
		try {
			UserHistoryAll instance = (UserHistoryAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserHistoryAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserHistoryAll> findByExample(UserHistoryAll instance) {
		log.debug("finding UserHistoryAll instance by example");
		try {
			List<UserHistoryAll> results = (List<UserHistoryAll>) getHibernateTemplate()
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
		log.debug("finding UserHistoryAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserHistoryAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserHistoryAll> findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List<UserHistoryAll> findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List<UserHistoryAll> findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List<UserHistoryAll> findByLocale(Object locale) {
		return findByProperty(LOCALE, locale);
	}

	public List<UserHistoryAll> findByUtypeId(Object utypeId) {
		return findByProperty(UTYPE_ID, utypeId);
	}

	public List<UserHistoryAll> findByIsActive(Object isActive) {
		return findByProperty(IS_ACTIVE, isActive);
	}

	public List<UserHistoryAll> findByContactNo(Object contactNo) {
		return findByProperty(CONTACT_NO, contactNo);
	}

	public List<UserHistoryAll> findByClientId(Object clientId) {
		return findByProperty(CLIENT_ID, clientId);
	}

	public List<UserHistoryAll> findByAction(Object action) {
		return findByProperty(ACTION, action);
	}

	public List<UserHistoryAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserHistoryAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserHistoryAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserHistoryAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserHistoryAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserHistoryAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserHistoryAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserHistoryAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserHistoryAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserHistoryAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List<UserHistoryAll> findByLastModifiedBy(Object lastModifiedBy) {
		return findByProperty(LAST_MODIFIED_BY, lastModifiedBy);
	}

	public List findAll() {
		log.debug("finding all UserHistoryAll instances");
		try {
			String queryString = "from UserHistoryAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserHistoryAll merge(UserHistoryAll detachedInstance) {
		log.debug("merging UserHistoryAll instance");
		try {
			UserHistoryAll result = (UserHistoryAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserHistoryAll instance) {
		log.debug("attaching dirty UserHistoryAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserHistoryAll instance) {
		log.debug("attaching clean UserHistoryAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserHistoryAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserHistoryAllDAO) ctx.getBean("UserHistoryAllDAO");
	}
}