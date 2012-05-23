/**
 * 
 */
package com.mobisols.tollpayments.daoImpl;



import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.TpImportDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TpImport;

/**
 * @author Raghu
 *
 */
public class TpImportDaoImpl implements TpImportDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.TpImportDao#save(com.mobisols.tollpayments.model.TpImport)
	 */
	@Override
	public void save(TpImport tpImport) {
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.save(tpImport);
		tx.commit();
	}

}
