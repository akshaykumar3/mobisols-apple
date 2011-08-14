package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class DeviceDaoImpl implements DeviceDao {

	
	public Device getDevice(String deviceId, String deviceType) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(Device.class);
		crit.add(Restrictions.eq("deviceUuid",deviceId));
		crit.add(Restrictions.eq("deviceType", deviceType));
		return (Device) crit.uniqueResult();
	}
	
}
