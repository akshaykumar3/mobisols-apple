/******************************************************************************
 * VehicleDetails
 * 
 * This class represents response sent to the client for 
 * Vehicle Data. This will contain data for the client to display all
 * required information to the user.
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Raghukumar		07-JUNE-2011				   Mockwebservice
 * 
 *
 */
package com.mobisols.tollpayments.mockwebservices;

import java.util.Date;

import javax.ws.rs.DELETE;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/VehicleDetails")
public class VehicleDetails {
	private String registration;
	private String State;
	private String type;
	private String isActive;
	private Date startDate;
	private Date endDate;
	
	public VehicleDetails(){
		
	}
	
	public VehicleDetails(String user,String vehicle_id){
		//TODO update details using Hibernate
		this.setIsActive("true");
		this.setRegistration("1234");
		this.setState("California");
		this.setType("type1");
		this.setStartDate(new Date());
		this.setEndDate(new Date());
	}
	
	@POST
	public String postVehicleDetails(@QueryParam("json") String json,@QueryParam("username") String user){
		JsonConverter c=new JsonConverter();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponse(); 
		response.setDescription("your vehicles details have been updated successfully");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
	
	@DELETE
	public String deleteVechileDetails(@QueryParam("json") String json,@QueryParam("username") String user){
		JsonConverter c=new JsonConverter();
		VehicleDetails vd=(VehicleDetails)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.VehicleDetails");
		//TODO delete data using Hibernate
		GeneralResponse response =new GeneralResponse();
		response.setDescription("your vechicle details have been successfully updated");
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
