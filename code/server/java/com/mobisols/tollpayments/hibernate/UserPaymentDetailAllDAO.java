package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * UserPaymentDetailAll entities. Transaction control of the save(), update()
 * and delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.UserPaymentDetailAll
 * @author MyEclipse Persistence Tools
 */

public class UserPaymentDetailAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(UserPaymentDetailAllDAO.class);
	// property constants
	public static final String CC_AC_NAME = "ccAcName";
	public static final String CC_NUMBER = "ccNumber";
	public static final String CC_EXP_MONTH = "ccExpMonth";
	public static final String CC_CVV = "ccCvv";
	public static final String BANK_ROUTING = "bankRouting";
	public static final String BANK_ACCOUNT = "bankAccount";
	public static final String PAY_PREFER = "payPrefer";
	public static final String ADDRESS1 = "address1";
	public static final String ADDRESS2 = "address2";
	public static final String CITY = "city";
	public static final String STATE = "state";
	public static final String COUNTRY = "country";
	public static final String ZIP = "zip";
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

	public void save(UserPaymentDetailAll transientInstance) {
		log.debug("saving UserPaymentDetailAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserPaymentDetailAll persistentInstance) {
		log.debug("deleting UserPaymentDetailAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserPaymentDetailAll findById(java.lang.Integer id) {
		log.debug("getting UserPaymentDetailAll instance with id: " + id);
		try {
			UserPaymentDetailAll instance = (UserPaymentDetailAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.UserPaymentDetailAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserPaymentDetailAll> findByExample(
			UserPaymentDetailAll instance) {
		log.debug("finding UserPaymentDetailAll instance by example");
		try {
			List<UserPaymentDetailAll> results = (List<UserPaymentDetailAll>) getHibernateTemplate()
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
		log.debug("finding UserPaymentDetailAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from UserPaymentDetailAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserPaymentDetailAll> findByCcAcName(Object ccAcName) {
		return findByProperty(CC_AC_NAME, ccAcName);
	}

	public List<UserPaymentDetailAll> findByCcNumber(Object ccNumber) {
		return findByProperty(CC_NUMBER, ccNumber);
	}

	public List<UserPaymentDetailAll> findByCcExpMonth(Object ccExpMonth) {
		return findByProperty(CC_EXP_MONTH, ccExpMonth);
	}

	public List<UserPaymentDetailAll> findByCcCvv(Object ccCvv) {
		return findByProperty(CC_CVV, ccCvv);
	}

	public List<UserPaymentDetailAll> findByBankRouting(Object bankRouting) {
		return findByProperty(BANK_ROUTING, bankRouting);
	}

	public List<UserPaymentDetailAll> findByBankAccount(Object bankAccount) {
		return findByProperty(BANK_ACCOUNT, bankAccount);
	}

	public List<UserPaymentDetailAll> findByPayPrefer(Object payPrefer) {
		return findByProperty(PAY_PREFER, payPrefer);
	}

	public List<UserPaymentDetailAll> findByAddress1(Object address1) {
		return findByProperty(ADDRESS1, address1);
	}

	public List<UserPaymentDetailAll> findByAddress2(Object address2) {
		return findByProperty(ADDRESS2, address2);
	}

	public List<UserPaymentDetailAll> findByCity(Object city) {
		return findByProperty(CITY, city);
	}

	public List<UserPaymentDetailAll> findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List<UserPaymentDetailAll> findByCountry(Object country) {
		return findByProperty(COUNTRY, country);
	}

	public List<UserPaymentDetailAll> findByZip(Object zip) {
		return findByProperty(ZIP, zip);
	}

	public List<UserPaymentDetailAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<UserPaymentDetailAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<UserPaymentDetailAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<UserPaymentDetailAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<UserPaymentDetailAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<UserPaymentDetailAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<UserPaymentDetailAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<UserPaymentDetailAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<UserPaymentDetailAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<UserPaymentDetailAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all UserPaymentDetailAll instances");
		try {
			String queryString = "from UserPaymentDetailAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserPaymentDetailAll merge(UserPaymentDetailAll detachedInstance) {
		log.debug("merging UserPaymentDetailAll instance");
		try {
			UserPaymentDetailAll result = (UserPaymentDetailAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserPaymentDetailAll instance) {
		log.debug("attaching dirty UserPaymentDetailAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserPaymentDetailAll instance) {
		log.debug("attaching clean UserPaymentDetailAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserPaymentDetailAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserPaymentDetailAllDAO) ctx.getBean("UserPaymentDetailAllDAO");
	}
}