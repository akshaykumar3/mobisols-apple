package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
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
}
