package com.mobisols.tollpayments.serviceImpl;


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
import com.mobisols.tollpayments.myutils.MyUtilCleanUp;
import com.mobisols.tollpayments.myutils.MyUtilErrorHandler;
import com.mobisols.tollpayments.myutils.SecurityCheckUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.myutilsImpl.MyUtilContextImpl;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.request.get.TollRange;
import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.request.post.HeartBeatRequest;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.service.AccountDetailsService;
import com.mobisols.tollpayments.service.ActivateService;
import com.mobisols.tollpayments.service.AddBalanceService;
import com.mobisols.tollpayments.service.BalanceInfoService;
import com.mobisols.tollpayments.service.CcTypeListService;
import com.mobisols.tollpayments.service.ChangePasswordService;
import com.mobisols.tollpayments.service.ClientConfigurationService;
import com.mobisols.tollpayments.service.DeviceRegistrationService;
import com.mobisols.tollpayments.service.ForgotPassword;
import com.mobisols.tollpayments.service.HeartBeatService;
import com.mobisols.tollpayments.service.LoginService;
import com.mobisols.tollpayments.service.MakeAndModelService;
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
	ChangePasswordService changePasswordService;
	MakeAndModelService makeAndModelService;
	ActivateService activateService;
	ForgotPassword forgotPassword;
	JsonConverter jsonConverter;
	
	SecurityCheckUtil securityCheckUtil;
	MyUtilErrorHandler myUtilErrorHandler;
	MyUtilCleanUp myUtilCleanUp;
	
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
	        changePasswordService = (ChangePasswordService) ctx.getBean("service.tollpayments.changePasswordService");
	        activateService = (ActivateService) ctx.getBean("service.tollpayments.activateService");
	        makeAndModelService = (MakeAndModelService) ctx.getBean("service.tollpayments.makeAndModelService");
	        forgotPassword = (ForgotPassword) ctx.getBean("service.tollpayments.forgotPassword");
	        securityCheckUtil = (SecurityCheckUtil) ctx.getBean("myutils.tollpayments.securityCheckUtil");
	        myUtilErrorHandler = (MyUtilErrorHandler) ctx.getBean("myutils.tollpayments.myUtilErrorHandler");
	        myUtilCleanUp = (MyUtilCleanUp) ctx.getBean("myutils.tollpayments.myUtilCleanUp");
	}

	@GET
	@Produces("text/plain")
	@Path("/secure/AccountDetails")
	public String getAccountDetailsResponse(@QueryParam("key") String securityKey,@Context HttpHeaders httpHeader){
		String request = "RETRIEVE ACC_DETAILS";
		try{
		
		String username=MyUtilContextImpl.getUserName(httpHeader);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return accountDetailsService.getAccountDetailsResponse(request,username);
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	
	@GET
	@Produces("text/plain")
	@Path("/secure/BalanceDetails")
	public String getBalanceDetails(@QueryParam("key") String securityKey,@QueryParam("json") String json){
		String request = "RETRIEVE ACC_DETAILS";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&&securityCheckUtil.isKeyCorrect(securityKey))
			return null;
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/VehicleTypeList")
	public String getVehicleTypesList(@QueryParam("key") String securityKey)
	{
		String request="";
		try{
		String vr=vehicleTypeListService.getVehicleTypeList(request);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return vr;
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}

	@POST
	@Produces("text/plain")
	@Path("/secure/AddBalance")
	public String postAddBalance(@FormParam("key") String securityKey,@FormParam("json")String json,@Context HttpHeaders httpHeader)
	{
		String request = "RETRIEVE ACC_DETAILS";
		try{
			String username=MyUtilContextImpl.getUserName(httpHeader);
		AddBalanceRequest ar= (AddBalanceRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.AddBalanceRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return addBalanceService.postaddBalanceResponse(request,ar,username);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/CcTypeList")
	public String getCcTypeList(@QueryParam("key") String securityKey)
	{
		String request="get CCTypeList";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return ccTypeListService.getCcTypeList(request);
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/OwnerTypeList")
	public String getOwnerTypeList(@QueryParam("key") String securityKey)
	{
		String request="get OwnerTypeList";
		try{
			if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return ownerTypeListService.getOwnerTypeList(request);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/VmlTypeList")
	public String getVMLTypeList(@QueryParam("key") String securityKey)
	{
		String request="get VMLTypeList";
		try{
			if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return vmlTypeListService.getVmlTypeList(request);
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/BalanceInfo")
	public String getBalanceInfo(@QueryParam("key") String securityKey,@Context HttpHeaders httpHeader)
	{
		String request="get BlanceInfo";
		try{
		String username=MyUtilContextImpl.getUserName(httpHeader);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return balanceInfoService.getBalanceInfo(request,username);
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/TollDetailsList")
	public String getTollDetailsList(@QueryParam("key") String securityKey,@QueryParam("json") String json)
	{
		String request="TollDetailsList";
		try{
		TollRange tr=(TollRange) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.get.TollRange");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
		{
		if(tr==null)
			return tollDetailsService.getTollLocations(request);
		else
			return  tollDetailsService.getTollLocations(request,tr.getLatitude1(),
				tr.getLongitude1(), tr.getLatitude2(), tr.getLongitude2());
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/ServicePlansList")
	public String getServicePlans(@QueryParam("key") String securityKey)
	{
		String request="get Service Plans List";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return servicePlanService.getServiceList(request);
		return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/PeriodicHeartBeat")
	public String postPeriodicHeartBeat(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="post periodic heartbeat";
		try{
		HeartBeatRequest hbr=(HeartBeatRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return periodicHeartBeatService.saveHeartBeat(request,hbr) ;
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/HeartBeat")
	public String postHeartBeat(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="post heartbeat";
		System.out.println(json);
		try{
		HeartBeatRequest hbr=(HeartBeatRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return heartBeatService.saveHeartBeat(request,hbr);
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/NearestToll")
	public String getNearestToll(@QueryParam("key") String securityKey,@QueryParam("json") String json)
	{
		String request="post heartbeat";
		try{
			Location l=(Location) jsonConverter.getObject(json, "com.mobisols.tollpayments.myutilsImpl.Location");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return nearestTollService.getNearestToll(request,l.getLatitude(), l.getLongitude() );
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/PaymentDetails")
	public String postPaymentDetails(@FormParam("key") String securityKey,@FormParam("json") String json,@Context HttpHeaders httpHeader)
	{
		String request="update paymentDetails";
		try{
		String username=MyUtilContextImpl.getUserName(httpHeader);
		PaymentDetailRequest pd=(PaymentDetailRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.PaymentDetailRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return paymentDetailsService.update(request,pd, username);
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/public/ClientConfiguration")
	public String getClientConfiguration(@QueryParam("key") String securityKey,@QueryParam("json") String json)
	{
		String request="get ClientConfiguration";
		try{
		ClientConfigurationRequest r= (ClientConfigurationRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.get.ClientConfigurationRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return clientConfigurationService.getClientConfig(request,r);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/VehicleDetails")
	public String postVehicleDetails(@FormParam("key") String securityKey,@FormParam("json") String json,@FormParam("is_new_vehicle") String isNewVehicle,@Context HttpHeaders httpHeader)
	{
		String request="post vehicleDetails";
		try{
		String username=MyUtilContextImpl.getUserName(httpHeader);
		VehicleDetailsRequest r= (VehicleDetailsRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.VehicleDetailsRequest");
		System.out.println(r.getState());
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return vehicleDetailsService.postVehicleDetails(request,r, username, isNewVehicle);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@DELETE
	@Produces("text/plain")
	@Path("/secure/VehicleDetails")
	public String deleteVehicleDetails(@FormParam("key") String securityKey,@FormParam("vehicleId") int vehicleId,@Context HttpHeaders httpHeader)
	{
		String request="delete vehicleDetails";
		try{
		String username=MyUtilContextImpl.getUserName(httpHeader);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return vehicleDetailsService.deleteVehicle(request,vehicleId, username);
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/public/UserRegistration")
	public String registerUser(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="register user";
		try{
		RegistrationServiceRequest request1= (RegistrationServiceRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.RegistrationServiceRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return registrationService.createUser(request,request1);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/public/DeviceRegistration")
	public String registerDevice(@FormParam("key") String securityKey,@FormParam("json") String json,@Context HttpServletRequest servletRequest)
	{
		String request="register device";
		try{
		DeviceRegistrationRequest request1=  (DeviceRegistrationRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.DeviceRegistrationRequest");
		if(ServerConfiguration.getServerConfiguration()== null)
			System.out.println("null");
		System.out.println(ServerConfiguration.getServerConfiguration().getValue("checkSecurity"));
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return deviceRegistrationService.registerDevice(request,request1,servletRequest.getRemoteAddr());
		else
		{
			return null;
		}
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}

	@POST
	@Produces("text/plain")
	@Path("/public/Login")
	public String loginUser(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="login";
		System.out.println(json);
		try{
		LoginRequest request1=  (LoginRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.LoginRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return loginService.login(request,request1);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}

	@POST
	@Produces("text/plain")
	@Path("/secure/ChangePassword")
	public String changePassword(@FormParam("key") String securityKey,@FormParam("password") String password,@Context HttpHeaders httpHeader)
	{
		String request="change password";
		try{
		String userName=MyUtilContextImpl.getUserName(httpHeader);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return changePasswordService.changePassword(request,userName, password);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/Activate")
	public String activate(@FormParam("key") String securityKey,@FormParam("json") String json,@Context HttpHeaders httpHeader)
	{
		String request="activate/deactivate user";
		try{
		String userName=MyUtilContextImpl.getUserName(httpHeader);
		ActivateRequest ar = (ActivateRequest) jsonConverter.getObject(json,"com.mobisols.tollpayments.request.post.ActivateRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return activateService.activate(request,ar, userName);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/secure/MakeAndModel")
	public String getMakeAndModel(@QueryParam("key") String securityKey,@Context HttpHeaders httpHeader)
	{
		String request="Get Make and Models";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return makeAndModelService.getMakeAndModels(request);
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/public/Password")
	public String forgotPassword(@QueryParam("username") String username){
		String request = "forgot password";
		try{
			return forgotPassword(username);
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		finally{
			myUtilCleanUp.cleanUp();
		}
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

	public ChangePasswordService getChangePasswordService() {
		return changePasswordService;
	}

	public void setChangePasswordService(ChangePasswordService changePasswordService) {
		this.changePasswordService = changePasswordService;
	}

	public ActivateService getActivateService() {
		return activateService;
	}

	public void setActivateService(ActivateService activateService) {
		this.activateService = activateService;
	}

	public SecurityCheckUtil getSecurityCheckUtil() {
		return securityCheckUtil;
	}

	public void setSecurityCheckUtil(SecurityCheckUtil securityCheckUtil) {
		this.securityCheckUtil = securityCheckUtil;
	}

	public MakeAndModelService getMakeAndModelService() {
		return makeAndModelService;
	}

	public void setMakeAndModelService(MakeAndModelService makeAndModelService) {
		this.makeAndModelService = makeAndModelService;
	}

	public MyUtilErrorHandler getMyUtilErrorHandler() {
		return myUtilErrorHandler;
	}

	public void setMyUtilErrorHandler(MyUtilErrorHandler myUtilErrorHandler) {
		this.myUtilErrorHandler = myUtilErrorHandler;
	}

	public MyUtilCleanUp getMyUtilCleanUp() {
		return myUtilCleanUp;
	}

	public void setMyUtilCleanUp(MyUtilCleanUp myUtilCleanUp) {
		this.myUtilCleanUp = myUtilCleanUp;
	}

	public ForgotPassword getForgotPassword() {
		return forgotPassword;
	}

	public void setForgotPassword(ForgotPassword forgotPassword) {
		this.forgotPassword = forgotPassword;
	}

}

