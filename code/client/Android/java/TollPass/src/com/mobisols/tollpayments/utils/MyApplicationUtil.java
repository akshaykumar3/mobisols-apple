package com.mobisols.tollpayments.utils;

import android.content.Context;

public class MyApplicationUtil {

	private Context applicationContext=null;
	private static MyApplicationUtil myApplicationUtil=null;
	
	private MyApplicationUtil(){
		
	}
	
	public static MyApplicationUtil getInstance(){
		if(myApplicationUtil==null)
		{
			myApplicationUtil = new MyApplicationUtil();
		}
		return myApplicationUtil;
	}
	public Context getApplicationContext() {
		return applicationContext;
	}

	public void setApplicationContext(Context applicationContext) {
		this.applicationContext = applicationContext;
	}
	
}
