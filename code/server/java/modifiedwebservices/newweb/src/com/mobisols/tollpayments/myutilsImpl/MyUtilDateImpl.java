package com.mobisols.tollpayments.myutilsImpl;

import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.myutils.MyUtilDate;

// TODO: Auto-generated Javadoc
/**
 * The Class MyUtilDateImpl.
 */
public class MyUtilDateImpl implements MyUtilDate {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilDate#getCurrentTimeStamp()
	 */
	public Timestamp getCurrentTimeStamp() {
		return new Timestamp(new Date().getTime());
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilDate#getCurrentDate()
	 */
	public Date getCurrentDate() {
		return new Date();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilDate#toString(java.sql.Timestamp)
	 */
	public String toString(Timestamp timestamp) {
		// TODO Auto-generated method stub
		return null;
	}


	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilDate#toString(java.util.Date)
	 */
	public Object toString(Date timeStamp) {
		// TODO Auto-generated method stub
		return null;
	}


	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilDate#toTimeStamp(java.lang.Object)
	 */
	public Timestamp toTimeStamp(Object string) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
