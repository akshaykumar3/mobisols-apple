package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.OwnerType;
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserVehicle;
import com.mobisols.tollpayments.hibernate.VehicleType;
import com.mobisols.tollpayments.myutils.MyUtils;

@Path("/VehicleDetails")
public class VehicleDetailsImpl implements VehicleDetails{

	private String registration;
	private String state;
	private String type;
	private String isActive;
	private Date startDate;
	private Date endDate;
	private String ownerType;
	private int vehicleId;
	
	
	public VehicleDetailsImpl(int userVehicleId){
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userVehicleId", userVehicleId));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return;
		this.setIsActive(uv.get(0).getIsActive());
		this.setRegistration(uv.get(0).getRegistrationNo());
		this.setState(uv.get(0).getRegisteredState());
		crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("vehicleTypeId", uv.get(0).getVehicleTypeId()));
		List<VehicleType> vt=crit.list();
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("ownerTypeId", uv.get(0).getOwnerTypeId()));
		List<OwnerType> ot=crit.list();
		this.setOwnerType(ot.get(0).getName());
		this.setType(vt.get(0).getName());
		this.setStartDate(uv.get(0).getVehicleStartDate());
		this.setEndDate(uv.get(0).getVehicleEndDate());
		this.setVehicleId(uv.get(0).getUserVehicleId());
	}
	
	
	@PUT
	public String putVehicleDetails(@FormParam("json") String json,@FormParam("user_name") String user,
			@FormParam("is_new_vehicle")String isNewVehicle,
			@FormParam("has_id")int hasId)
	{
		if(isNewVehicle=="false")
			return postVehicleDetails(json, user, isNewVehicle,hasId);
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		GeneralResponse response=new GeneralResponseImpl();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		UserVehicle vehicle=new UserVehicle();
		//TODO
		vehicle.setClientId(1);
		vehicle.setUserId(u.get(0).getUserId());
		vehicle.setCreatedOn(new MyUtils().getCurrentTimeStamp());
		vehicle.setIsActive(vd.getIsActive());
		vehicle.setLastModifiedBy(u.get(0).getUserId());
		vehicle.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("name",vd.getOwnerType()));
		List<OwnerType> ot=crit.list();
		if(ot.isEmpty())
			return null;
		vehicle.setOwnerTypeId(ot.get(0).getOwnerTypeId());
		vehicle.setRegisteredState(vd.getState());
		vehicle.setRegistrationNo(vd.getRegistration());
		vehicle.setVehicleEndDate(new Timestamp(vd.getEndDate().getTime()));
		vehicle.setVehicleStartDate(new Timestamp(vd.getStartDate().getTime()));
		crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("name",vd.getType()));
		List<VehicleType> vt=crit.list();
		if(vt.isEmpty())
			return null;
		vehicle.setVehicleTypeId(vt.get(0).getVehicleTypeId());
		s.save(vehicle);
		tx.commit();
		((GeneralResponseImpl) response).setDescription("your vehicles details have been updated successfully");
		String status="";
		String request="";
		String res = c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
	@POST
	public String postVehicleDetails(@FormParam("json") String json,@FormParam("username") String user,
			@FormParam("is_new_vehicle")String isNewVehicle,@FormParam("has_id")int hasId){
		if(isNewVehicle=="true")
			return putVehicleDetails(json, user, isNewVehicle,hasId);
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		Transaction tx=s.beginTransaction();
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userId", u.get(0).getUserId()));
		crit.add(Restrictions.eq("registrationNo", vd.getRegistration()));
		crit.add(Restrictions.eq("state", vd.getState()));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return null;
		UserVehicle vehicle=(UserVehicle) s.get(UserVehicle.class, uv.get(0).getUserVehicleId());
		vehicle.setIsActive(vd.getIsActive());
		vehicle.setVehicleStartDate(new Timestamp(vd.getStartDate().getTime()));
		vehicle.setVehicleEndDate(new Timestamp(vd.getEndDate().getTime()));
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("name",vd.getOwnerType()));
		List<OwnerType> ot=crit.list();
		if(ot.isEmpty())
			return null;
		vehicle.setOwnerTypeId(ot.get(0).getOwnerTypeId());
		vehicle.setLastModifiedBy(u.get(0).getUserId());
		vehicle.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		GeneralResponse response =new GeneralResponseImpl();
		s.save(vehicle);
		tx.commit();
		((GeneralResponseImpl) response).setDescription("your vehicles details have been updated successfully");
		String status="";
		String request="";
		String res = c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	@DELETE
	public String deleteVechileDetails(@FormParam("json") String json,@FormParam("user_name") String user
			,@FormParam("has_id")int hasId){
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		GeneralResponse response =new GeneralResponseImpl();
		
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userId", u.get(0).getUserId()));
		crit.add(Restrictions.eq("resgistrationNo",vd.getRegistration()));
		crit.add(Restrictions.eq("registeredState", vd.getState()));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return null;
		String hql="delete from UserVehicle user_vehicle where user_vehicle_id="+uv.get(0).getUserVehicleId();
		Query q=s.createQuery(hql);
		int row=q.executeUpdate();
		if(row==0)
		{
			response.setDescription("There was a problem in deleting youir vehicle details");
		}
		else if(row==1)
		{
			response.setDescription("Your vehicle details have been deleted success fully");
		}
		else
		{
			response.setDescription("More than one vehicle details deleted");
		}
		//TODO update general response details
		String status="";
		String request="";
		String res= c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getOwnerType() {
		return ownerType;
	}

	public void setOwnerType(String ownerType) {
		this.ownerType = ownerType;
	}
	public int getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	public VehicleDetailsImpl(){
		
	}
}
