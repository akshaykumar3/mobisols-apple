package com.mobisols.tollpayments.serviceImpl;



import javax.annotation.security.RolesAllowed;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.HttpHeaders;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.myutilsImpl.MyUtilContextImpl;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.request.get.TollRange;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.AccountDetailsService;
import com.mobisols.tollpayments.service.AddBalanceService;
import com.mobisols.tollpayments.service.BalanceInfoService;
import com.mobisols.tollpayments.service.CcTypeListService;
import com.mobisols.tollpayments.service.ClientConfigurationService;
import com.mobisols.tollpayments.service.DeviceRegistrationService;
import com.mobisols.tollpayments.service.HeartBeatService;
import com.mobisols.tollpayments.service.LoginService;
import com.mobisols.tollpayments.service.NearestTollService;
import com.mobisols.tollpayments.service.OwnerTypeListService;
import com.mobisols.tollpayments.service.PaymentDetailsService;
import com.mobisols.tollpayments.service.PeriodicHeartBeatService;
import com.mobisols.tollpayments.service.RegistrationService;
import com.mobisols.tollpayments.service.ServicePlanService;
import com.mobisols.tollpayments.service.TollDetailsListService;
import com.mobisols.tollpayments.service.VehicleDetailsService;
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
	BalanceInfoService balanceInfoService;
	TollDetailsListService tollDetailsService;
	ServicePlanService servicePlanService;
	PeriodicHeartBeatService periodicHeartBeatService;
	HeartBeatService heartBeatService;
	NearestTollService nearestTollService;
	PaymentDetailsService paymentDetailsService;
	ClientConfigurationService clientConfigurationService;
	VehicleDetailsService vehicleDetailsService;
	RegistrationService registrationService;
	DeviceRegistrationService deviceRegistrationService;
	LoginService loginService;
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
	        ccTypeListService = (CcTypeListService) ctx.getBean("service.tollpayments.ccTypeListService");
	        ownerTypeListService = (OwnerTypeListService) ctx.getBean("service.tollpayments.ownerTypeListService");
	        vmlTypeListService = (VmlTypeListService) ctx.getBean("service.tollpayments.vmlTypeListService");
	        balanceInfoService=(BalanceInfoService) ctx.getBean("service.tollpayments.balanceInfoService");
	        tollDetailsService=(TollDetailsListService) ctx.getBean("service.tollpayments.tollDetailsListService");
	        servicePlanService=(ServicePlanService) ctx.getBean("service.tollpayments.servicePlanService");
	        periodicHeartBeatService = (PeriodicHeartBeatService) ctx.getBean("service.tollpayments.periodicHeartBeatService");
	        heartBeatService = (HeartBeatService) ctx.getBean("service.tollpayments.heartBeatService");
	        nearestTollService= (NearestTollService) ctx.getBean("service.tollpayments.nearestTollService");
	        paymentDetailsService = (PaymentDetailsService) ctx.getBean("service.tollpayments.paymentDetailsService");
	        clientConfigurationService=(ClientConfigurationService) ctx.getBean("service.tollpayments.clientConfigurationService");
	        vehicleDetailsService = (VehicleDetailsService) ctx.getBean("service.tollpayments.vehicleDetailsService");
	        registrationService = (RegistrationService) ctx.getBean("service.tollpayments.registrationService");
	        deviceRegistrationService = (DeviceRegistrationService) ctx.getBean("service.tollpayments.deviceRegistrationService");
	        loginService = (LoginService) ctx.getBean("service.tollpayments.loginService");
	}

	@GET
	@Produces("text/plain")
	@Path("/AccountDetails")
	//@RolesAllowed("user")
	public String getAccountDetailsResponse(@Context HttpHeaders httpHeader){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
		String username=MyUtilContextImpl.getUserName(httpHeader);
		System.out.println("This is read from headers username:  "+username);
		return jsonConverter.getJSON(request, status, accountDetailsService.getAccountDetailsResponse(username));
	}
	
	
	@GET
	@Produces("text/plain")
	@Path("/private/BalanceDetails")
	@RolesAllowed("user")
	public String getBalanceDetails(@QueryParam("json") String json){
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
			return null;

	}
	
	@GET
	@Produces("text/plain")
	@Path("/VehicleTypeList")
	//@RolesAllowed("user")
	public String getVehicleTypesList()
	{
		String request="";
		String status="";
		VehicleTypeListResponse vr=vehicleTypeListService.getVehicleTypeList();
		return jsonConverter.getJSON(request, status, vr);
	}

	@POST
	@Produces("text/plain")
	@Path("/private/AddBalance")
	@RolesAllowed("user")
	public String postAddBalance(@FormParam("json")String json,@Context HttpHeaders httpHeader)
	{
		String request = "RETRIEVE ACC_DETAILS";
		String status =null;
		String username=MyUtilContextImpl.getUserName(httpHeader);
		AddBalanceRequest ar= (AddBalanceRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.AddBalanceRequest");
		return jsonConverter.getJSON(request, status, addBalanceService.postaddBalanceResponse(ar,username));
	}
	
	@GET
	@Produces("text/plain")
	@Path("/CcTypeList")
	//@RolesAllowed("user")
	public String getCcTypeList()
	{
		String request="get CCTypeList";
		String status=null;
		return jsonConverter.getJSON(request,status,ccTypeListService.getCcTypeList());
	}
	
	@GET
	@Produces("text/plain")
	@Path("/OwnerTypeList")
	//@RolesAllowed("user")
	public String getOwnerTypeList()
	{
		String request="get OwnerTypeList";
		String status=null;
		return jsonConverter.getJSON(request,status,ownerTypeListService.getOwnerTypeList());
	}
	
	@GET
	@Produces("text/plain")
	@Path("/VmlTypeList")
	//@RolesAllowed("user")
	public String getVMLTypeList()
	{
		String request="get VMLTypeList";
		String status=null;
		return jsonConverter.getJSON(request,status,vmlTypeListService.getVmlTypeList());
	}
	
	@GET
	@Produces("text/plain")
	@Path("/private/BalanceInfo")
	@RolesAllowed("user")
	public String getBalanceInfo(@Context HttpHeaders httpHeader)
	{
		String request="get BlanceInfo";
		String status=null;
		String username=MyUtilContextImpl.getUserName(httpHeader);
		return jsonConverter.getJSON(request,status,balanceInfoService.getBalanceInfo(username));
	}
	
	@GET
	@Produces("text/plain")
	@Path("/TollDetailsList")
	//@RolesAllowed("user")
	public String getTollDetailsList(@QueryParam("json") String json)
	{
		String request="get BlanceInfo";
		String status=null;
		TollRange tr=(TollRange) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.get.TollRange");
		if(tr==null)
			return jsonConverter.getJSON(request,status,tollDetailsService.getTollLocations());
		else
			return jsonConverter.getJSON(request, status, tollDetailsService.getTollLocations(tr.getLatitude1(),
					tr.getLongitude1(), tr.getLatitude2(), tr.getLongitude2()));
	}
	
	@GET
	@Produces("text/plain")
	@Path("/ServicePlansList")
	//@RolesAllowed("user")
	public String getServicePlans()
	{
		String request="get Service Plans List";
		String status="success";
		return jsonConverter.getJSON(request, status,servicePlanService.getServiceList() );
	}
	
	@POST
	@Produces("text/plain")
	@Path("/PeriodicHeartBeat")
	//@RolesAllowed("user")
	public String postPeriodicHeartBeat(@FormParam("json") String json)
	{
		String request="post periodic heartbeat";
		String status="success";
		HeartBeatRequest hbr=(HeartBeatRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatRequest");
		return jsonConverter.getJSON(request, status,periodicHeartBeatService.saveHeartBeat(hbr) );
	}
	
	@POST
	@Produces("text/plain")
	@Path("/HeartBeat")
	//@RolesAllowed("user")
	public String postHeartBeat(@FormParam("json") String json)
	{
		String request="post heartbeat";
		String status="success";
		HeartBeatRequest hbr=(HeartBeatRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatRequest");
		return jsonConverter.getJSON(request, status,heartBeatService.saveHeartBeat(hbr) );
	}
	
	@GET
	@Produces("text/plain")
	@Path("/NearestToll")
	//@RolesAllowed("user")
	public String getNearestToll(@QueryParam("json") String json)
	{
		String request="post heartbeat";
		String status="success";
		Location l=(Location) jsonConverter.getObject(json, "com.mobisols.tollpayments.myutilsImpl.Location");
		return jsonConverter.getJSON(request, status,nearestTollService.getNearestToll(l.getLatitude(), l.getLongitude()) );
	}
	
	@POST
	@Produces("text/plain")
	@Path("/PaymentDetails")
	//@RolesAllowed("user")
	public String postPaymentDetails(@FormParam("json") String json,@Context HttpHeaders httpHeader)
	{
		String request="update paymentDetails";
		String status="success";
		String username=MyUtilContextImpl.getUserName(httpHeader);
		PaymentDetailRequest pd=(PaymentDetailRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.PaymentDetailRequest");
		return jsonConverter.getJSON(request, status,paymentDetailsService.update(pd, username));
	}
	
	@GET
	@Produces("text/plain")
	@Path("/ClientConfiguration")
	//@RolesAllowed("user")
	public String getClientConfiguration(@QueryParam("json") String json)
	{
		String request="get ClientConfiguration";
		String status="success";
		ClientConfigurationRequest r= (ClientConfigurationRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.get.ClientConfigurationRequest");
		return jsonConverter.getJSON(request, status,clientConfigurationService.getClientConfig(r));
	}
	
	@POST
	@Produces("text/plain")
	@Path("/VehicleDetails")
	//@RolesAllowed("user")
	public String postVehicleDetails(@FormParam("json") String json,@FormParam("is_new_vehicle") String isNewVehicle,@Context HttpHeaders httpHeader)
	{
		System.out.println(isNewVehicle);
		String request="post vehicleDetails";
		String status="success";
		String username=MyUtilContextImpl.getUserName(httpHeader);
		VehicleDetailsRequest r= (VehicleDetailsRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.VehicleDetailsRequest");
		if(r==null)
			System.out.println("request is null");
		return jsonConverter.getJSON(request, status,vehicleDetailsService.postVehicleDetails(r, username, isNewVehicle));
	}
	
	@DELETE
	@Produces("text/plain")
	@Path("/VehicleDetails")
	//@RolesAllowed("user")
	public String deleteVehicleDetails(@FormParam("json") String json,@FormParam("is_new_vehicle") String isNewVehicle,@Context HttpHeaders httpHeader)
	{
		String request="post vehicleDetails";
		String status="success";
		String username=MyUtilContextImpl.getUserName(httpHeader);
		VehicleDetailsRequest r= (VehicleDetailsRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.VehicleDetailsRequest");
		return jsonConverter.getJSON(request, status,vehicleDetailsService.deleteVehicle(r, username));
	}
	
	@POST
	@Produces("text/plain")
	@Path("/UserRegistration")
	public String registerUser(@FormParam("json") String json)
	{
		String request="register user";
		String status="success";
		RegistrationServiceRequest request1= (RegistrationServiceRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.RegistrationServiceRequest");
		return jsonConverter.getJSON(request, status,registrationService.createUser(request1));
	}
	
	@POST
	@Produces("text/plain")
	@Path("/DeviceRegistration")
	public String registerDevice(@FormParam("json") String json,@Context HttpServletRequest servletRequest)
	{
		String request="register device";
		String status="success";
		//System.out.println(servletRequest.getRemoteAddr());
		DeviceRegistrationRequest request1=  (DeviceRegistrationRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.DeviceRegistrationRequest");
		return jsonConverter.getJSON(request, status,deviceRegistrationService.registerDevice(request1,servletRequest.getRemoteAddr()));
	}

	@POST
	@Produces("text/plain")
	@Path("/Login")
	public String loginUser(@FormParam("json") String json)
	{
		String request="post vehicleDetails";
		String status="success";
		LoginRequest request1=  (LoginRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.LoginRequest");
		return jsonConverter.getJSON(request, status,loginService.login(request1));
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
	
	public OwnerTypeListService getOwnerTypeListService() {
		return ownerTypeListService;
	}

	public void setOwnerTypeListService(OwnerTypeListService ownerTypeListService) {
		this.ownerTypeListService = ownerTypeListService;
	}
	
	public VmlTypeListService getVmlTypeListService() {
		return vmlTypeListService;
	}

	public void setVmlTypeListService(VmlTypeListService vmlTypeListService) {
		this.vmlTypeListService = vmlTypeListService;
	}
	
	public BalanceInfoService getBalanceInfoService() {
		return balanceInfoService;
	}

	public void setBalanceInfoService(BalanceInfoService balanceInfo) {
		this.balanceInfoService = balanceInfo;
	}
	public TollDetailsListService getTollDetailsService() {
		return tollDetailsService;
	}

	public void setTollDetailsService(TollDetailsListService tollDetailsService) {
		this.tollDetailsService = tollDetailsService;
	}
	public ServicePlanService getServicePlanService() {
		return servicePlanService;
	}

	public void setServicePlanService(ServicePlanService servicePlanService) {
		this.servicePlanService = servicePlanService;
	}

	public PeriodicHeartBeatService getPeriodicHeartBeatService() {
		return periodicHeartBeatService;
	}

	public void setPeriodicHeartBeatService(
			PeriodicHeartBeatService periodicHeartBeatService) {
		this.periodicHeartBeatService = periodicHeartBeatService;
	}

	public HeartBeatService getHeartBeatService() {
		return heartBeatService;
	}

	public void setHeartBeatService(HeartBeatService heartBeatService) {
		this.heartBeatService = heartBeatService;
	}

	public NearestTollService getNearestTollService() {
		return nearestTollService;
	}

	public void setNearestTollService(NearestTollService nearestTollService) {
		this.nearestTollService = nearestTollService;
	}

	public PaymentDetailsService getPaymentDetailsService() {
		return paymentDetailsService;
	}

	public void setPaymentDetailsService(PaymentDetailsService paymentDetailsService) {
		this.paymentDetailsService = paymentDetailsService;
	}

	public ClientConfigurationService getClientConfigurationService() {
		return clientConfigurationService;
	}

	public void setClientConfigurationService(
			ClientConfigurationService clientConfigurationService) {
		this.clientConfigurationService = clientConfigurationService;
	}

	public VehicleDetailsService getVehicleDetailsService() {
		return vehicleDetailsService;
	}

	public void setVehicleDetailsService(VehicleDetailsService vehicleDetailsService) {
		this.vehicleDetailsService = vehicleDetailsService;
	}

	public RegistrationService getRegistrationService() {
		return registrationService;
	}

	public void setRegistrationService(RegistrationService registrationService) {
		this.registrationService = registrationService;
	}

	public DeviceRegistrationService getDeviceRegistrationService() {
		return deviceRegistrationService;
	}

	public void setDeviceRegistrationService(
			DeviceRegistrationService deviceRegistrationService) {
		this.deviceRegistrationService = deviceRegistrationService;
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

}

