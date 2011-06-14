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
 * TollPriceHistoryAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollPriceHistoryAll
 * @author MyEclipse Persistence Tools
 */

public class TollPriceHistoryAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollPriceHistoryAllDAO.class);
	// property constants
	public static final String TOLL_PRICE_ID = "tollPriceId";
	public static final String TOLL_LOCATION_ID = "tollLocationId";
	public static final String VEHICLE_TYPE_ID = "vehicleTypeId";
	public static final String DIRECTION = "direction";
	public static final String COST_PRICE = "costPrice";
	public static final String SELLING_PRICE = "sellingPrice";
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

	public void save(TollPriceHistoryAll transientInstance) {
		log.debug("saving TollPriceHistoryAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollPriceHistoryAll persistentInstance) {
		log.debug("deleting TollPriceHistoryAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollPriceHistoryAll findById(java.lang.Integer id) {
		log.debug("getting TollPriceHistoryAll instance with id: " + id);
		try {
			TollPriceHistoryAll instance = (TollPriceHistoryAll) getHibernateTemplate()
					.get("com.mobisols.tollpayments.hibernate.TollPriceHistoryAll",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollPriceHistoryAll> findByExample(TollPriceHistoryAll instance) {
		log.debug("finding TollPriceHistoryAll instance by example");
		try {
			List<TollPriceHistoryAll> results = (List<TollPriceHistoryAll>) getHibernateTemplate()
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
		log.debug("finding TollPriceHistoryAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from TollPriceHistoryAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<TollPriceHistoryAll> findByTollPriceId(Object tollPriceId) {
		return findByProperty(TOLL_PRICE_ID, tollPriceId);
	}

	public List<TollPriceHistoryAll> findByTollLocationId(Object tollLocationId) {
		return findByProperty(TOLL_LOCATION_ID, tollLocationId);
	}

	public List<TollPriceHistoryAll> findByVehicleTypeId(Object vehicleTypeId) {
		return findByProperty(VEHICLE_TYPE_ID, vehicleTypeId);
	}

	public List<TollPriceHistoryAll> findByDirection(Object direction) {
		return findByProperty(DIRECTION, direction);
	}

	public List<TollPriceHistoryAll> findByCostPrice(Object costPrice) {
		return findByProperty(COST_PRICE, costPrice);
	}

	public List<TollPriceHistoryAll> findBySellingPrice(Object sellingPrice) {
		return findByProperty(SELLING_PRICE, sellingPrice);
	}

	public List<TollPriceHistoryAll> findByAction(Object action) {
		return findByProperty(ACTION, action);
	}

	public List<TollPriceHistoryAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<TollPriceHistoryAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<TollPriceHistoryAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<TollPriceHistoryAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<TollPriceHistoryAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<TollPriceHistoryAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<TollPriceHistoryAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<TollPriceHistoryAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<TollPriceHistoryAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<TollPriceHistoryAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List<TollPriceHistoryAll> findByLastModifiedBy(Object lastModifiedBy) {
		return findByProperty(LAST_MODIFIED_BY, lastModifiedBy);
	}

	public List<TollPriceHistoryAll> findByClientId(Object clientId) {
		return findByProperty(CLIENT_ID, clientId);
	}

	public List findAll() {
		log.debug("finding all TollPriceHistoryAll instances");
		try {
			String queryString = "from TollPriceHistoryAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollPriceHistoryAll merge(TollPriceHistoryAll detachedInstance) {
		log.debug("merging TollPriceHistoryAll instance");
		try {
			TollPriceHistoryAll result = (TollPriceHistoryAll) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollPriceHistoryAll instance) {
		log.debug("attaching dirty TollPriceHistoryAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollPriceHistoryAll instance) {
		log.debug("attaching clean TollPriceHistoryAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollPriceHistoryAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TollPriceHistoryAllDAO) ctx.getBean("TollPriceHistoryAllDAO");
	}
}