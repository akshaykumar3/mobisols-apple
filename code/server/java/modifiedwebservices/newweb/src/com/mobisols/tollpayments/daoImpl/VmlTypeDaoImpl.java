package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VmlType;

// TODO: Auto-generated Javadoc
/**
 * The Class VmlTypeDaoImpl.
 */
public class VmlTypeDaoImpl implements VmlTypeDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VmlTypeDao#getVmlTypeList()
	 */
	@Override
	public List getVmlTypeList() {
		Session s =HibernateSessionFactory.getSession();
		Criteria c = s.createCriteria(VmlType.class);
		return c.list();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VmlTypeDao#getVmlTypeId(java.lang.String)
	 */
	public int getVmlTypeId(String name) {
		Session s=HibernateSessionFactory.getSession();
		Criteria c=s.createCriteria(VmlType.class);
		c.add(Restrictions.eq("name", name));
		VmlType v=(VmlType) c.uniqueResult();
		return v.getVmlTypeId();
	}

}
