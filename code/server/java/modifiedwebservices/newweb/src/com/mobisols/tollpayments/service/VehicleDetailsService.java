package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;

public interface VehicleDetailsService {
	UserVehicleDao userVehicleDao=null;
	UserDao userDao=null;
	MyUtilDate myUtilDate=null;
	OwnerTypeDao ownerTypeDao=null;
	VehicleTypeDao vehicleTypeDao=null;
	
	public String postVehicleDetails(String request,VehicleDetailsRequest vdr,String user,String isNewVehicle);
	public String deleteVehicle(String request,int vehicleId,String user);
}
