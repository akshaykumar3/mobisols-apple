package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Date;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.DeviceHistoryDao;
import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.VehicleMovementLog;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;
import com.mobisols.tollpayments.response.post.HeartBeatResponse;
import com.mobisols.tollpayments.service.HeartBeatService;

public class HeartBeatServiceImpl implements HeartBeatService {
	private VmlDao vmlDao;
	private MyUtilDate myUtilDate;
	private DeviceDao deviceDao;
	private DeviceHistoryDao deviceHistoryDao;
	private TollLocationUtil tollLocationUtil;
	private TollLocationDao tollLocationDao;
	private UserVehicleHistoryDao userVehicleHistoryDao;
	private VmlTypeDao vmlTypeDao;
	private JsonConverter jsonConverter;
	
	public static final double DEFAULT_TIME=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("default_heart_beat_time"));
	public static final double DEFAULT_DISTANCE=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("default_heart_beat_distance"));
	
	public String saveHeartBeat(String request,HeartBeatRequest hbr) {
		HeartBeatResponse response = new HeartBeatResponse();
		String status="success";
		VehicleMovementLog vml=new VehicleMovementLog();
		System.out.println(hbr.getDeviceId());
		Device d=deviceDao.getDevice(hbr.getDeviceId(), hbr.getDeviceType());
		vml.setClientId(Client.PRESENT_CLIENT);
		vml.setCreatedOn(myUtilDate.getCurrentTimeStamp());
		vml.setFlag1(null);
		vml.setFlag2(null);
		vml.setFlag3(null);
		vml.setFlag4(null);
		vml.setFlag5(null);
		vml.setUdf1(null);
		vml.setUdf2(null);
		vml.setUdf3(null);
		vml.setUdf4(null);
		vml.setUdf5(null);
		vml.setLastModifiedBy(d.getUserId());
		vml.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
		vml.setLatitude(hbr.getLatitude());
		vml.setLongitude(hbr.getLongitude());
		vml.setTimestamp(new Timestamp(new Date().getTime()));
		
		Location p=new Location();
		p.setLatitude(hbr.getLatitude());
		Location np=tollLocationUtil.getNearestToll(p);
		double dist = tollLocationUtil.getDistance(p, np);
		vml.setDistance(dist);
		
		TollLocation t=tollLocationDao.getTollLocation(hbr.getLatitude(), hbr.getLongitude());
		if(t!=null)
			vml.setTollLocationId(t.getTollLocationId());
		
		vml.setDeviceHistoryId(deviceHistoryDao.getLatestDeviceHistoryId(d.getDeviceId()));
		
		String tollSessionId;
		int index=hbr.getTollSessionId().indexOf('#');
		if(index==-1)
		{
			if(t!=null)
				tollSessionId=Integer.toString(t.getTollLocationId()) + "#" + myUtilDate.getCurrentTimeStamp();
			else
				tollSessionId=Integer.toString(tollLocationDao.getTollLocation(np.getLatitude(), np.getLongitude()).getTollLocationId()) + "#" + myUtilDate.getCurrentTimeStamp();
		}
		else
		{
			int tollId=Integer.getInteger(hbr.getTollSessionId().substring(0,index).trim());
			if(tollId==t.getTollLocationId())
			{
				tollSessionId=hbr.getTollSessionId();
			}
			else
			{
				tollSessionId=Integer.toString(t.getTollLocationId()) + "#" + myUtilDate.getCurrentTimeStamp();
			}
		}
		vml.setTollSessionId(tollSessionId);
		vml.setVmlTypeId(vmlTypeDao.getVmlTypeId(hbr.getVmlType()));
		vmlDao.save(vml);
		response.getHash().put("status", "success");
		response.getHash().put("timeInterval",Double.toString(DEFAULT_TIME));
		response.getHash().put("distance", Double.toString(DEFAULT_DISTANCE));
		response.getHash().put("tollSessionId", tollSessionId);
		return jsonConverter.getJSON(request, status,response);
	}
	
	
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}

	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}

	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}

	public VmlDao getVmlDao() {
		return vmlDao;
	}
	public void setVmlDao(VmlDao vmlDao) {
		this.vmlDao = vmlDao;
	}

	public TollLocationUtil getTollLocationUtil() {
		return tollLocationUtil;
	}

	public void setTollLocationUtil(TollLocationUtil tollLocationUtil) {
		this.tollLocationUtil = tollLocationUtil;
	}

	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}

	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
	}

	public UserVehicleHistoryDao getUserVehicleHistoryDao() {
		return userVehicleHistoryDao;
	}

	public void setUserVehicleHistoryDao(UserVehicleHistoryDao userVehicleHistoryDao) {
		this.userVehicleHistoryDao = userVehicleHistoryDao;
	}

	public VmlTypeDao getVmlTypeDao() {
		return vmlTypeDao;
	}

	public void setVmlTypeDao(VmlTypeDao vmlTypeDao) {
		this.vmlTypeDao = vmlTypeDao;
	}


	public DeviceHistoryDao getDeviceHistoryDao() {
		return deviceHistoryDao;
	}


	public void setDeviceHistoryDao(DeviceHistoryDao deviceHistoryDao) {
		this.deviceHistoryDao = deviceHistoryDao;
	}


	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}


	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
