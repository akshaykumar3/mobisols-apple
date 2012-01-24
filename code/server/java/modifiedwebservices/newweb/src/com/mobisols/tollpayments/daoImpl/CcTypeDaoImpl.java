package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

// TODO: Auto-generated Javadoc
/**
 * The Class CcTypeDaoImpl.
 */
public class CcTypeDaoImpl implements CcTypeDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.CcTypeDao#getCcTypeList()
	 */
	@Override
	public List getCcTypeList() {
		Session s=HibernateSessionFactory.getSession();	
		Criteria c=s.createCriteria(CcType.class);
		return c.list();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.CcTypeDao#getCcTypeId(java.lang.String)
	 */
	@Override
	public Integer getCcTypeId(String cardType) {
		Session s =HibernateSessionFactory.getSession();
		Criteria c =s.createCriteria(CcType.class);
		c.add(Restrictions.eq("name", cardType));
		return (Integer) c.uniqueResult();
	}

}
