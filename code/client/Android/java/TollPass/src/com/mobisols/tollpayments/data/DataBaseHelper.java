package com.mobisols.tollpayments.data;

import com.mobisols.tollpayments.utils.MyApplicationUtil;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class DataBaseHelper extends SQLiteOpenHelper {
	private static DataBaseHelper databaseHelper = null;
	
	public static final String DB_NAME = "tollpass";
	public static final Integer DB_VERSION =1;
	//Tables
	public static final String TBL_HEART_BEAT = "heart_beat";
	
	
	private DataBaseHelper(Context context) {
		super(context,DB_NAME,null,DB_VERSION);
	}

	public static DataBaseHelper getInstance(){
		if(databaseHelper == null)
		{
			databaseHelper = new DataBaseHelper(MyApplicationUtil.getInstance().getApplicationContext());
		}
		return databaseHelper;
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		Log.d("TollPass DataBaseHelper", "creating database");
		db.execSQL("Create table "+TBL_HEART_BEAT+" (id INTEGER PRIMARY KEY AUTOINCREMENT,request VARCHAR(1000) NOT NULL);");
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub

	}
	
	public void insertHeartBeat(String json){
		SQLiteDatabase db = databaseHelper.getWritableDatabase();
		ContentValues cv = new ContentValues();
		cv.put("request", json);
		db.insert(TBL_HEART_BEAT, null, cv);
		Log.d("SqlLite", "Inserted into heartbeat table");
	}
	
	public int deleteHeartBeat(Long id){
		SQLiteDatabase db = databaseHelper.getWritableDatabase();
		String[] where_args = {Long.toString(id)};
		int result = db.delete(TBL_HEART_BEAT, "id = ?", where_args);
		Log.d("SqlLite", "deleted from heartbeat table");
		return result;
	}
	
	public Cursor getHeartBeatCursor(){
		String cols[] = {"id","request"};
		Cursor cursor = databaseHelper.getReadableDatabase().query(TBL_HEART_BEAT, cols, null, null, null, null, null);
		Log.d("Cursor length", ""+cursor.getCount());
		return cursor;
	}
}
