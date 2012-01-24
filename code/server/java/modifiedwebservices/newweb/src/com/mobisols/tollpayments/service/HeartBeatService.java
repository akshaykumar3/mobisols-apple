package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface HeartBeatService.
 */
public interface HeartBeatService {
	
	/** The vml dao. */
	VmlDao vmlDao=null;
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/** The toll location util. */
	TollLocationUtil tollLocationUtil=null;
	
	/** The toll location dao. */
	TollLocationDao tollLocationDao=null;
	
	/** The user vehicle history dao. */
	UserVehicleHistoryDao userVehicleHistoryDao=null;
	
	/** The vml type dao. */
	VmlTypeDao vmlTypeDao=null;
	
	/**
	 * Save heart beat.
	 *
	 * @param request the request
	 * @param hbr the hbr
	 * @return the string
	 */
	public String saveHeartBeat(String request,HeartBeatRequest hbr);
	
	/**
	 * Gets the my util date.
	 *
	 * @return the my util date
	 */
	public MyUtilDate getMyUtilDate();

	/**
	 * Sets the my util date.
	 *
	 * @param myUtilDate the new my util date
	 */
	public void setMyUtilDate(MyUtilDate myUtilDate);

	/**
	 * Gets the device dao.
	 *
	 * @return the device dao
	 */
	public DeviceDao getDeviceDao();

	/**
	 * Sets the device dao.
	 *
	 * @param deviceDao the new device dao
	 */
	public void setDeviceDao(DeviceDao deviceDao);

	/**
	 * Gets the vml dao.
	 *
	 * @return the vml dao
	 */
	public VmlDao getVmlDao();
	
	/**
	 * Sets the vml dao.
	 *
	 * @param vmlDao the new vml dao
	 */
	public void setVmlDao(VmlDao vmlDao);

	/**
	 * Gets the toll location util.
	 *
	 * @return the toll location util
	 */
	public TollLocationUtil getTollLocationUtil();

	/**
	 * Sets the toll location util.
	 *
	 * @param tollLocationUtil the new toll location util
	 */
	public void setTollLocationUtil(TollLocationUtil tollLocationUtil);

	/**
	 * Gets the toll location dao.
	 *
	 * @return the toll location dao
	 */
	public TollLocationDao getTollLocationDao();

	/**
	 * Sets the toll location dao.
	 *
	 * @param tollLocationDao the new toll location dao
	 */
	public void setTollLocationDao(TollLocationDao tollLocationDao);

	/**
	 * Gets the user vehicle history dao.
	 *
	 * @return the user vehicle history dao
	 */
	public UserVehicleHistoryDao getUserVehicleHistoryDao();

	/**
	 * Sets the user vehicle history dao.
	 *
	 * @param userVehicleHistoryDao the new user vehicle history dao
	 */
	public void setUserVehicleHistoryDao(UserVehicleHistoryDao userVehicleHistoryDao);

	/**
	 * Gets the vml type dao.
	 *
	 * @return the vml type dao
	 */
	public VmlTypeDao getVmlTypeDao();

	/**
	 * Sets the vml type dao.
	 *
	 * @param vmlTypeDao the new vml type dao
	 */
	public void setVmlTypeDao(VmlTypeDao vmlTypeDao);
}
