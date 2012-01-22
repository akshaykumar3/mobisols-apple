package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

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

	@Override
	public OwnerType getOwnerType(String ownerType) {
		Session s = HibernateSessionFactory.getSession();
		Criteria c = s.createCriteria(OwnerType.class);
		c.add(Restrictions.eq("name", ownerType));
		OwnerType ot=(OwnerType) c.uniqueResult();
		return ot;
	}

}
