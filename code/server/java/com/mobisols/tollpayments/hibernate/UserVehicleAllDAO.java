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
 * UserVehicleAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserVehicleAll
 * @author MyEclipse Persistence Tools
 */

public class UserVehicleAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserVehicleAllDAO.class);
	// property constants
	public static final String IS_ACTIVE = "isActive";
	public static final String REGISTRATION_NO = "registrationNo";
	public static final String REGISTERED_STATE = "registeredState";
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

	public void save(UserVehicleAll transientInstance) {
		log.debug("saving UserVehicleAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserVehicleAll persistentInstance) {
		log.debug("deleting UserVehicleAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserVehicleAll findById(java.lang.Integer id) {
		log.debug("getting UserVehicleAll instance with id: " + id);
		try {
			UserVehicleAll instance = (UserVehicleAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserVehicleAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserVehicleAll> findByExample(UserVehicleAll instance) {
		log.debug("finding UserVehicleAll instance by example");
		try {
			List<UserVehicleAll> results = (List<UserVehicleAll>) getHibernateTemplate()
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
		log.debug("finding UserVehicleAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserVehicleAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserVehicleAll> findByIsActive(Object isActive) {
		return findByProperty(IS_ACTIVE, isActive);
	}

	public List<UserVehicleAll> findByRegistrationNo(Object registrationNo) {
		return findByProperty(REGISTRATION_NO, registrationNo);
	}

	public List<UserVehicleAll> findByRegisteredState(Object registeredState) {
		return findByProperty(REGISTERED_STATE, registeredState);
	}

	public List<UserVehicleAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserVehicleAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserVehicleAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserVehicleAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserVehicleAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserVehicleAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserVehicleAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserVehicleAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserVehicleAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserVehicleAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all UserVehicleAll instances");
		try {
			String queryString = "from UserVehicleAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserVehicleAll merge(UserVehicleAll detachedInstance) {
		log.debug("merging UserVehicleAll instance");
		try {
			UserVehicleAll result = (UserVehicleAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserVehicleAll instance) {
		log.debug("attaching dirty UserVehicleAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserVehicleAll instance) {
		log.debug("attaching clean UserVehicleAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserVehicleAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserVehicleAllDAO) ctx.getBean("UserVehicleAllDAO");
	}
}