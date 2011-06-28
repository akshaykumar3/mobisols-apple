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
		crit.add(Restrictions.eq("user_vehicle_id", userVehicleId));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return;
		this.setIsActive(uv.get(0).getId().getIsActive());
		this.setRegistration(uv.get(0).getId().getRegistrationNo());
		this.setState(uv.get(0).getId().getRegisteredState());
		crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("vehicle_type_id", uv.get(0).getId().getVehicleTypeId()));
		List<VehicleType> vt=crit.list();
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("owner_type_id", uv.get(0).getId().getOwnerTypeId()));
		List<OwnerType> ot=crit.list();
		this.setOwnerType(ot.get(0).getId().getName());
		this.setType(vt.get(0).getId().getName());
		this.setStartDate(uv.get(0).getId().getVehicleStartDate());
		this.setEndDate(uv.get(0).getId().getVehicleEndDate());
		this.setVehicleId(uv.get(0).getId().getUserVehicleId());
	}
	
	
	@PUT
	public String putVehicleDetails(@FormParam("json") String json,@FormParam("user_name") String user,
			@FormParam("client_id")int clientId,@FormParam("is_new_vehicle")String isNewVehicle,
			@FormParam("has_id")int hasId)
	{
		if(isNewVehicle=="false")
			return postVehicleDetails(json, user, clientId, isNewVehicle,hasId);
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		GeneralResponse response=new GeneralResponseImpl();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id", clientId));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		UserVehicle vehicle=new UserVehicle();
		vehicle.getId().setClientId(clientId);
		vehicle.getId().setUserId(u.get(0).getId().getUserId());
		vehicle.getId().setClientId(clientId);
		vehicle.getId().setCreatedOn(new MyUtils().getCurrentTimeStamp());
		vehicle.getId().setIsActive(vd.getIsActive());
		vehicle.getId().setLastModifiedBy(u.get(0).getId().getUserId());
		vehicle.getId().setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("name",vd.getOwnerType()));
		crit.add(Restrictions.eq("client_id", clientId));
		List<OwnerType> ot=crit.list();
		if(ot.isEmpty())
			return null;
		vehicle.getId().setOwnerTypeId(ot.get(0).getId().getOwnerTypeId());
		vehicle.getId().setRegisteredState(vd.getState());
		vehicle.getId().setRegistrationNo(vd.getRegistration());
		vehicle.getId().setVehicleEndDate(new Timestamp(vd.getEndDate().getTime()));
		vehicle.getId().setVehicleStartDate(new Timestamp(vd.getStartDate().getTime()));
		crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("name",vd.getType()));
		crit.add(Restrictions.eq("client_id", clientId));
		List<VehicleType> vt=crit.list();
		if(vt.isEmpty())
			return null;
		vehicle.getId().setVehicleTypeId(vt.get(0).getId().getVehicleTypeId());
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
			@FormParam("clientid")int clientId,@FormParam("is_new_vehicle")String isNewVehicle,@FormParam("has_id")int hasId){
		if(isNewVehicle=="true")
			return putVehicleDetails(json, user, clientId, isNewVehicle,hasId);
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		Transaction tx=s.beginTransaction();
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id", clientId));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("user_id", u.get(0).getId().getUserId()));
		crit.add(Restrictions.eq("registration_no", vd.getRegistration()));
		crit.add(Restrictions.eq("state", vd.getState()));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return null;
		UserVehicle vehicle=(UserVehicle) s.get(UserVehicle.class, uv.get(0).getId().getUserVehicleId());
		vehicle.getId().setIsActive(vd.getIsActive());
		vehicle.getId().setVehicleStartDate(new Timestamp(vd.getStartDate().getTime()));
		vehicle.getId().setVehicleEndDate(new Timestamp(vd.getEndDate().getTime()));
		crit=s.createCriteria(OwnerType.class);
		crit.add(Restrictions.eq("name",vd.getOwnerType()));
		crit.add(Restrictions.eq("client_id", clientId));
		List<OwnerType> ot=crit.list();
		if(ot.isEmpty())
			return null;
		vehicle.getId().setOwnerTypeId(ot.get(0).getId().getOwnerTypeId());
		vehicle.getId().setLastModifiedBy(u.get(0).getId().getUserId());
		vehicle.getId().setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
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
			,@FormParam("client_id")int clientId,@FormParam("has_id")int hasId){
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		GeneralResponse response =new GeneralResponseImpl();
		
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id",clientId));
		List<User> u=crit.list();
		if(u.isEmpty())
			return null;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("user_id", u.get(0).getId().getUserId()));
		crit.add(Restrictions.eq("resgistration_no",vd.getRegistration()));
		crit.add(Restrictions.eq("registered_state", vd.getState()));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return null;
		String hql="delete from UserVehicle user_vehicle where user_vehicle_id="+uv.get(0).getId().getUserVehicleId();
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
