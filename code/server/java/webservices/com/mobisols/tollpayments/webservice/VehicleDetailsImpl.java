package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.DELETE;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserVehicleId;
import com.mobisols.tollpayments.hibernate.VehicleTypeId;

@Path("/VehicleDetails")
public class VehicleDetailsImpl implements VehicleDetails{

	private String registration;
	private String State;
	private String type;
	private String isActive;
	private Date startDate;
	private Date endDate;
	
	public VehicleDetailsImpl(){
		
	}
	
	public VehicleDetailsImpl(int userVehicleId){
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserVehicleId.class);
		crit.add(Restrictions.eq("user_vehicle_id", userVehicleId));
		List<UserVehicleId> uv=crit.list();
		if(uv.isEmpty())
			return;
		this.setIsActive(uv.get(0).getIsActive());
		this.setRegistration(uv.get(0).getRegistrationNo());
		this.setState(uv.get(0).getRegisteredState());
		List<VehicleTypeId> vt=s.createCriteria(VehicleTypeId.class).list();
		this.setType(vt.get(0).getDescription());
		this.setStartDate(uv.get(0).getVehicleStartDate());
		this.setEndDate(uv.get(0).getVehicleEndDate());
		s.close();
	}
	
	@POST
	public String postVehicleDetails(@QueryParam("json") String json,@QueryParam("username") String user){
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponseImpl(); 
		((GeneralResponseImpl) response).setDescription("your vehicles details have been updated successfully");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
	
	@DELETE
	public String deleteVechileDetails(@QueryParam("json") String json,@QueryParam("username") String user){
		JsonConverter c=new JsonConverterImpl();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		//TODO delete data using Hibernate
		GeneralResponse response =new GeneralResponseImpl();
		((GeneralResponseImpl) response).setDescription("your vechicle details have been successfully updated");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
	
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
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
}
