package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.DeviceHistoryDao;
import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserNotificationDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VmlDao;
import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.UserNotification;
import com.mobisols.tollpayments.model.VehicleMovementLog;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.request.post.HeartBeatList;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;
import com.mobisols.tollpayments.response.post.HeartBeatResponse;
import com.mobisols.tollpayments.service.HeartBeatService;

/**
 * The Class HeartBeatServiceImpl.
 */
public class HeartBeatServiceImpl implements HeartBeatService {

	/** The vml dao. */
	private VmlDao vmlDao;

	/** The my util date. */
	private MyUtilDate myUtilDate;

	/** The device dao. */
	private DeviceDao deviceDao;

	/** The device history dao. */
	private DeviceHistoryDao deviceHistoryDao;

	/** The toll location util. */
	private TollLocationUtil tollLocationUtil;

	/** The toll location dao. */
	private TollLocationDao tollLocationDao;

	/** The user vehicle history dao. */
	private UserVehicleHistoryDao userVehicleHistoryDao;

	/** The vml type dao. */
	private VmlTypeDao vmlTypeDao;

	/** The json converter. */
	private JsonConverter jsonConverter;

	private UserNotificationDao userNotificationDao;

	/** The Constant DEFAULT_TIME. */
	public static final double DEFAULT_TIME=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("default_heart_beat_time"));

	/** The Constant DEFAULT_DISTANCE. */
	public static final double DEFAULT_DISTANCE=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("default_heart_beat_distance"));

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#saveHeartBeat(java.lang.String, com.mobisols.tollpayments.request.post.HeartBeatRequest)
	 */
	public String saveHeartBeat(String request,HeartBeatList hblist) {
		HeartBeatResponse response = new HeartBeatResponse();
		String status="success";
		for(Iterator<HeartBeatRequest> it = hblist.getHeartBeatList().iterator();it.hasNext();){
			HeartBeatRequest hbr = it.next();
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
			vml.setTimestamp(hbr.getTimeStamp());

			Location p=new Location();
			p.setLatitude(hbr.getLatitude());
			Location np=tollLocationUtil.getNearestToll(p);
			double dist = tollLocationUtil.getDistance(p, np);
			vml.setDistance(dist);

			TollLocation t=tollLocationDao.getTollLocation(hbr.getLatitude(), hbr.getLongitude());
			if(t!=null)
				vml.setTollLocationId(t.getTollLocationId());

			vml.setDeviceHistoryId(deviceHistoryDao.getLatestDeviceHistoryId(d.getDeviceId()));
			if(hbr.getTollSessionId()==null)
				hbr.setTollSessionId("");
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
				int tollId=Integer.parseInt(hbr.getTollSessionId().substring(0,index).trim());
				if(t!=null && tollId==t.getTollLocationId())
				{
					tollSessionId=hbr.getTollSessionId();
				}
				else if(t!=null)
				{
					tollSessionId=Integer.toString(t.getTollLocationId()) + "#" + myUtilDate.getCurrentTimeStamp();
				}
				else
				{
					tollSessionId=Integer.toString(tollLocationDao.getTollLocation(np.getLatitude(), np.getLongitude()).getTollLocationId()) + "#" + myUtilDate.getCurrentTimeStamp();
				}
			}
			vml.setTollSessionId(tollSessionId);
			vml.setVmlTypeId(vmlTypeDao.getVmlTypeId(hbr.getVmlType()));
			vmlDao.save(vml);
			response.getHash().put("status", "success");
			response.getHash().put("timeInterval",Double.toString(DEFAULT_TIME));
			response.getHash().put("distance", Double.toString(DEFAULT_DISTANCE));
			response.getHash().put("tollSessionId", tollSessionId);
		}
		if(hblist.getHeartBeatList().get(0)!=null){
		List<UserNotification> un = userNotificationDao.getPendingCommands(deviceDao.getDevice(hblist.getHeartBeatList().get(0).getDeviceId(),hblist.getHeartBeatList().get(0).getDeviceType()).getDeviceId());
		for(Iterator<UserNotification> it = un.iterator();it.hasNext();)
		{
			UserNotification command = it.next();
			response.getCommands().put(command.getUserNotificationId().toString(),command.getNotification());
			command.setLastModifiedOn(new Timestamp(new Date().getTime()));
			command.setLastModifiedBy(UserDao.DEFAULT_USER);
			command.setSentTimestamp(new Timestamp(new Date().getTime()));
			userNotificationDao.update(command);
		}

		List<UserNotification> unl = userNotificationDao.getPendingNotifications(deviceDao.getDevice(hblist.getHeartBeatList().get(0).getDeviceId(),hblist.getHeartBeatList().get(0).getDeviceType()).getDeviceId());
		for(Iterator<UserNotification> it = unl.iterator();it.hasNext();)
		{
			UserNotification notification = it.next();
			response.getNotifications().add(notification.getNotification());
			notification.setLastModifiedBy(UserDao.DEFAULT_USER);
			notification.setLastModifiedOn(new Timestamp(new Date().getTime()));
			userNotificationDao.update(notification);
		}
		}
		return jsonConverter.getJSON(request, status,response);
	}


	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getMyUtilDate()
	 */
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setMyUtilDate(com.mobisols.tollpayments.myutils.MyUtilDate)
	 */
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getDeviceDao()
	 */
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setDeviceDao(com.mobisols.tollpayments.dao.DeviceDao)
	 */
	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getVmlDao()
	 */
	public VmlDao getVmlDao() {
		return vmlDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setVmlDao(com.mobisols.tollpayments.dao.VmlDao)
	 */
	public void setVmlDao(VmlDao vmlDao) {
		this.vmlDao = vmlDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getTollLocationUtil()
	 */
	public TollLocationUtil getTollLocationUtil() {
		return tollLocationUtil;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setTollLocationUtil(com.mobisols.tollpayments.myutils.TollLocationUtil)
	 */
	public void setTollLocationUtil(TollLocationUtil tollLocationUtil) {
		this.tollLocationUtil = tollLocationUtil;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getTollLocationDao()
	 */
	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setTollLocationDao(com.mobisols.tollpayments.dao.TollLocationDao)
	 */
	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getUserVehicleHistoryDao()
	 */
	public UserVehicleHistoryDao getUserVehicleHistoryDao() {
		return userVehicleHistoryDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setUserVehicleHistoryDao(com.mobisols.tollpayments.dao.UserVehicleHistoryDao)
	 */
	public void setUserVehicleHistoryDao(UserVehicleHistoryDao userVehicleHistoryDao) {
		this.userVehicleHistoryDao = userVehicleHistoryDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#getVmlTypeDao()
	 */
	public VmlTypeDao getVmlTypeDao() {
		return vmlTypeDao;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.HeartBeatService#setVmlTypeDao(com.mobisols.tollpayments.dao.VmlTypeDao)
	 */
	public void setVmlTypeDao(VmlTypeDao vmlTypeDao) {
		this.vmlTypeDao = vmlTypeDao;
	}


	/**
	 * Gets the device history dao.
	 *
	 * @return the device history dao
	 */
	public DeviceHistoryDao getDeviceHistoryDao() {
		return deviceHistoryDao;
	}


	/**
	 * Sets the device history dao.
	 *
	 * @param deviceHistoryDao the new device history dao
	 */
	public void setDeviceHistoryDao(DeviceHistoryDao deviceHistoryDao) {
		this.deviceHistoryDao = deviceHistoryDao;
	}


	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}


	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}


	public UserNotificationDao getUserNotificationDao() {
		return userNotificationDao;
	}


	public void setUserNotificationDao(UserNotificationDao userNotificationDao) {
		this.userNotificationDao = userNotificationDao;
	}

}
