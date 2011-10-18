package com.mobisols.tollpayments.myutilsImpl;

import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.myutils.MyUtilCleanUp;

public class MyUtilCleanUpImpl implements MyUtilCleanUp {

	public void cleanUp(){
		HibernateSessionFactory.getSession().flush();
		HibernateSessionFactory.closeSession();
	}
}
