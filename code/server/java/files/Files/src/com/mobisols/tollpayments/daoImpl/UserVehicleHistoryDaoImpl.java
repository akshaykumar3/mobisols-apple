package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserVehicleHistory;

public class UserVehicleHistoryDaoImpl implements UserVehicleHistoryDao {

	public int getLatestUvhId(int userVehicleId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("userVehicleId", userVehicleId));
		crit.addOrder(Order.desc("startDate"));
		List<UserVehicleHistory> uvh=crit.list();
		return uvh.get(0).getUvhId();
	}

}
