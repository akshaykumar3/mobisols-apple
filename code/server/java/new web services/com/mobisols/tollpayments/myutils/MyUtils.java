package com.mobisols.tollpayments.myutils;

import java.sql.Timestamp;
import java.util.Date;

public class MyUtils {

	public Timestamp getCurrentTimeStamp() {
		return new Timestamp(new Date().getTime());
	}

}
