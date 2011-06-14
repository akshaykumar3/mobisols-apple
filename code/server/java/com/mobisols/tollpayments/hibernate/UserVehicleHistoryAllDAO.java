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
 * UserVehicleHistoryAll entities. Transaction control of the save(), update()
 * and delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserVehicleHistoryAll
 * @author MyEclipse Persistence Tools
 */

public class UserVehicleHistoryAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserVehicleHistoryAllDAO.class);
	// property constants
	public static final String USER_VEHICLE_ID = "userVehicleId";
	public static final String USER_ID = "userId";
	public static final String VEHICLE_TYPE_ID = "vehicleTypeId";
	public static final String IS_ACTIVE = "isActive";
	public static final String REGISTRATION_NO = "registrationNo";
	public static final String REGISTERED_STATE = "registeredState";
	public static final String OWNER_ID = "ownerId";
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
	public static final String ACTION = "action";
	public static final String CLIENT_ID = "clientId";

	protected void initDao() {
		// do nothing
	}

	public void save(UserVehicleHistoryAll transientInstance) {
		log.debug("saving UserVehicleHistoryAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserVehicleHistoryAll persistentInstance) {
		log.debug("deleting UserVehicleHistoryAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserVehicleHistoryAll findById(java.lang.Integer id) {
		log.debug("getting UserVehicleHistoryAll instance with id: " + id);
		try {
			UserVehicleHistoryAll instance = (UserVehicleHistoryAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserVehicleHistoryAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserVehicleHistoryAll> findByExample(
			UserVehicleHistoryAll instance) {
		log.debug("finding UserVehicleHistoryAll instance by example");
		try {
			List<UserVehicleHistoryAll> results = (List<UserVehicleHistoryAll>) getHibernateTemplate()
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
		log.debug("finding UserVehicleHistoryAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserVehicleHistoryAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserVehicleHistoryAll> findByUserVehicleId(Object userVehicleId) {
		return findByProperty(USER_VEHICLE_ID, userVehicleId);
	}

	public List<UserVehicleHistoryAll> findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List<UserVehicleHistoryAll> findByVehicleTypeId(Object vehicleTypeId) {
		return findByProperty(VEHICLE_TYPE_ID, vehicleTypeId);
	}

	public List<UserVehicleHistoryAll> findByIsActive(Object isActive) {
		return findByProperty(IS_ACTIVE, isActive);
	}

	public List<UserVehicleHistoryAll> findByRegistrationNo(
			Object registrationNo) {
		return findByProperty(REGISTRATION_NO, registrationNo);
	}

	public List<UserVehicleHistoryAll> findByRegisteredState(
			Object registeredState) {
		return findByProperty(REGISTERED_STATE, registeredState);
	}

	public List<UserVehicleHistoryAll> findByOwnerId(Object ownerId) {
		return findByProperty(OWNER_ID, ownerId);
	}

	public List<UserVehicleHistoryAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserVehicleHistoryAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserVehicleHistoryAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserVehicleHistoryAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserVehicleHistoryAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserVehicleHistoryAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserVehicleHistoryAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserVehicleHistoryAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserVehicleHistoryAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserVehicleHistoryAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List<UserVehicleHistoryAll> findByLastModifiedBy(
			Object lastModifiedBy) {
		return findByProperty(LAST_MODIFIED_BY, lastModifiedBy);
	}

	public List<UserVehicleHistoryAll> findByAction(Object action) {
		return findByProperty(ACTION, action);
	}

	public List<UserVehicleHistoryAll> findByClientId(Object clientId) {
		return findByProperty(CLIENT_ID, clientId);
	}

	public List findAll() {
		log.debug("finding all UserVehicleHistoryAll instances");
		try {
			String queryString = "from UserVehicleHistoryAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserVehicleHistoryAll merge(UserVehicleHistoryAll detachedInstance) {
		log.debug("merging UserVehicleHistoryAll instance");
		try {
			UserVehicleHistoryAll result = (UserVehicleHistoryAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserVehicleHistoryAll instance) {
		log.debug("attaching dirty UserVehicleHistoryAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserVehicleHistoryAll instance) {
		log.debug("attaching clean UserVehicleHistoryAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserVehicleHistoryAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserVehicleHistoryAllDAO) ctx
				.getBean("UserVehicleHistoryAllDAO");
	}
}