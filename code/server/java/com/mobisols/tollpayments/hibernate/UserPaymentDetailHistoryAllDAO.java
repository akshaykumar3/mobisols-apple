package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserPaymentDetailHistoryAll entities. Transaction control of the save(),
 * update() and delete() operations can directly support Spring
 * container-managed transactions or they can be augmented to handle
 * user-managed Spring transactions. Each of these methods provides additional
 * information for how to configure it for the desired type of transaction
 * control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserPaymentDetailHistoryAll
 * @author MyEclipse Persistence Tools
 */

public class UserPaymentDetailHistoryAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserPaymentDetailHistoryAllDAO.class);
	// property constants
	public static final String UPD_ID = "updId";
	public static final String USER_ID = "userId";
	public static final String CC_TYPE_ID = "ccTypeId";
	public static final String CC_AC_NAME = "ccAcName";
	public static final String CC_NUMBER = "ccNumber";
	public static final String CC_EXP_MONTH = "ccExpMonth";
	public static final String CC_CVV = "ccCvv";
	public static final String BANK_ROUTING = "bankRouting";
	public static final String BANK_ACCOUNT = "bankAccount";
	public static final String ADDRESS1 = "address1";
	public static final String ADDRESS2 = "address2";
	public static final String CITY = "city";
	public static final String STATE = "state";
	public static final String COUNTRY = "country";
	public static final String ZIP = "zip";
	public static final String PAY_PREFER = "payPrefer";
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
	public static final String CLIENT_ID = "clientId";

	protected void initDao() {
		// do nothing
	}

	public void save(UserPaymentDetailHistoryAll transientInstance) {
		log.debug("saving UserPaymentDetailHistoryAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserPaymentDetailHistoryAll persistentInstance) {
		log.debug("deleting UserPaymentDetailHistoryAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserPaymentDetailHistoryAll findById(java.lang.Integer id) {
		log.debug("getting UserPaymentDetailHistoryAll instance with id: " + id);
		try {
			UserPaymentDetailHistoryAll instance = (UserPaymentDetailHistoryAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserPaymentDetailHistoryAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserPaymentDetailHistoryAll> findByExample(
			UserPaymentDetailHistoryAll instance) {
		log.debug("finding UserPaymentDetailHistoryAll instance by example");
		try {
			List<UserPaymentDetailHistoryAll> results = (List<UserPaymentDetailHistoryAll>) getHibernateTemplate()
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
		log.debug("finding UserPaymentDetailHistoryAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserPaymentDetailHistoryAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserPaymentDetailHistoryAll> findByUpdId(Object updId) {
		return findByProperty(UPD_ID, updId);
	}

	public List<UserPaymentDetailHistoryAll> findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List<UserPaymentDetailHistoryAll> findByCcTypeId(Object ccTypeId) {
		return findByProperty(CC_TYPE_ID, ccTypeId);
	}

	public List<UserPaymentDetailHistoryAll> findByCcAcName(Object ccAcName) {
		return findByProperty(CC_AC_NAME, ccAcName);
	}

	public List<UserPaymentDetailHistoryAll> findByCcNumber(Object ccNumber) {
		return findByProperty(CC_NUMBER, ccNumber);
	}

	public List<UserPaymentDetailHistoryAll> findByCcExpMonth(Object ccExpMonth) {
		return findByProperty(CC_EXP_MONTH, ccExpMonth);
	}

	public List<UserPaymentDetailHistoryAll> findByCcCvv(Object ccCvv) {
		return findByProperty(CC_CVV, ccCvv);
	}

	public List<UserPaymentDetailHistoryAll> findByBankRouting(
			Object bankRouting) {
		return findByProperty(BANK_ROUTING, bankRouting);
	}

	public List<UserPaymentDetailHistoryAll> findByBankAccount(
			Object bankAccount) {
		return findByProperty(BANK_ACCOUNT, bankAccount);
	}

	public List<UserPaymentDetailHistoryAll> findByAddress1(Object address1) {
		return findByProperty(ADDRESS1, address1);
	}

	public List<UserPaymentDetailHistoryAll> findByAddress2(Object address2) {
		return findByProperty(ADDRESS2, address2);
	}

	public List<UserPaymentDetailHistoryAll> findByCity(Object city) {
		return findByProperty(CITY, city);
	}

	public List<UserPaymentDetailHistoryAll> findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List<UserPaymentDetailHistoryAll> findByCountry(Object country) {
		return findByProperty(COUNTRY, country);
	}

	public List<UserPaymentDetailHistoryAll> findByZip(Object zip) {
		return findByProperty(ZIP, zip);
	}

	public List<UserPaymentDetailHistoryAll> findByPayPrefer(Object payPrefer) {
		return findByProperty(PAY_PREFER, payPrefer);
	}

	public List<UserPaymentDetailHistoryAll> findByAction(Object action) {
		return findByProperty(ACTION, action);
	}

	public List<UserPaymentDetailHistoryAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserPaymentDetailHistoryAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserPaymentDetailHistoryAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserPaymentDetailHistoryAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserPaymentDetailHistoryAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserPaymentDetailHistoryAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserPaymentDetailHistoryAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserPaymentDetailHistoryAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserPaymentDetailHistoryAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserPaymentDetailHistoryAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List<UserPaymentDetailHistoryAll> findByLastModifiedBy(
			Object lastModifiedBy) {
		return findByProperty(LAST_MODIFIED_BY, lastModifiedBy);
	}

	public List<UserPaymentDetailHistoryAll> findByClientId(Object clientId) {
		return findByProperty(CLIENT_ID, clientId);
	}

	public List findAll() {
		log.debug("finding all UserPaymentDetailHistoryAll instances");
		try {
			String queryString = "from UserPaymentDetailHistoryAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserPaymentDetailHistoryAll merge(
			UserPaymentDetailHistoryAll detachedInstance) {
		log.debug("merging UserPaymentDetailHistoryAll instance");
		try {
			UserPaymentDetailHistoryAll result = (UserPaymentDetailHistoryAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserPaymentDetailHistoryAll instance) {
		log.debug("attaching dirty UserPaymentDetailHistoryAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserPaymentDetailHistoryAll instance) {
		log.debug("attaching clean UserPaymentDetailHistoryAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserPaymentDetailHistoryAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserPaymentDetailHistoryAllDAO) ctx
				.getBean("UserPaymentDetailHistoryAllDAO");
	}
}