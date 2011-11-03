package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.ServicePlanDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.ServicePlan;

public class ServicePlanDaoImpl implements ServicePlanDao {
	
	public List getServiceList()
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ServicePlan.class);
		return crit.list();
	}
}
