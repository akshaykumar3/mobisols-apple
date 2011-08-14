package com.mobisols.tollpayments.myutils;

import java.sql.Timestamp;
import java.util.Date;

public interface MyUtilDate {

	public Timestamp getCurrentTimeStamp();


	public String toString(Timestamp timestamp);


	public Object toString(Date timeStamp);


	public Timestamp toTimeStamp(Object string);

}
