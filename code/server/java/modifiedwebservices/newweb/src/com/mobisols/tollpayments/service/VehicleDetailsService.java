package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.response.GeneralResponse;

public interface VehicleDetailsService {
	UserVehicleDao userVehicleDao=null;
	UserDao userDao=null;
	MyUtilDate myUtilDate=null;
	OwnerTypeDao ownerTypeDao=null;
	VehicleTypeDao vehicleTypeDao=null;
	
	public GeneralResponse postVehicleDetails(VehicleDetailsRequest vdr,String user,String isNewVehicle);
	public GeneralResponse deleteVehicle(VehicleDetailsRequest vdr,String user);
}