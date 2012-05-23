package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

// TODO: Auto-generated Javadoc
/**
 * The Class DeviceDaoImpl.
 */
public class DeviceDaoImpl implements DeviceDao {

	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.DeviceDao#getDevice(java.lang.String, java.lang.String)
	 */
	public Device getDevice(String deviceId, String deviceType) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(Device.class);
		crit.add(Restrictions.eq("deviceUuid",deviceId));
		crit.add(Restrictions.eq("deviceType", deviceType));
		return (Device) crit.uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.DeviceDao#save(com.mobisols.tollpayments.model.Device)
	 */
	@Override
	public void save(Device d) {
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.save(d);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.DeviceDao#getDevice(java.lang.Integer)
	 */
	@Override
	public Device getDevice(Integer userId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(Device.class);
		crit.add(Restrictions.eq("userId",userId));
		return (Device) crit.uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.DeviceDao#update(com.mobisols.tollpayments.model.Device)
	 */
	@Override
	public void update(Device d) {
		Session s= HibernateSessionFactory.getSession();
		Transaction t = s.beginTransaction();
		s.update(d);
		t.commit();
	}
	
}
