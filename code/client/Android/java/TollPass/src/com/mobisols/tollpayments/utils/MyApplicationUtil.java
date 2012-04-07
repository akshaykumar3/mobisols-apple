package com.mobisols.tollpayments.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.concurrent.locks.ReentrantLock;

import com.mobisols.tollpayments.TollPassActivity;

import android.content.Context;
import android.util.Log;

public class MyApplicationUtil {

	private Context applicationContext=null;
	private TollPassActivity applicationActivity=null;
	private ReentrantLock lock = null;
	private int notificationId=0;
	private BufferedWriter logWriter;
	private static MyApplicationUtil myApplicationUtil=null;
	
	public static final String version = "1.0";
	
	private MyApplicationUtil(){
		Log.d("MyApplicationUtil Contructor", "entered constructor");
		lock = new ReentrantLock();
		File file = new File("sdcard/log.txt");
        if(!file.exists()){
        	Log.d("My APPLICATION Util", "file not exists");
        	try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        try {
			logWriter = new BufferedWriter(new FileWriter(file,true));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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

	public int getNotificationId() {
		notificationId = (notificationId+1)%100;
		return notificationId;
	}

	public BufferedWriter getLogWriter() {
		return logWriter;
	}
	
	public void log(String tag,String msg) {
		try {
			logWriter.append(Calendar.getInstance().getTime().toString()+"  "+tag+"  : "+msg+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
