package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TollLocation;

public class TollLocationDaoImpl implements TollLocationDao {

	public List getTollLocations()
	{
		Session s = HibernateSessionFactory.getSession();
		Criteria c=s.createCriteria(TollLocation.class);
		return c.list();
	}

	
	public TollLocation getTollLocation(double latitude, double longitude) {
		Session s=HibernateSessionFactory.getSession();
		String qu="from TollLocation tl where tl.latitude=:lat and tl.longitude=:long";
		Query qury1=s.createQuery(qu);
		qury1.setParameter("lat", latitude);
		qury1.setParameter("long", longitude);
		TollLocation t=(TollLocation) qury1.uniqueResult();
		return t;
	}
}
