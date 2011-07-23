package com.mobisols.tollpayments.serviceImpl;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.GeneralService;
import com.mobisols.tollpayments.service.VehicleTypeListService;


@Path("/services")
public class WebServiceImpl {

	GeneralService accountDetailsService;
	VehicleTypeListService vehicleTypeListService;
	JsonConverter jsonConverter;
	public WebServiceImpl() {
		 String[] paths = {
	                "/spring/service.xml", "/spring/dao.xml",
	                "/spring/hibernate.xml","/spring/myutils.xml"
	            };
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        accountDetailsService = (GeneralService) ctx.getBean("service.tolls.accountDetailsService");
	        vehicleTypeListService= (VehicleTypeListService) ctx.getBean("service.tollpayments.vehicleTypeListService");
	        jsonConverter=(JsonConverter) ctx.getBean("myutils.tollpayments.jsonConverter");
	}

	@GET
	@Produces("text/plain")
	@Path("/getAccountDetails")
	public String getAccountDetailsResponse(@QueryParam("json") String json){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
		String response=null;
		return response;
	}
	
	
	// SAmple to implement the second method in the same service.
	
	@GET
	@Produces("text/plain")
	 @Path("/getBalanceDetails")
	public String getBalanceDetails(@QueryParam("json") String json){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
			return null;

	}
	
	@GET
	@Produces("text.plain")
	@Path("/getVehicleTypesList")
	public String getVehicleTypesList()
	{
		String request="";
		String status="";
		VehicleTypeListResponse vr=vehicleTypeListService.getVehicleTypeList();
		return jsonConverter.getJSON(request, status, vr);
	}
		
	

}

