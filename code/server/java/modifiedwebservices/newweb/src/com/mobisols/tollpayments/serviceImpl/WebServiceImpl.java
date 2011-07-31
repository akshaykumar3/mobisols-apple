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
import com.mobisols.tollpayments.response.get.CcTypeListResponse;
import com.mobisols.tollpayments.response.get.OwnerTypeListResponse;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.response.get.VmlTypeListResponse;
import com.mobisols.tollpayments.service.AccountDetailsService;
import com.mobisols.tollpayments.service.AddBalanceService;
import com.mobisols.tollpayments.service.CcTypeListService;
import com.mobisols.tollpayments.service.GeneralService;
import com.mobisols.tollpayments.service.OwnerTypeListService;
import com.mobisols.tollpayments.service.VehicleTypeListService;
import com.mobisols.tollpayments.service.VmlTypeListService;


@Path("/services")
public class WebServiceImpl {

	AccountDetailsService accountDetailsService;
	AddBalanceService addBalanceService;
	VehicleTypeListService vehicleTypeListService;
	CcTypeListService ccTypeListService;
	OwnerTypeListService ownerTypeListService;
	VmlTypeListService vmlTypeListService;
	JsonConverter jsonConverter;
	
	
	public WebServiceImpl() {
		 String[] paths = {
	                "/spring/spring.xml", "/spring/dao.xml",
	                "/spring/myutils.xml"
	            };
	        ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
	        accountDetailsService = (AccountDetailsService) ctx.getBean("service.tollpayments.accountDetailsService");
	        //addBalanceService=(AddBalanceService)ctx.getBean("service.tollpayments.addBalanceService");
	        vehicleTypeListService= (VehicleTypeListService) ctx.getBean("service.tollpayments.vehicleTypeListService");
	        ccTypeListService= (CcTypeListService) ctx.getBean("service.tollpayments,ccTypeListService");
	        ownerTypeListService= (OwnerTypeListService) ctx.getBean("service.tollpayments.ownerTypeListService");
	        vmlTypeListService= (VmlTypeListService) ctx.getBean("service.tollpayments.vmlTypeListService");
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
	
	@GET
	@Produces("text/plain")
	@Path("/CcTypesList")
	public String getCcTypesList()
	{
		String request="";
		String status="";
		CcTypeListResponse cr=ccTypeListService.getCcTypeList();
		return jsonConverter.getJSON(request, status, cr);
	}
	
	@GET
	@Produces("text/plain")
	@Path("/OwnerTypesList")
	public String getOwnerTypesList()
	{
		String request="";
		String status="";
		OwnerTypeListResponse cr=ownerTypeListService.getOwnerTypeList();
		return jsonConverter.getJSON(request, status, cr);
	}
	
	@GET
	@Produces("text/plain")
	@Path("/VmlTypesList")
	public String getVmlTypesList()
	{
		String request="";
		String status="";
		VmlTypeListResponse cr=vmlTypeListService.getVmlTypeList();
		return jsonConverter.getJSON(request, status, cr);
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

	public VehicleTypeListService getVehicleTypeListService() {
		return vehicleTypeListService;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

	public void setVehicleTypeListService(
			VehicleTypeListService vehicleTypeListService) {
		this.vehicleTypeListService = vehicleTypeListService;
	}

	public AccountDetailsService getAccountDetailsService() {
		return accountDetailsService;
	}

	public void setAccountDetailsService(AccountDetailsService accountDetailsService) {
		this.accountDetailsService = accountDetailsService;
	}

	public AddBalanceService getAddBalanceService() {
		return addBalanceService;
	}

	public void setAddBalanceService(AddBalanceService addBalanceService) {
		this.addBalanceService = addBalanceService;
	}

	public CcTypeListService getCcTypeListService() {
		return ccTypeListService;
	}

	public void setCcTypeListService(CcTypeListService ccTypeListService) {
		this.ccTypeListService = ccTypeListService;
	}
}

