package com.mobisols.tollpayments.daoImpl;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.TollPriceHistoryDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TollPriceHistory;

// TODO: Auto-generated Javadoc
/**
 * The Class TollPriceHistoryDaoImpl.
 */
public class TollPriceHistoryDaoImpl implements TollPriceHistoryDao{

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.TollPriceHistoryDao#getTollPriceHistory(int, float)
	 */
	@Override
	public List<TollPriceHistory> getTollPriceHistory(int tollLocationId, float price) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(TollPriceHistory.class);
		crit.add(Restrictions.eq("tollLocationId", tollLocationId));
		crit.add(Restrictions.eq("costPrice", price));
		crit.addOrder(Order.desc("tphId"));
		return crit.list();
	}

}
