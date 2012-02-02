/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.ModelDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.model.UserVehicleHistory;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.admin.VehicleHistoryDetailsRequest;
import com.mobisols.tollpayments.response.admin.VehicleHistoryResponse;
import com.mobisols.tollpayments.service.VehicleHistoryDetails;

/**
 * @author Raghu
 *
 */
public class VehicleHistoryDetailsImpl implements VehicleHistoryDetails{

	private JsonConverter jsonConverter;
	private UserVehicleDao userVehicleDao;
	private UserDao userDao;
	private UserVehicleHistoryDao userVehicleHistoryDao;
	private ModelDao modelDao;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.VehicleHistoryDetails#getVehicleHistory(com.mobisols.tollpayments.request.admin.VehicleHistoryDetailsRequest)
	 */
	@Override
	public String getVehicleHistory(String request,VehicleHistoryDetailsRequest vhdr) {
		VehicleHistoryResponse response = new VehicleHistoryResponse();
		String status = "success";
		if(vhdr.getStartDate()==null){
			vhdr.setStartDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		}
		if(vhdr.getEndDate()==null){
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(vhdr.getStartDate().getTime());
			c.add(Calendar.MONTH, -1);
			vhdr.setEndDate(new Timestamp(c.getTimeInMillis()));
		}
		UserVehicle uv = userVehicleDao.getVehicle(vhdr.getRegNo(), vhdr.getState(), userDao.getUser(vhdr.getUsername()).getUserId());
		List<UserVehicleHistory> uvhList = userVehicleHistoryDao.getVehicleHistory(uv.getUserVehicleId(), vhdr.getStartDate(), vhdr.getEndDate());
		for(Iterator<UserVehicleHistory> it = uvhList.iterator();it.hasNext();){
			UserVehicleHistory uvh = it.next();
			com.mobisols.tollpayments.response.admin.VehicleHistoryDetails vhd = new com.mobisols.tollpayments.response.admin.VehicleHistoryDetails();
			vhd.setAction(uvh.getAction());
			vhd.setColor(uvh.getColor());
			vhd.setEndDate(uvh.getVehicleEndDate());
			vhd.setFromDate(uvh.getStartDate());
			vhd.setMake(modelDao.getModel(uvh.getModelId()).getMake().getName());
			vhd.setManufacturedYear(uvh.getManufacturedYear());
			vhd.setModel(modelDao.getModel(uvh.getModelId()).getName());
			vhd.setRegNo(uvh.getRegistrationNo());
			vhd.setStartDate(uvh.getVehicleStartDate());
			vhd.setState(uvh.getRegisteredState());
			vhd.setStatus(uvh.getIsActive());
			vhd.setToDate(uvh.getEndDate());
			vhd.setVehicleId(uvh.getUserVehicleId());
			vhd.setVin(uvh.getVin());
			
			uvhList.add(uvh);
		}
		return jsonConverter.getJSON(request, status, response);
	}
	
}
