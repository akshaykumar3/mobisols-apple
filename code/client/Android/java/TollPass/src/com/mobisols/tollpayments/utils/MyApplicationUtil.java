package com.mobisols.tollpayments.utils;

import java.util.concurrent.locks.ReentrantLock;

import com.mobisols.tollpayments.TollPassActivity;

import android.content.Context;

public class MyApplicationUtil {

	private Context applicationContext=null;
	private TollPassActivity applicationActivity=null;
	private ReentrantLock lock = null;
	
	private static MyApplicationUtil myApplicationUtil=null;
	
	private MyApplicationUtil(){
		lock = new ReentrantLock();
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
	public TollPassActivity getApplicationActivity() {
		return applicationActivity;
	}

	public void setApplicationActivity(TollPassActivity applicationActivity) {
		this.applicationActivity = applicationActivity;
	}

	public ReentrantLock getLock() {
		return lock;
	}

	public void setLock(ReentrantLock lock) {
		this.lock = lock;
	}

	public static MyApplicationUtil getMyApplicationUtil() {
		return myApplicationUtil;
	}

	public static void setMyApplicationUtil(MyApplicationUtil myApplicationUtil) {
		MyApplicationUtil.myApplicationUtil = myApplicationUtil;
	}

}
