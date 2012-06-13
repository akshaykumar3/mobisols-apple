package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.myutilsImpl.EncryptUtil;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Class UserPaymentDetailDaoImpl.
 */
public class UserPaymentDetailDaoImpl implements UserPaymentDetailDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserPaymentDetailDao#save(com.mobisols.tollpayments.model.UserPaymentDetail)
	 */
	public void save(UserPaymentDetail upd)
	{
		upd.setCcNumber(EncryptUtil.encrypt(upd.getCcNumber(), ServerConfiguration.getServerConfiguration().getValue("cc_encryption_key")));
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.save(upd);
		tx.commit();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserPaymentDetailDao#update(com.mobisols.tollpayments.model.UserPaymentDetail)
	 */
	public void update(UserPaymentDetail upd)
	{
		upd.setCcNumber(EncryptUtil.encrypt(upd.getCcNumber(), ServerConfiguration.getServerConfiguration().getValue("cc_encryption_key")));
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.update(upd);
		tx.commit();
	}
	
}
