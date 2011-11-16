package com.mobisols.tollpayments;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.aspectj.util.FileUtil;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.TollPriceHistoryDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollLocationHistory;
import com.mobisols.tollpayments.model.TollPriceHistory;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.model.UserVehicleHistory;
import com.mobisols.tollpayments.model.VehicleTollUsage;

public class Main {

	public static final String SENDER_CODE = "SSS";
	public static final String RECIEVER_CODE = "RRR";
	public static final String ACCOUNT_NUMBER = "XXXXXXXXXX";
	public static final String SENDER_COMPANY_NAME = "MOBISOLS LTD";
	public static final String RECIEVER_COMPANY_NAME = "TEXAS TOLL AUTHORITY LTD";
	public static void main(String args[]){
		//generateFullTransferPLT();
		generateIncrementalPLT(0, 1000);
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
	
	/*public static void generateIncrementalPLT(int from,int to){
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
	        UserVehicleHistoryDao userVehicleHistoryDao =  (UserVehicleHistoryDao) ctx.getBean("dao.tollpayments.userVehicleHistoryDao");
	        UserVehicleDao userVehicleDao =  (UserVehicleDao) ctx.getBean("dao.tollpayments.userVehicleDao");
	        
	        List vehicleHistoryList=userVehicleHistoryDao.getAllDistinctVehicles(from, to);
	        for(Iterator it = vehicleHistoryList.iterator();it.hasNext();)
	        {
	        	Object[] row = (Object[]) it.next();
	        	for(int i=0;i<row.length;i++){
	        		System.out.println(row[i].toString());
	        	}
	        	List<UserVehicle> vehicleList = userVehicleDao.getActiveVehicles(row[0].toString(), row[1].toString());
	        	String record = "D1,";
	        	if(!vehicleList.isEmpty())
	        	{
	        		record = record+"A,";
	        		UserVehicle vehicle = null;
	        		if(vehicleList.size()==1)
	        		{
	        			vehicle = vehicleList.get(0);
	        		}
	        		else if(vehicleList.get(0).getVehicleEndDate().equals(vehicleList.get(1).getVehicleEndDate()))
	        		{
	        			vehicleList = userVehicleDao.getActiveVehicles(row[0].toString(), row[1].toString(), vehicleList.get(0).getVehicleEndDate());
	        			if(vehicleList.size()==1)
	        			{
	        				vehicle = vehicleList.get(0);
	        			}
	        			else if(vehicleList.get(0).getVehicleStartDate().equals(vehicleList.get(1).getVehicleStartDate()))
	        			{
	        				vehicleList = userVehicleDao.getActiveVehicles(row[0].toString(), row[1].toString(),
	        						vehicleList.get(0).getVehicleStartDate(), vehicleList.get(0).getVehicleEndDate());
	        				vehicle = vehicleList.get(0);
	        			}
	        		}
	        		else
	        		{
	        			vehicle = vehicleList.get(0);
	        		}
	        		record = record+vehicle.getRegisteredState()+","+vehicle.getRegistrationNo()+",";
	        		if(vehicle.getModel()!=null)
    				{
	        			record = record + 	vehicle.getModel().getMake().getName()+",";
	        			record = record	+   vehicle.getModel().getName()+",";
    				}
	        		else
	        		{
	        			record = record + ",,";
	        		}
    				record = record	+   new SimpleDateFormat("MMddyy").format(vehicle.getVehicleStartDate())+
    					","+","+vehicle.getVin()+"\n";
	        	}
	        	else
	        	{
	        		record = record+"D,";
	        		List<UserVehicleHistory> history = userVehicleHistoryDao.getHistory(row[0].toString(), row[1].toString(), from, to);
	        		UserVehicleHistory vehicle = history.get(history.size()-1);
	        		record = record+vehicle.getRegisteredState()+","+vehicle.getRegistrationNo()+",";
	        		if(vehicle.getModel()!=null)
    				{
	        			record = record + 	vehicle.getModel().getMake().getName()+",";
	        			record = record	+   vehicle.getModel().getName()+",";
    				}
	        		else
	        		{
	        			record = record + ",,";
	        		}
    				record = record	+   new SimpleDateFormat("MMddyy").format(vehicle.getVehicleStartDate())+
    					","+","+vehicle.getVin()+"\n";
	        	}
	        	writer.write(record);
	        }
	        writer.close();
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}*/
	
	public static void generateIncrementalPLT(int from,int to){
		SimpleDateFormat format  = new SimpleDateFormat("MMddyy'_'HHmmss");
		String date  = format.format(new Date());
		String pltFile = SENDER_CODE+"_"+RECIEVER_CODE+"_"+date+"_"+ACCOUNT_NUMBER+
				"_"+".PLT";
		try {
	        File file = new File(pltFile);
	        file.createNewFile();
	        FileWriter fstream = new FileWriter(file);
	        BufferedWriter writer = new BufferedWriter(fstream);
	        
	        //TODO change the temperory file to read from database
	        File tempFile = new File("temp.txt");
	        BufferedReader reader = null;
	        FileReader stream = new FileReader(tempFile);
			reader = new BufferedReader(stream);
			String row = reader.readLine();
			while(row!=null){
				//String col[] = row.split(",");
				row.replaceFirst("[,][A][,]", ",D,");
				writer.write(row);
				row = reader.readLine();
			}
			reader.close();
			stream.close();
	        String[] paths = {
	                 "/spring/dao.xml"
	            };
	        tempFile.delete();
	        tempFile.createNewFile();
	        FileWriter tempFileWriter = new FileWriter(tempFile);
	        BufferedWriter tempWriter = new BufferedWriter(tempFileWriter);
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        UserVehicleDao userVehicleDao =  (UserVehicleDao) ctx.getBean("dao.tollpayments.userVehicleDao");
	        List<UserVehicle> vehicleList=userVehicleDao.getAllActiveVehicles();
	        for(Iterator<UserVehicle> it = vehicleList.iterator();it.hasNext();)
	        {
	        	UserVehicle u = it.next();
	        	tempWriter.write("D1,"+"A,"+u.getRegisteredState()+","+u.getRegistrationNo()+","+
	        			u.getModel().getMake().getName()+","+u.getModel().getName()+","+
	        			new SimpleDateFormat("MMddyy").format(u.getVehicleStartDate())+
	        			","+","+u.getVin()+"\n");
	        }
	       
	        tempWriter.close();
	        writer.write("H1,FULL,"+SENDER_CODE+","+SENDER_COMPANY_NAME+","+ACCOUNT_NUMBER+","+
	        		RECIEVER_CODE+","+RECIEVER_COMPANY_NAME+","+pltFile+","+
	        		new SimpleDateFormat("MMddyy").format(new Date())+","+FileUtils.checksumCRC32(tempFile)+"\n");
	        stream = new FileReader(tempFile);
			reader = new BufferedReader(stream);
			String record = reader.readLine();
			while(record!=null){
				writer.write(record);
				record = reader.readLine();
			}
			 writer.close();
		} catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public static void importData(){
		String path = "";
		File file = new File(path);
		BufferedReader  reader = null;
		try {
			FileReader stream = new FileReader(file);
			reader = new BufferedReader(stream);
			String row = reader.readLine();
			row = reader.readLine();
			while(row!=null)
			{
				String col[] = row.split(",");
				String state = col[1];
				String plate = col[2];
				String transactionNumber = col[3];
				String transactionDate = col[4];
				String transactionTime = col[5];
				String transactionAmount = col[6];
				String roadWay = col[7];
				String tollPlaza = col[8];
				String lane = col[9];
				
				SimpleDateFormat format = new SimpleDateFormat("MMddyyyyHHmmss");
				Date date  = format.parse(transactionDate+transactionTime);
				String[] paths = {
		                 "/spring/dao.xml"
		            };
		        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
		        UserVehicleHistoryDao userVehicleHistoryDao =  (UserVehicleHistoryDao) ctx.getBean("dao.tollpayments.userVehicleHistoryDao");
		        VehicleTollUsageDao vehicleTollUsageDao = (VehicleTollUsageDao) ctx.getBean("dao.tollpayments.vehicleTollUsageDao");
		        TollLocationDao tollLocationDao = (TollLocationDao) ctx.getBean("dao.tollpayments.tollLocationDao");
		        TollPriceHistoryDao tollPriceHistoryDao = (TollPriceHistoryDao) ctx.getBean("dao.tollpayments.tollPriceHistoryDao");
		        
		        UserVehicleHistory userVehicle = userVehicleHistoryDao.getUvhId(plate,state,date);
				TollLocation tl = tollLocationDao.getTollLocation(tollPlaza);
		        List<TollPriceHistory> tollprice = tollPriceHistoryDao.getTollPriceHistory(tl.getTollLocationId(), Float.parseFloat(transactionAmount));
				
		        VehicleTollUsage vtu = new VehicleTollUsage();
				vtu.setClientId(Client.PRESENT_CLIENT);
				vtu.setCreatedOn(new Timestamp(new Date().getTime()));
				vtu.setLastModifiedBy(-1);
				vtu.setLastModifiedOn(new Timestamp(new Date().getTime()));
				vtu.setTimestamp(new Timestamp(date.getTime()));
				vtu.setTollLocId(tl.getTollLocationId());
				vtu.setTphId(tollprice.get(0).getTphId());
				vtu.setUvhId(userVehicle.getUvhId());
				vtu.setVmlId(-1);
				vehicleTollUsageDao.save(vtu);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
