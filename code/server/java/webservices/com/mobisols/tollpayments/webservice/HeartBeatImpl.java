package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserVehicleId;
import com.mobisols.tollpayments.hibernate.VehicleMovementLogId;
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
	public String getHeartBeat(@FormParam("username")String user,@FormParam("json")String json) {
		JsonConverter j=new JsonConverterImpl();
		HeartBeat hb=(HeartBeat) j.getObject(json, "com.mobisols.tollpayments.webservice.HeartBeatImpl");
		HeartBeatResponseImpl hbr = new HeartBeatResponseImpl();
		Session s= HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		VehicleMovementLogId vml=new VehicleMovementLogId();
		Criteria crit=s.createCriteria(UserId.class);
		crit.add(Restrictions.eq("user_name",user ));
		crit.add(Restrictions.eq("client_id", 1));
		List<UserId> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicleId.class);
		crit.add(Restrictions.eq("user_id", u.get(0).getUserId()));
		crit.add(Restrictions.eq("is_active", "1"));
		List<UserVehicleId> uv=crit.list();
		if(uv.isEmpty())
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
		vml.setUvhId(uv.get(0).getUserVehicleId());
		vml.setVmlTypeId(1);
		s.save(vml);
		tx.commit();
		hbr.setStatus("success");
		hbr.setNextTimeStamp(new Timestamp(hb.getTimeStamp().getTime()+10*60*1000));
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
	
}
