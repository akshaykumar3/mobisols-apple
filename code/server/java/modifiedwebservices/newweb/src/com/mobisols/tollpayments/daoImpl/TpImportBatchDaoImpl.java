/**
 * 
 */
package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.TpImportBatchDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TpImportBatch;

/**
 * @author Raghu
 *
 */
public class TpImportBatchDaoImpl implements TpImportBatchDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.TpImportBatchDao#save(com.mobisols.tollpayments.model.TpImportBatch)
	 */
	@Override
	public void save(TpImportBatch tpImportBatch) {
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.save(tpImportBatch);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.TpImportBatchDao#getImportBatch(int)
	 */
	@Override
	public TpImportBatch getImportBatch(int batchId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit  = s.createCriteria(TpImportBatch.class);
		crit.add(Restrictions.eq("tpImportBatchId", batchId));
		return (TpImportBatch) crit.uniqueResult();
	}

}
