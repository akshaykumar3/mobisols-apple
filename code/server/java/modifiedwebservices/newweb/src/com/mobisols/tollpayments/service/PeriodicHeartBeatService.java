package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.DeviceHistoryDao;
import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;

public interface PeriodicHeartBeatService {
	VmlDao vmlDao=null;
	DeviceDao deviceDao=null;
	MyUtilDate myUtilDate=null;
	TollLocationUtil tollLocationUtil=null;
	TollLocationDao tollLocationDao=null;
	DeviceHistoryDao deviceHistoryDao=null;
	VmlTypeDao vmlTypeDao=null;
	
	public String saveHeartBeat(String request,HeartBeatRequest hbr);
	public MyUtilDate getMyUtilDate();

	public void setMyUtilDate(MyUtilDate myUtilDate);

	public DeviceDao getDeviceDao();

	public void setDeviceDao(DeviceDao deviceDao);

	public VmlDao getVmlDao();
	public void setVmlDao(VmlDao vmlDao);

	public TollLocationUtil getTollLocationUtil();

	public void setTollLocationUtil(TollLocationUtil tollLocationUtil);

	public TollLocationDao getTollLocationDao();

	public void setTollLocationDao(TollLocationDao tollLocationDao);

	public DeviceHistoryDao getDeviceHistoryDao();

	public void setDeviceHistoryDao(DeviceHistoryDao deviceHistoryDao);

	public VmlTypeDao getVmlTypeDao();

	public void setVmlTypeDao(VmlTypeDao vmlTypeDao);
}
