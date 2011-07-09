package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserVehicleHistory;
import com.mobisols.tollpayments.hibernate.entity.VehicleMovementLog;
import com.mobisols.tollpayments.myutils.MyUtils;

@Path("/PeriodicHeartBeat")
public class PeriodicHeartBeatImpl implements PeriodicHeartBeat {
	
	private double latitude;
	private double longitude;
	private Date timeStamp;
	
	public PeriodicHeartBeatImpl(){
		
	}

	@POST
	public String postPeriodicHeartBeat(@FormParam("json") String json,@FormParam("user_name")String user){
		JsonConverter jc=new JsonConverterImpl();
		MyUtils mu=new MyUtils();
		PeriodicHeartBeat phb = (PeriodicHeartBeat) jc.getObject(json, "com.mobisols.tollpayments.PeriodicHeartBeatImpl");
		HeartBeatResponse hbr=new HeartBeatResponseImpl();
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		s.beginTransaction();
		VehicleMovementLog vml=new VehicleMovementLog();
		vml.setClientId(1);
		vml.setCreatedOn(mu.getCurrentTimeStamp());
		vml.setLastModifiedBy(u.get(0).getUserId());
		vml.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		vml.setLatitude(phb.getLatitude());
		vml.setLongitude(phb.getLongitude());
		vml.setStatus("n");
		vml.setTimestamp(mu.toTimeStamp(mu.toString(timeStamp)));
		vml.setTollLocationId(-1);
		String query="";
		Query q=s.createQuery(query);
		vml.setUvhId(((UserVehicleHistory)q.list().get(0)).getUvhId());
		vml.setVmlTypeId(1);
		hbr.getHash().put("notificationId", "1");
		hbr.getHash().put("notification", "This notification is sent from periodic heart beat");
		String request="";
		String status="";
		String response=jc.getJSON(request, status, hbr);
		HibernateSessionFactory.closeSession();
		return response;
	}
	
	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public Date getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}

}
