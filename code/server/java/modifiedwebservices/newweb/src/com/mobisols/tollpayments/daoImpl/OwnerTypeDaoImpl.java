package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.OwnerType;

public class OwnerTypeDaoImpl implements OwnerTypeDao {

	@Override
	public List getOwnerTypeList() {
	 Session s = HibernateSessionFactory.getSession();
	 Criteria c = s.createCriteria(OwnerType.class);
		return c.list();
	}

}
