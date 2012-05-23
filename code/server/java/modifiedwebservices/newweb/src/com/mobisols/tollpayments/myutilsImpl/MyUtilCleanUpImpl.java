package com.mobisols.tollpayments.myutilsImpl;

import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.myutils.MyUtilCleanUp;

// TODO: Auto-generated Javadoc
/**
 * The Class MyUtilCleanUpImpl.
 */
public class MyUtilCleanUpImpl implements MyUtilCleanUp {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilCleanUp#cleanUp()
	 */
	public void cleanUp(){
		HibernateSessionFactory.getSession().flush();
		HibernateSessionFactory.closeSession();
	}
}
