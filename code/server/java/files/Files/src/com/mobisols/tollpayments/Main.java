package com.mobisols.tollpayments;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.UserVehicle;

public class Main {

	public static final String SENDER_CODE = "SSS";
	public static final String RECIEVER_CODE = "RRR";
	public static final String ACCOUNT_NUMBER = "XXXXXXXXXX";
	public static final String SENDER_COMPANY_NAME = "MOBISOLS LTD";
	public static final String RECIEVER_COMPANY_NAME = "TEXAS TOLL AUTHORITY LTD";
	public static void main(String args[]){
		generateFullTransferPLT();
		
	}
	
	public static void generateFullTransferPLT(){
		SimpleDateFormat format  = new SimpleDateFormat("MMddyy'_'HHmmss");
		String date  = format.format(new Date());
		String pltFile = SENDER_CODE+"_"+RECIEVER_CODE+"_"+date+"_"+ACCOUNT_NUMBER+
				"_"+".PLT";
		try {
	        File file = new File(pltFile);
	        file.createNewFile();
	        FileWriter fstream = new FileWriter(file);
	        BufferedWriter writer = new BufferedWriter(fstream);
	        writer.write("H1,FULL,"+SENDER_CODE+","+SENDER_COMPANY_NAME+","+ACCOUNT_NUMBER+","+
	        		RECIEVER_CODE+","+RECIEVER_COMPANY_NAME+","+pltFile+","+
	        		new SimpleDateFormat("MMddyy").format(new Date())+","+"CRC32"+"\n");
	        String[] paths = {
	                 "/spring/dao.xml"
	            };
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        UserVehicleDao userVehicleDao =  (UserVehicleDao) ctx.getBean("dao.tollpayments.userVehicleDao");
	        List<UserVehicle> vehicleList=userVehicleDao.getAllActiveVehicles();
	        for(Iterator<UserVehicle> it = vehicleList.iterator();it.hasNext();)
	        {
	        	UserVehicle u = it.next();
	        	writer.write("D1,"+"A,"+u.getRegisteredState()+","+u.getRegistrationNo()+","+
	        			u.getModel().getMake().getName()+","+u.getModel().getName()+","+
	        			new SimpleDateFormat("MMddyy").format(u.getVehicleStartDate())+
	        			","+","+u.getVin()+"\n");
	        }
	        writer.close();
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	   
	}
}
