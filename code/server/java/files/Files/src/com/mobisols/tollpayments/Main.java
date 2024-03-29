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
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.TollPriceHistoryDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollPriceHistory;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.model.UserVehicleHistory;
import com.mobisols.tollpayments.model.VehicleTollUsage;

public class Main {

	public static final String SENDER_CODE = "TPC";
	public static final String RECIEVER_CODE = "TTA";
	public static final String ACCOUNT_NUMBER = "1000";
	public static final String SENDER_COMPANY_NAME = "TOLLPAYMENTS.COM";
	public static final String RECIEVER_COMPANY_NAME = "Texas Toll Authority";
	public static void main(String args[]){
		//generateFullTransferPLT();
		generateIncrementalPLT(0, 1000);
		generateFullTransferPLT();
	}
	
	public static void generateFullTransferPLT(){
		SimpleDateFormat format  = new SimpleDateFormat("MMddyyyy'_'HHmmss");
		String date  = format.format(new Date());
		String pltFile = SENDER_CODE+"_"+RECIEVER_CODE+"_"+date+"_"+ACCOUNT_NUMBER+
				".plt";
		try {
	        File file = new File(pltFile);
	        file.createNewFile();
	        FileWriter fstream = new FileWriter(file);
	        BufferedWriter writer = new BufferedWriter(fstream);
	        File tempFile = new File("fullTemp");
	        tempFile.createNewFile();
	        BufferedWriter tempwriter = new BufferedWriter(new FileWriter(tempFile));
	        long recordCount=0;
	        String[] paths = {
	                 "/spring/dao.xml"
	            };
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        UserVehicleDao userVehicleDao =  (UserVehicleDao) ctx.getBean("dao.tollpayments.userVehicleDao");
	        List<UserVehicle> vehicleList=userVehicleDao.getAllActiveVehicles();
	        for(Iterator<UserVehicle> it = vehicleList.iterator();it.hasNext();)
	        {
	        	UserVehicle u = it.next();
	        	String vin = u.getVin();
	        	if(vin==null)
	        		vin="";
	        	recordCount++;
	        	tempwriter.write("D1,"+"A,"+u.getRegisteredState()+","+u.getRegistrationNo().replaceAll("[ ]", "")+","+
	        			u.getModel().getMake().getName()+","+u.getModel().getName()+","+
	        			new SimpleDateFormat("MMddyyyy").format(u.getVehicleStartDate())+
	        			","+","+vin+"\n");
	        }
	        tempwriter.close();
	        writer.write("H1,FULL,"+SENDER_CODE+","+SENDER_COMPANY_NAME+","+ACCOUNT_NUMBER+","+
	        		RECIEVER_CODE+","+RECIEVER_COMPANY_NAME+","+pltFile+","+
	        		new SimpleDateFormat("MMddyyyy").format(new Date())+","+recordCount+","+Long.toHexString(FileUtils.checksumCRC32(tempFile)).toUpperCase()+"\n");
	        BufferedReader reader = new BufferedReader(new FileReader(tempFile));
	        String s = reader.readLine();
	        while(s!=null)
	        {
	        	writer.write(s+"\n");
	        	s= reader.readLine();
	        }
	        reader.close();
	        writer.close();
	        tempFile.delete();
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	/*public static void generateIncrementalPLT(int from,int to){
		SimpleDateFormat format  = new SimpleDateFormat("MMddyyyy'_'HHmmss");
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
	        		new SimpleDateFormat("MMddyyyy").format(new Date())+","+"CRC32"+"\n");
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
    				record = record	+   new SimpleDateFormat("MMddyyyy").format(vehicle.getVehicleStartDate())+
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
    				record = record	+   new SimpleDateFormat("MMddyyyy").format(vehicle.getVehicleStartDate())+
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
		SimpleDateFormat format  = new SimpleDateFormat("MMddyyyy'_'HHmmss");
		String date  = format.format(new Date());
		String pltFile = SENDER_CODE+"_"+RECIEVER_CODE+"_"+date+"_"+ACCOUNT_NUMBER+
				".plt";
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
			Calendar expDate = Calendar.getInstance();
			File tempFile1 = new File("temp1.txt");
			long recordCount=0;
	        BufferedWriter temp1Writer = new BufferedWriter(new FileWriter(tempFile1));
			while(row!=null){
				String col[] = row.split(",");
				col[1]="D";
				for(int i=0;i<col.length;i++){
					System.out.println(i+" : "+col[i]);
				}
				String record = "";
				for(int i=0;i<7;i++){
					record = record+col[i]+",";
				}
				record = record+new SimpleDateFormat("MMddyyyy").format(expDate.getTime())+",";
				if(col.length==9)
					record = record+col[8]+"\n";
				else
					record = record+"\n";
				temp1Writer.write(record);
				recordCount++;
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
	        Date today = new Date(); 
	        List<UserVehicle> vehicleList=userVehicleDao.getAllActiveVehicles();
	        for(Iterator<UserVehicle> it = vehicleList.iterator();it.hasNext();)
	        {
	        	UserVehicle u = it.next();
	        	recordCount++;
	        	String vin = u.getVin();
	        	if(vin==null)
	        		vin = "";
	        	temp1Writer.write("D1,"+"A,"+u.getRegisteredState()+","+u.getRegistrationNo().replaceAll("[ ]", "")+","+
	        			u.getModel().getMake().getName()+","+u.getModel().getName()+","+
	        			new SimpleDateFormat("MMddyyyy").format(today)+
	        			","+","+vin+"\n");
	        	tempFileWriter.write("D1,"+"A,"+u.getRegisteredState()+","+u.getRegistrationNo().replaceAll("[ ]", "")+","+
	        			u.getModel().getMake().getName()+","+u.getModel().getName()+","+
	        			new SimpleDateFormat("MMddyyyy").format(today)+
	        			","+","+vin+"\n");
	        }
	        temp1Writer.close();
	        writer.write("H1,FULL,"+SENDER_CODE+","+SENDER_COMPANY_NAME+","+ACCOUNT_NUMBER+","+
	        		RECIEVER_CODE+","+RECIEVER_COMPANY_NAME+","+pltFile+","+
	        		new SimpleDateFormat("MMddyyyy").format(today)+","+recordCount+","+Long.toHexString(FileUtils.checksumCRC32(tempFile1)).toUpperCase()+"\n");
	        stream = new FileReader(tempFile1);
			reader = new BufferedReader(stream);
			String record = reader.readLine();
			while(record!=null){
				writer.write(record+"\n");
				record = reader.readLine();
			}
			 writer.close();
			 reader.close();
			 tempWriter.close();
			 tempFile1.delete();
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
