package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.HibernateSessionFactory;

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

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.CcTypeDao#getCcTypeName(java.lang.Integer)
	 */
	@Override
	public CcType getCcTypeName(Integer ccTypeId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(CcType.class);
		crit.add(Restrictions.eq("ccTypeId", ccTypeId));
		return (CcType) crit.uniqueResult();
	}

}
