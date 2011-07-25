package com.mobisols.tollpayments.serviceImpl;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.AccountDetailsService;
import com.mobisols.tollpayments.service.AddBalanceService;
import com.mobisols.tollpayments.service.GeneralService;
import com.mobisols.tollpayments.service.VehicleTypeListService;


@Path("/services")
public class WebServiceImpl {

	AccountDetailsService accountDetailsService;
	AddBalanceService addBalanceService;
	VehicleTypeListService vehicleTypeListService;
	JsonConverter jsonConverter;
	
	
	public WebServiceImpl() {
		 String[] paths = {
	                "/spring/spring.xml", "/spring/dao.xml",
	                "/spring/myutils.xml"
	            };
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        accountDetailsService = (AccountDetailsService) ctx.getBean("service.tollpayments.accountDetailsService");
	        addBalanceService=(AddBalanceService)ctx.getBean("service.tollpayments.addBalanceService");
	        vehicleTypeListService= (VehicleTypeListService) ctx.getBean("service.tollpayments.vehicleTypeListService");
	        jsonConverter=(JsonConverter) ctx.getBean("myutils.tollpayments.jsonConverter");
	}

	@GET
	@Produces("text/plain")
	@Path("/AccountDetails")
	public String getAccountDetailsResponse(@QueryParam("user_name") String username){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
		return jsonConverter.getJSON(request, status, accountDetailsService.getAccountDetailsResponse(username));
	}
	
	
	// SAmple to implement the second method in the same service.
	
	@GET
	@Produces("text/plain")
	@Path("/BalanceDetails")
	public String getBalanceDetails(@QueryParam("json") String json){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
			return null;

	}
	
	@GET
	@Produces("text/plain")
	@Path("/VehicleTypesList")
	public String getVehicleTypesList()
	{
		String request="";
		String status="";
		VehicleTypeListResponse vr=vehicleTypeListService.getVehicleTypeList();
		return jsonConverter.getJSON(request, status, vr);
	}

	@POST
	@Produces("text/plain")
	@Path("/AddBalance")
	public String postAddBalance(@QueryParam("json")String json,@QueryParam("username")String username)
	{
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
		AddBalanceRequest ar= (AddBalanceRequest) jsonConverter.getObject(json, "import com.mobisols.tollpayments.request.post.AddBalanceRequest");
		return jsonConverter.getJSON(request, status, addBalanceService.postaddBalanceResponse(ar,username));
	}
}

