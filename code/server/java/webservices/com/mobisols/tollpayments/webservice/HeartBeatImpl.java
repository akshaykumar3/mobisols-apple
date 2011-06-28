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
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserVehicle;
import com.mobisols.tollpayments.hibernate.VehicleMovementLog;
import com.mobisols.tollpayments.hibernate.VmlType;
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
	public String getHeartBeat(@FormParam("user_name")String user,@FormParam("json")String json,@FormParam("client_id")int clientId) {
		JsonConverter j=new JsonConverterImpl();
		HeartBeat hb=(HeartBeat) j.getObject(json, "com.mobisols.tollpayments.webservice.HeartBeatImpl");
		HeartBeatResponseImpl hbr = new HeartBeatResponseImpl();
		Session s= HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		VehicleMovementLog vml=new VehicleMovementLog();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("user_name",user ));
		crit.add(Restrictions.eq("client_id", 1));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("user_id", u.get(0).getId().getUserId()));
		crit.add(Restrictions.eq("is_active", "1"));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return null;
		vml.getId().setClientId(1);
		vml.getId().setCreatedOn(new MyUtils().getCurrentTimeStamp());
		vml.getId().setFlag1(null);
		vml.getId().setFlag2(null);
		vml.getId().setFlag3(null);
		vml.getId().setFlag4(null);
		vml.getId().setFlag5(null);
		vml.getId().setUdf1(null);
		vml.getId().setUdf2(null);
		vml.getId().setUdf3(null);
		vml.getId().setUdf4(null);
		vml.getId().setUdf5(null);
		vml.getId().setLastModifiedBy(-1);
		vml.getId().setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		vml.getId().setLatitude(hb.getLatitude());
		vml.getId().setLongitude(hb.getLongitude());
		vml.getId().setTimestamp(hb.getTimeStamp());
		vml.getId().setUvhId(uv.get(0).getId().getUserVehicleId());
		crit=s.createCriteria(VmlType.class);
		crit.add(Restrictions.eq("name", hb.getVmlType()));
		crit.add(Restrictions.eq("client_id", clientId));
		List<VmlType> vt=crit.list();
		if(vt.isEmpty())
			return null;
		vml.getId().setVmlTypeId(vt.get(0).getId().getVmlTypeId());
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
	public void setVmlType(String vmlType) {
		this.vmlType = vmlType;
	}
	public String getVmlType() {
		return vmlType;
	}
	
}
