package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.DeviceHistoryDao;
import com.mobisols.tollpayments.model.DeviceHistory;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class DeviceHistoryDaoImpl implements DeviceHistoryDao{

	@Override
	public Integer getLatestDeviceHistoryId(Integer deviceId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(DeviceHistory.class);
		crit.add(Restrictions.eq("deviceId", deviceId));
		crit.addOrder(Order.desc("startDate"));
		List<DeviceHistory> uvh=crit.list();
		return uvh.get(0).getDeviceHistoryId();
	}

	
}
