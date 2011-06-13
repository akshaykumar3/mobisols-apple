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
 * TollPriceAll entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.mobisols.tollpayments.hibernate.TollPriceAll
 * @author MyEclipse Persistence Tools
 */

public class TollPriceAllDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TollPriceAllDAO.class);
	// property constants
	public static final String DIRECTION = "direction";
	public static final String COST_PRICE = "costPrice";
	public static final String SELLING_PRICE = "sellingPrice";
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

	public void save(TollPriceAll transientInstance) {
		log.debug("saving TollPriceAll instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TollPriceAll persistentInstance) {
		log.debug("deleting TollPriceAll instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TollPriceAll findById(java.lang.Integer id) {
		log.debug("getting TollPriceAll instance with id: " + id);
		try {
			TollPriceAll instance = (TollPriceAll) getHibernateTemplate().get(
					"com.mobisols.tollpayments.hibernate.TollPriceAll", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<TollPriceAll> findByExample(TollPriceAll instance) {
		log.debug("finding TollPriceAll instance by example");
		try {
			List<TollPriceAll> results = (List<TollPriceAll>) getHibernateTemplate()
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
		log.debug("finding TollPriceAll instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from TollPriceAll as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<TollPriceAll> findByDirection(Object direction) {
		return findByProperty(DIRECTION, direction);
	}

	public List<TollPriceAll> findByCostPrice(Object costPrice) {
		return findByProperty(COST_PRICE, costPrice);
	}

	public List<TollPriceAll> findBySellingPrice(Object sellingPrice) {
		return findByProperty(SELLING_PRICE, sellingPrice);
	}

	public List<TollPriceAll> findByUdf1(Object udf1) {
		return findByProperty(UDF1, udf1);
	}

	public List<TollPriceAll> findByUdf2(Object udf2) {
		return findByProperty(UDF2, udf2);
	}

	public List<TollPriceAll> findByUdf3(Object udf3) {
		return findByProperty(UDF3, udf3);
	}

	public List<TollPriceAll> findByUdf4(Object udf4) {
		return findByProperty(UDF4, udf4);
	}

	public List<TollPriceAll> findByUdf5(Object udf5) {
		return findByProperty(UDF5, udf5);
	}

	public List<TollPriceAll> findByFlag1(Object flag1) {
		return findByProperty(FLAG1, flag1);
	}

	public List<TollPriceAll> findByFlag2(Object flag2) {
		return findByProperty(FLAG2, flag2);
	}

	public List<TollPriceAll> findByFlag3(Object flag3) {
		return findByProperty(FLAG3, flag3);
	}

	public List<TollPriceAll> findByFlag4(Object flag4) {
		return findByProperty(FLAG4, flag4);
	}

	public List<TollPriceAll> findByFlag5(Object flag5) {
		return findByProperty(FLAG5, flag5);
	}

	public List findAll() {
		log.debug("finding all TollPriceAll instances");
		try {
			String queryString = "from TollPriceAll";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TollPriceAll merge(TollPriceAll detachedInstance) {
		log.debug("merging TollPriceAll instance");
		try {
			TollPriceAll result = (TollPriceAll) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TollPriceAll instance) {
		log.debug("attaching dirty TollPriceAll instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TollPriceAll instance) {
		log.debug("attaching clean TollPriceAll instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TollPriceAllDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (TollPriceAllDAO) ctx.getBean("TollPriceAllDAO");
	}
}