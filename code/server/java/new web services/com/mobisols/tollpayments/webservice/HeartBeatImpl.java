package com.mobisols.tollpayments.webservice;

import java.awt.Point;
import java.sql.Timestamp;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.Device;
import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VehicleMovementLog;
import com.mobisols.tollpayments.hibernate.entity.VmlType;
import com.mobisols.tollpayments.hibernate.entity.TollLocation;
import com.mobisols.tollpayments.myutils.MyUtils;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.hibernate.entity.UserVehicleHistory;

@Path("/HeartBeat")
public class HeartBeatImpl implements HeartBeat {
	private String deviceId;
	private String deviceType;
	private Timestamp timeStamp;
	private Double latitude;
	private Double longitude;
	private Double angle;
	private String vmlType;
	private String tollSessionId;
	
	//TODO update vml type in post method
	public HeartBeatImpl(){
		
	}
	@POST
	public String getHeartBeat(@FormParam("user_name")String user,@FormParam("json")String json) {
		JsonConverter j=new JsonConverterImpl();
		HeartBeat hb=(HeartBeat) j.getObject(json, "com.mobisols.tollpayments.webservice.HeartBeatImpl");
		HeartBeatResponseImpl hbr = new HeartBeatResponseImpl();
		Session s= HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		VehicleMovementLog vml=new VehicleMovementLog();
		Criteria crit=s.createCriteria(Device.class);
		crit.add(Restrictions.eq("deviceUuid",hb.getDeviceId() ));
		crit.add(Restrictions.eq("deviceType", hb.getDeviceType()));
		Device d=(Device) crit.uniqueResult();
		MyUtils mu=new MyUtils();
		
		vml.setClientId(1);
		vml.setCreatedOn(new MyUtils().getCurrentTimeStamp());
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
		vml.setLastModifiedOn(mu.getCurrentTimeStamp());
		vml.setLatitude(hb.getLatitude());
		vml.setLongitude(hb.getLongitude());
		vml.setTimestamp(hb.getTimeStamp());
		
		TollLocationUtil tlu=new TollLocationUtil();
		Location p=new LocationImpl();
		p.setLatitude(hb.getLatitude());
		Location np=tlu.getNearestToll(p);
		double dist = tlu.getDistance(p, np);
		vml.setDistance(dist);
		
		String qu="from TollLocation tl where tl.latitude=:lat and tl.longitude=:long";
		Query qury1=s.createQuery(qu);
		qury1.setParameter("lat", np.getLatitude());
		qury1.setParameter("long", np.getLongitude());
		TollLocation t=(TollLocation) qury1.uniqueResult();
		vml.setTollLocationId(t.getTollLocationId());
		
		//String q="from UserVehicleHistory uvh order by uvh.startDate desc";
		//Query query=s.createQuery(q);
		//List<UserVehicleHistory> uvh=query.list();
		crit=s.createCriteria(UserVehicleHistory.class);
		crit.addOrder(Order.desc("startDate"));
		List<UserVehicleHistory> uvh=crit.list();
		vml.setUvhId(uvh.get(0).getUvhId());
		
		String tollSessionId;
		int index=hb.getTollSessionId().indexOf('#');
		if(index==-1)
		{
			tollSessionId=Integer.toString(t.getTollLocationId()) + "#" + mu.getCurrentTimeStamp();
		}
		else
		{
			int tollId=Integer.getInteger(hb.getTollSessionId().substring(0,index).trim());
			if(tollId==t.getTollLocationId())
			{
				tollSessionId=hb.getTollSessionId();
			}
			else
			{
				tollSessionId=Integer.toString(t.getTollLocationId()) + "#" + mu.getCurrentTimeStamp();
			}
		}
		vml.setTollSessionId(tollSessionId);
		
		//String substr=hb.getTollSessionId().substring(0, index);
		crit=s.createCriteria(VmlType.class);
		crit.add(Restrictions.eq("name", hb.getVmlType()));
		List<VmlType> vt=crit.list();
		if(vt.isEmpty())
		{
			System.out.println("vml type is empty");
			return null;
		}
		vml.setVmlTypeId(vt.get(0).getVmlTypeId());
		vml.setVmlId(null);
		s.save(vml);
		tx.commit();
		hbr.getHash().put("status", "success");
		hbr.getHash().put("timeInterval",Double.toString(10*60));
		hbr.getHash().put("distance", "200.000");
		hbr.getHash().put("tollSessionId", tollSessionId);
		String res= j.getJSON("", "", hbr.getHash());
		HibernateSessionFactory.closeSession();
		return res;
	}

	public String getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	public String getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	public Double getAngle() {
		return angle;
	}
	public void setAngle(Double angle) {
		this.angle = angle;
	}
	public void setVmlType(String vmlType) {
		this.vmlType = vmlType;
	}
	public String getVmlType() {
		return vmlType;
	}
	
	public String getTollSessionId() {
		return tollSessionId;
	}
	public void setTollSessionId(String tollSessionId) {
		this.tollSessionId = tollSessionId;
	}
}
