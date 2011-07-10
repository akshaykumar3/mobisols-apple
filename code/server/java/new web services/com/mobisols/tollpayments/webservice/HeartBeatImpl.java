package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserVehicle;
import com.mobisols.tollpayments.hibernate.entity.VehicleMovementLog;
import com.mobisols.tollpayments.hibernate.entity.VmlType;
import com.mobisols.tollpayments.myutils.MyUtils;

@Path("/HeartBeat")
public class HeartBeatImpl implements HeartBeat {
	private Timestamp timeStamp;
	private Double latitude;
	private Double longitude;
	private Double angle;
	private String vmlType;
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
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName",user ));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		Set<UserVehicle> uv=u.get(0).getUserVehicles();
		if(uv.isEmpty())
			return null;
		UserVehicle vehicle=null;
		for(Iterator i=(Iterator) uv.iterator();i.hasNext();)
		{
			UserVehicle v=(UserVehicle) i.next();
			if(v.getIsActive()=="y")
			{
				vehicle=v;
				break;
			}
		}
		if(vehicle==null)
			return null;
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
		vml.setLastModifiedBy(-1);
		vml.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		vml.setLatitude(hb.getLatitude());
		vml.setLongitude(hb.getLongitude());
		vml.setTimestamp(hb.getTimeStamp());
		vml.setUvhId(vehicle.getUserVehicleId());
		crit=s.createCriteria(VmlType.class);
		crit.add(Restrictions.eq("name", hb.getVmlType()));
		List<VmlType> vt=crit.list();
		if(vt.isEmpty())
			return null;
		vml.setVmlTypeId(vt.get(0).getVmlTypeId());
		s.save(vml);
		tx.commit();
		hbr.getHash().put("status", "success");
		hbr.getHash().put("nextTimeStamp",new MyUtils().toString(new Timestamp(hb.getTimeStamp().getTime()+10*60*1000)));
		hbr.getHash().put("distance", "200.000");
		hbr.getHash().put("timeInterval", "3600");
		String res= j.getJSON("", "", hbr);
		HibernateSessionFactory.closeSession();
		return res;
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
	
}
