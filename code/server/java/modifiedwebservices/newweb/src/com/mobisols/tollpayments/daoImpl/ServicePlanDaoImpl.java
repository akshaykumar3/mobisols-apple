package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.ServicePlanDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.ServicePlan;

// TODO: Auto-generated Javadoc
/**
 * The Class ServicePlanDaoImpl.
 */
public class ServicePlanDaoImpl implements ServicePlanDao {
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ServicePlanDao#getServiceList()
	 */
	public List getServiceList()
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit= s.createCriteria(ServicePlan.class);
		return crit.list();
	}
}
