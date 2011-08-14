package com.mobisols.tollpayments.myutilsImpl;

import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.myutils.MyUtilDate;

public class MyUtilDateImpl implements MyUtilDate {

	public Timestamp getCurrentTimeStamp() {
		return new Timestamp(new Date().getTime());
	}


	public String toString(Timestamp timestamp) {
		// TODO Auto-generated method stub
		return null;
	}


	public Object toString(Date timeStamp) {
		// TODO Auto-generated method stub
		return null;
	}


	public Timestamp toTimeStamp(Object string) {
		// TODO Auto-generated method stub
		return null;
	}
}
