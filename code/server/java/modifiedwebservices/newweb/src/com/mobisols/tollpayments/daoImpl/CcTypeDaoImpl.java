package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

public class CcTypeDaoImpl implements CcTypeDao {

	@Override
	public List getCcTypeList() {
		Session s=HibernateSessionFactory.getSession();	
		Criteria c=s.createCriteria(CcType.class);
		return c.list();
	}

}
