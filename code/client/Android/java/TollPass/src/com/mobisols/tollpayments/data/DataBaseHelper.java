package com.mobisols.tollpayments.data;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class DataBaseHelper extends SQLiteOpenHelper {
	private static DataBaseHelper databaseHelper = null;
	
	public static final String DB_NAME = "tollpass";
	public static final Integer DB_VERSION =1;
	//Tables
	public static final String TBL_USER = "user";
	public static final String TBL_CLIENT_CONFIG = "client_config";
	public static final String TBL_TOLL_LOC = "toll_loc";
	
	
	private DataBaseHelper(Context context) {
		super(context,DB_NAME,null,DB_VERSION);
	}

	public static DataBaseHelper getInstance(Context context){
		if(databaseHelper == null)
		{
			databaseHelper = new DataBaseHelper(context);
		}
		return databaseHelper;
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		Log.d("TollPass DataBaseHelper", "creating database");
		db.execSQL("Create table "+TBL_USER+" (id INTEGER PRIMARY KEY AUTOINCREMENT,key VARCHAR(100) NOT NULL,value VARCHAR(1000));");
		db.execSQL("CREATE TABLE " + TBL_CLIENT_CONFIG + "(id INTEGER PRIMARY KEY AUTOINCREMENT,key VARCHAR(100) NOT NULL,value VARCHAR(1000));");
		db.execSQL("CREATE TABLE " + TBL_TOLL_LOC + "(id INTEGER PRIMARY KEY AUTOINCREMENT,toll_operator VARCHAR(100),city VARCHAR(100)," +
				"state VACHAR(100),zip VARCHAR(10),latitude FLOAT,longitude FLOAT,is_covered VARCHAR(1))" );
		
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub

	}
	
	public void updateTollLocations(){
		
	}
	
	public void updateKey(String key,String value){
		
	}
	
	public void updateClientConfig(){
		
	}
	
	public void getTollLocations(){
		
	}
	
	public String getClientConfig(String key){
		return null;
	}
	
	public String getKey(String key){
		return null;
	}
	
}
