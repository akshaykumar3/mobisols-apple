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

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilCleanUp;
import com.mobisols.tollpayments.myutils.MyUtilErrorHandler;
import com.mobisols.tollpayments.myutils.SecurityCheckUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.myutilsImpl.MyUtilContextImpl;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.request.admin.PaymentDetailsHistoryRequest;
import com.mobisols.tollpayments.request.admin.PaymentTransactionRequest;
import com.mobisols.tollpayments.request.admin.VehicleHistoryDetailsRequest;
import com.mobisols.tollpayments.request.get.ClientConfigurationRequest;
import com.mobisols.tollpayments.request.get.TollRange;
import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.request.post.CommandAckRequest;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.request.post.HeartBeatList;
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
import com.mobisols.tollpayments.service.CommandAck;
import com.mobisols.tollpayments.service.DeviceRegistrationService;
import com.mobisols.tollpayments.service.ForgotPassword;
import com.mobisols.tollpayments.service.HeartBeatService;
import com.mobisols.tollpayments.service.LoginService;
import com.mobisols.tollpayments.service.MakeAndModelService;
import com.mobisols.tollpayments.service.MakeTollPayments;
import com.mobisols.tollpayments.service.NearestTollService;
import com.mobisols.tollpayments.service.OwnerTypeListService;
import com.mobisols.tollpayments.service.PaymentDetailsHistory;
import com.mobisols.tollpayments.service.PaymentDetailsService;
import com.mobisols.tollpayments.service.PaymentTransactionService;
import com.mobisols.tollpayments.service.PeriodicHeartBeatService;
import com.mobisols.tollpayments.service.RegistrationService;
import com.mobisols.tollpayments.service.ServicePlanService;
import com.mobisols.tollpayments.service.TollDetailsListService;
import com.mobisols.tollpayments.service.UserDetails;
import com.mobisols.tollpayments.service.VehicleDetailsService;
import com.mobisols.tollpayments.service.VehicleHistoryDetails;
import com.mobisols.tollpayments.service.VehicleTypeListService;
import com.mobisols.tollpayments.service.VmlTypeListService;


/**
 * The Class WebServiceImpl.
 */
@Path("/services")
public class WebServiceImpl {
	 private static Logger logger = Logger.getLogger(WebServiceImpl.class);
	 
	/** The account details service. */
	AccountDetailsService accountDetailsService;
	
	/** The add balance service. */
	AddBalanceService addBalanceService;
	
	/** The vehicle type list service. */
	VehicleTypeListService vehicleTypeListService;
	
	/** The cc type list service. */
	CcTypeListService ccTypeListService;
	
	/** The owner type list service. */
	OwnerTypeListService ownerTypeListService;
	
	/** The vml type list service. */
	VmlTypeListService vmlTypeListService;
	
	/** The balance info service. */
	BalanceInfoService balanceInfoService;
	
	/** The toll details service. */
	TollDetailsListService tollDetailsService;
	
	/** The service plan service. */
	ServicePlanService servicePlanService;
	
	/** The periodic heart beat service. */
	PeriodicHeartBeatService periodicHeartBeatService;
	
	/** The heart beat service. */
	HeartBeatService heartBeatService;
	
	/** The nearest toll service. */
	NearestTollService nearestTollService;
	
	/** The payment details service. */
	PaymentDetailsService paymentDetailsService;
	
	/** The client configuration service. */
	ClientConfigurationService clientConfigurationService;
	
	/** The vehicle details service. */
	VehicleDetailsService vehicleDetailsService;
	
	/** The registration service. */
	RegistrationService registrationService;
	
	/** The device registration service. */
	DeviceRegistrationService deviceRegistrationService;
	
	/** The login service. */
	LoginService loginService;
	
	/** The change password service. */
	ChangePasswordService changePasswordService;
	
	/** The make and model service. */
	MakeAndModelService makeAndModelService;
	
	/** The activate service. */
	ActivateService activateService;
	
	/** The forgot password. */
	ForgotPassword forgotPassword;
	
	/** The json converter. */
	JsonConverter jsonConverter;
	
	/** The make toll payments. */
	MakeTollPayments makeTollPayments;
	
	UserDetails userDetails;
	VehicleHistoryDetails vehicleHistoryDetails;
	PaymentDetailsHistory paymentDetailsHistory;
	PaymentTransactionService paymentTransactionService;
	CommandAck commandAck;
	
	/** The security check util. */
	SecurityCheckUtil securityCheckUtil;
	
	/** The my util error handler. */
	MyUtilErrorHandler myUtilErrorHandler;
	
	/** The my util clean up. */
	MyUtilCleanUp myUtilCleanUp;
	
	/**
	 * Instantiates a new web service impl.
	 */
	public WebServiceImpl() {
		
		logger.info("Webservice constructor is called");
		 
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
	        makeTollPayments = (MakeTollPayments) ctx.getBean("service.tollpayments.makeTollPayments");
	        userDetails = (UserDetails) ctx.getBean("service.tollpayments.userDetails");
	        vehicleHistoryDetails = (VehicleHistoryDetails) ctx.getBean("service.tollpayments.vehicleHistoryDetails");
	        paymentDetailsHistory = (PaymentDetailsHistory) ctx.getBean("service.tollpayments.paymentDetailsHistory");
	        paymentTransactionService = (PaymentTransactionService) ctx.getBean("service.tollpayments.paymentTransactionService");
	        commandAck = (CommandAck) ctx.getBean("service.tollpayments.commandAck");
	}

	/**
	 * Gets the account details response.
	 *
	 * @param securityKey the security key
	 * @param httpHeader the http header
	 * @return the account details response
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/AccountDetails")
	public String getAccountDetailsResponse(@QueryParam("key") String securityKey,@Context HttpHeaders httpHeader){
		logger.debug("Account details method is called");
		String request = "RETRIEVE ACC_DETAILS";
		try{
		
		String username=MyUtilContextImpl.getUserName(httpHeader);
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
		{
			String response =  accountDetailsService.getAccountDetailsResponse(request,username);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	
	/**
	 * Gets the balance details.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the balance details
	 */
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
	
	/**
	 * Gets the vehicle types list.
	 *
	 * @param securityKey the security key
	 * @return the vehicle types list
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/VehicleTypeList")
	public String getVehicleTypesList(@QueryParam("key") String securityKey)
	{
		String request="";
		try{
		String vr=vehicleTypeListService.getVehicleTypeList(request);
		myUtilCleanUp.cleanUp();
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			return vr;
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}

	/**
	 * Post add balance.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @param httpHeader the http header
	 * @return the string
	 */
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
		{
			String response =  addBalanceService.addBalanceResponse(request,ar,username);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the cc type list.
	 *
	 * @param securityKey the security key
	 * @return the cc type list
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/CcTypeList")
	public String getCcTypeList(@QueryParam("key") String securityKey)
	{
		String request="get CCTypeList";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
		{
			String response = ccTypeListService.getCcTypeList(request);
			myUtilCleanUp.cleanUp();
			return response;
		}
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the owner type list.
	 *
	 * @param securityKey the security key
	 * @return the owner type list
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/OwnerTypeList")
	public String getOwnerTypeList(@QueryParam("key") String securityKey)
	{
		String request="get OwnerTypeList";
		try{
			if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
				String response =  ownerTypeListService.getOwnerTypeList(request);
				myUtilCleanUp.cleanUp();
				return response;
			}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the vML type list.
	 *
	 * @param securityKey the security key
	 * @return the vML type list
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/VmlTypeList")
	public String getVMLTypeList(@QueryParam("key") String securityKey)
	{
		String request="get VMLTypeList";
		try{
			if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
				String response =  vmlTypeListService.getVmlTypeList(request);
				myUtilCleanUp.cleanUp();
				return response;
			}
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the balance info.
	 *
	 * @param securityKey the security key
	 * @param httpHeader the http header
	 * @return the balance info
	 */
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
			{
				String response =  balanceInfoService.getBalanceInfo(request,username);
				myUtilCleanUp.cleanUp();
				return response;
			}
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the toll details list.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the toll details list
	 */
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
			String response = null;
			if(tr==null)
				response =  tollDetailsService.getTollLocations(request);
			else
				response =  tollDetailsService.getTollLocations(request,tr.getLatitude1(),
					tr.getLongitude1(), tr.getLatitude2(), tr.getLongitude2());
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the service plans.
	 *
	 * @param securityKey the security key
	 * @return the service plans
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/ServicePlansList")
	public String getServicePlans(@QueryParam("key") String securityKey)
	{
		String request="get Service Plans List";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
			String response =  servicePlanService.getServiceList(request);
			myUtilCleanUp.cleanUp();
			return response;
			}
		return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Post periodic heart beat.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the string
	 */
	@POST
	@Produces("text/plain")
	@Path("/secure/PeriodicHeartBeat")
	public String postPeriodicHeartBeat(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="post periodic heartbeat";
		try{
		HeartBeatList hbr=(HeartBeatList) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatList");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
			String response =  periodicHeartBeatService.saveHeartBeat(request,hbr) ;
			myUtilCleanUp.cleanUp();
			return response;
			}
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Post heart beat.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the string
	 */
	@POST
	@Produces("text/plain")
	@Path("/secure/HeartBeat")
	public String postHeartBeat(@FormParam("key") String securityKey,@FormParam("json") String json)
	{
		String request="post heartbeat";
		System.out.println(json);
		try{
		HeartBeatList hbr=(HeartBeatList) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.HeartBeatList");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
			String response =  heartBeatService.saveHeartBeat(request,hbr);
			myUtilCleanUp.cleanUp();
			return response;
			}
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the nearest toll.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the nearest toll
	 */
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
			{
			String response =  nearestTollService.getNearestToll(request,l.getLatitude(), l.getLongitude() );
			myUtilCleanUp.cleanUp();
			return response;
			}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Post payment details.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @param httpHeader the http header
	 * @return the string
	 */
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
			{
			String response =  paymentDetailsService.update(request,pd, username);
			myUtilCleanUp.cleanUp();
			return response;
			}
		else
			return null;
		}
		catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the client configuration.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the client configuration
	 */
	@GET
	@Produces("text/plain")
	@Path("/public/ClientConfiguration")
	public String getClientConfiguration(@QueryParam("key") String securityKey,@QueryParam("json") String json)
	{
		String request="get ClientConfiguration";
		try{
			System.out.println(json);
		ClientConfigurationRequest r= (ClientConfigurationRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.get.ClientConfigurationRequest");
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
			{
			String response =  clientConfigurationService.getClientConfig(request,r);
			myUtilCleanUp.cleanUp();
			return response;
			}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Post vehicle details.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @param isNewVehicle the is new vehicle
	 * @param httpHeader the http header
	 * @return the string
	 */
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
			{
			String response =  vehicleDetailsService.postVehicleDetails(request,r, username, isNewVehicle);
			myUtilCleanUp.cleanUp();
			return response;
			}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Delete vehicle details.
	 *
	 * @param securityKey the security key
	 * @param vehicleId the vehicle id
	 * @param httpHeader the http header
	 * @return the string
	 */
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
			{
			String response =  vehicleDetailsService.deleteVehicle(request,vehicleId, username);
			myUtilCleanUp.cleanUp();
			return response;
			}
		return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Register user.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the string
	 */
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
		{
			String response = registrationService.createUser(request,request1);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Register device.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @param servletRequest the servlet request
	 * @return the string
	 */
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
		{
			String response = deviceRegistrationService.registerDevice(request,request1,servletRequest.getRemoteAddr());
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
		{
			return null;
		}
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}

	/**
	 * Login user.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @return the string
	 */
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
		{
			String response = loginService.login(request,request1);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}

	/**
	 * Change password.
	 *
	 * @param securityKey the security key
	 * @param password the password
	 * @param httpHeader the http header
	 * @return the string
	 */
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
		{
			String response =  changePasswordService.changePassword(request,userName, password);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Activate.
	 *
	 * @param securityKey the security key
	 * @param json the json
	 * @param httpHeader the http header
	 * @return the string
	 */
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
		{
			String response =  activateService.activateOrDeactivate(request,ar, userName);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Gets the make and model.
	 *
	 * @param securityKey the security key
	 * @param httpHeader the http header
	 * @return the make and model
	 */
	@GET
	@Produces("text/plain")
	@Path("/secure/MakeAndModel")
	public String getMakeAndModel(@QueryParam("key") String securityKey,@Context HttpHeaders httpHeader)
	{
		String request="Get Make and Models";
		try{
		if(ServerConfiguration.getServerConfiguration().getValue("checkSecurity").equals(ServerConfiguration.SEURITY_CHECK)
				&& securityCheckUtil.isKeyCorrect(securityKey))
		{
			String response = makeAndModelService.getMakeAndModels(request);
			myUtilCleanUp.cleanUp();
			return response;
		}
		else
			return null;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Forgot password.
	 *
	 * @param username the username
	 * @return the string
	 */
	@GET
	@Produces("text/plain")
	@Path("/public/ForgotPassword")
	public String forgotPassword(@QueryParam("username") String username){
		String request = "forgot password";
		try{
			String response = forgotPassword.forgotPassword(request, username);
			myUtilCleanUp.cleanUp();
			return response;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	/**
	 * Make toll payments.
	 *
	 * @return the string
	 */
	@GET
	@Produces("text/plain")
	@Path("/public/MakeTollPayments")
	public String makeTollPayments(){
		String request = "Make Tollpayments";
		try{
			String response =  makeTollPayments.payForTolls(null, request);
			myUtilCleanUp.cleanUp();
			return response;
		}catch(Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/admin/UserDetails")
	public String getUserDetails(@QueryParam("username") String username){
		String request = "get user details" ;
		try{
			String response =  userDetails.getUserDetails(request, username);
			myUtilCleanUp.cleanUp();
			return response;
		}catch (Exception e) {
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/admin/VehicleHistoryDetails")
	public String getVehicleHistoryDetails(@QueryParam("json") String json){
		String request = "Get Vehicle History Details";
		try{
			VehicleHistoryDetailsRequest vhdr = (VehicleHistoryDetailsRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.admin.VehicleHistoryDetailsRequest");
			String response =  vehicleHistoryDetails.getVehicleHistory(request, vhdr);
			myUtilCleanUp.cleanUp();
			return response;
		}catch (Exception e) {
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/admin/PaymentDetailsHistory")
	public String getPaymentDetailsHistory(@QueryParam("json") String json){
		String request = "Get Payment Details History";
		try{
			PaymentDetailsHistoryRequest pdhr = (PaymentDetailsHistoryRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.admin.PaymentDetailsHistoryRequest");
			String response =  paymentDetailsHistory.getPaymentDetailsHistory(request, pdhr);
			myUtilCleanUp.cleanUp();
			return response;
		}catch (Exception e) {
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	@GET
	@Produces("text/plain")
	@Path("/admin/PaymentTransactionsService")
	public String getPaymentTransactions(@QueryParam("json") String json){
		String request = "Get Payment Details History";
		try{
			PaymentTransactionRequest ptr =  (PaymentTransactionRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.admin.PaymentTransactionRequest");
			String response = paymentTransactionService.getPaymentTransactions(request, ptr);
			myUtilCleanUp.cleanUp();
			return response;
		}catch (Exception e) {
			return myUtilErrorHandler.handleException(request, e);
		}
	}
	
	@POST
	@Produces("text/plain")
	@Path("/secure/CommandAck")
	public String commandAcknowledge(@QueryParam("json") String json){
		String request = "Command Acknowledge";
		String response;
		try{
			CommandAckRequest req = (CommandAckRequest) jsonConverter.getObject(json, "com.mobisols.tollpayments.request.post.CommandAckRequest");
			response =  commandAck.acknowledgeCommand(req, request);
			myUtilCleanUp.cleanUp();
		}catch (Exception e){
			return myUtilErrorHandler.handleException(request, e);
		}
		
		return response;
	}
	/**
	 * Gets the vehicle type list service.
	 *
	 * @return the vehicle type list service
	 */
	public VehicleTypeListService getVehicleTypeListService() {
		return vehicleTypeListService;
	}

	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

	/**
	 * Sets the vehicle type list service.
	 *
	 * @param vehicleTypeListService the new vehicle type list service
	 */
	public void setVehicleTypeListService(
			VehicleTypeListService vehicleTypeListService) {
		this.vehicleTypeListService = vehicleTypeListService;
	}
	
	/**
	 * Gets the account details service.
	 *
	 * @return the account details service
	 */
	public AccountDetailsService getAccountDetailsService() {
		return accountDetailsService;
	}

	/**
	 * Sets the account details service.
	 *
	 * @param accountDetailsService the new account details service
	 */
	public void setAccountDetailsService(AccountDetailsService accountDetailsService) {
		this.accountDetailsService = accountDetailsService;
	}

	/**
	 * Gets the adds the balance service.
	 *
	 * @return the adds the balance service
	 */
	public AddBalanceService getAddBalanceService() {
		return addBalanceService;
	}

	/**
	 * Sets the adds the balance service.
	 *
	 * @param addBalanceService the new adds the balance service
	 */
	public void setAddBalanceService(AddBalanceService addBalanceService) {
		this.addBalanceService = addBalanceService;
	}

	/**
	 * Gets the cc type list service.
	 *
	 * @return the cc type list service
	 */
	public CcTypeListService getCcTypeListService() {
		return ccTypeListService;
	}

	/**
	 * Sets the cc type list service.
	 *
	 * @param ccTypeListService the new cc type list service
	 */
	public void setCcTypeListService(CcTypeListService ccTypeListService) {
		this.ccTypeListService = ccTypeListService;
	}
	
	/**
	 * Gets the owner type list service.
	 *
	 * @return the owner type list service
	 */
	public OwnerTypeListService getOwnerTypeListService() {
		return ownerTypeListService;
	}

	/**
	 * Sets the owner type list service.
	 *
	 * @param ownerTypeListService the new owner type list service
	 */
	public void setOwnerTypeListService(OwnerTypeListService ownerTypeListService) {
		this.ownerTypeListService = ownerTypeListService;
	}
	
	/**
	 * Gets the vml type list service.
	 *
	 * @return the vml type list service
	 */
	public VmlTypeListService getVmlTypeListService() {
		return vmlTypeListService;
	}

	/**
	 * Sets the vml type list service.
	 *
	 * @param vmlTypeListService the new vml type list service
	 */
	public void setVmlTypeListService(VmlTypeListService vmlTypeListService) {
		this.vmlTypeListService = vmlTypeListService;
	}
	
	/**
	 * Gets the balance info service.
	 *
	 * @return the balance info service
	 */
	public BalanceInfoService getBalanceInfoService() {
		return balanceInfoService;
	}

	/**
	 * Sets the balance info service.
	 *
	 * @param balanceInfo the new balance info service
	 */
	public void setBalanceInfoService(BalanceInfoService balanceInfo) {
		this.balanceInfoService = balanceInfo;
	}
	
	/**
	 * Gets the toll details service.
	 *
	 * @return the toll details service
	 */
	public TollDetailsListService getTollDetailsService() {
		return tollDetailsService;
	}

	/**
	 * Sets the toll details service.
	 *
	 * @param tollDetailsService the new toll details service
	 */
	public void setTollDetailsService(TollDetailsListService tollDetailsService) {
		this.tollDetailsService = tollDetailsService;
	}
	
	/**
	 * Gets the service plan service.
	 *
	 * @return the service plan service
	 */
	public ServicePlanService getServicePlanService() {
		return servicePlanService;
	}

	/**
	 * Sets the service plan service.
	 *
	 * @param servicePlanService the new service plan service
	 */
	public void setServicePlanService(ServicePlanService servicePlanService) {
		this.servicePlanService = servicePlanService;
	}

	/**
	 * Gets the periodic heart beat service.
	 *
	 * @return the periodic heart beat service
	 */
	public PeriodicHeartBeatService getPeriodicHeartBeatService() {
		return periodicHeartBeatService;
	}

	/**
	 * Sets the periodic heart beat service.
	 *
	 * @param periodicHeartBeatService the new periodic heart beat service
	 */
	public void setPeriodicHeartBeatService(
			PeriodicHeartBeatService periodicHeartBeatService) {
		this.periodicHeartBeatService = periodicHeartBeatService;
	}

	/**
	 * Gets the heart beat service.
	 *
	 * @return the heart beat service
	 */
	public HeartBeatService getHeartBeatService() {
		return heartBeatService;
	}

	/**
	 * Sets the heart beat service.
	 *
	 * @param heartBeatService the new heart beat service
	 */
	public void setHeartBeatService(HeartBeatService heartBeatService) {
		this.heartBeatService = heartBeatService;
	}

	/**
	 * Gets the nearest toll service.
	 *
	 * @return the nearest toll service
	 */
	public NearestTollService getNearestTollService() {
		return nearestTollService;
	}

	/**
	 * Sets the nearest toll service.
	 *
	 * @param nearestTollService the new nearest toll service
	 */
	public void setNearestTollService(NearestTollService nearestTollService) {
		this.nearestTollService = nearestTollService;
	}

	/**
	 * Gets the payment details service.
	 *
	 * @return the payment details service
	 */
	public PaymentDetailsService getPaymentDetailsService() {
		return paymentDetailsService;
	}

	/**
	 * Sets the payment details service.
	 *
	 * @param paymentDetailsService the new payment details service
	 */
	public void setPaymentDetailsService(PaymentDetailsService paymentDetailsService) {
		this.paymentDetailsService = paymentDetailsService;
	}

	/**
	 * Gets the client configuration service.
	 *
	 * @return the client configuration service
	 */
	public ClientConfigurationService getClientConfigurationService() {
		return clientConfigurationService;
	}

	/**
	 * Sets the client configuration service.
	 *
	 * @param clientConfigurationService the new client configuration service
	 */
	public void setClientConfigurationService(
			ClientConfigurationService clientConfigurationService) {
		this.clientConfigurationService = clientConfigurationService;
	}

	/**
	 * Gets the vehicle details service.
	 *
	 * @return the vehicle details service
	 */
	public VehicleDetailsService getVehicleDetailsService() {
		return vehicleDetailsService;
	}

	/**
	 * Sets the vehicle details service.
	 *
	 * @param vehicleDetailsService the new vehicle details service
	 */
	public void setVehicleDetailsService(VehicleDetailsService vehicleDetailsService) {
		this.vehicleDetailsService = vehicleDetailsService;
	}

	/**
	 * Gets the registration service.
	 *
	 * @return the registration service
	 */
	public RegistrationService getRegistrationService() {
		return registrationService;
	}

	/**
	 * Sets the registration service.
	 *
	 * @param registrationService the new registration service
	 */
	public void setRegistrationService(RegistrationService registrationService) {
		this.registrationService = registrationService;
	}

	/**
	 * Gets the device registration service.
	 *
	 * @return the device registration service
	 */
	public DeviceRegistrationService getDeviceRegistrationService() {
		return deviceRegistrationService;
	}

	/**
	 * Sets the device registration service.
	 *
	 * @param deviceRegistrationService the new device registration service
	 */
	public void setDeviceRegistrationService(
			DeviceRegistrationService deviceRegistrationService) {
		this.deviceRegistrationService = deviceRegistrationService;
	}

	/**
	 * Gets the login service.
	 *
	 * @return the login service
	 */
	public LoginService getLoginService() {
		return loginService;
	}

	/**
	 * Sets the login service.
	 *
	 * @param loginService the new login service
	 */
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	/**
	 * Gets the change password service.
	 *
	 * @return the change password service
	 */
	public ChangePasswordService getChangePasswordService() {
		return changePasswordService;
	}

	/**
	 * Sets the change password service.
	 *
	 * @param changePasswordService the new change password service
	 */
	public void setChangePasswordService(ChangePasswordService changePasswordService) {
		this.changePasswordService = changePasswordService;
	}

	/**
	 * Gets the activate service.
	 *
	 * @return the activate service
	 */
	public ActivateService getActivateService() {
		return activateService;
	}

	/**
	 * Sets the activate service.
	 *
	 * @param activateService the new activate service
	 */
	public void setActivateService(ActivateService activateService) {
		this.activateService = activateService;
	}

	/**
	 * Gets the security check util.
	 *
	 * @return the security check util
	 */
	public SecurityCheckUtil getSecurityCheckUtil() {
		return securityCheckUtil;
	}

	/**
	 * Sets the security check util.
	 *
	 * @param securityCheckUtil the new security check util
	 */
	public void setSecurityCheckUtil(SecurityCheckUtil securityCheckUtil) {
		this.securityCheckUtil = securityCheckUtil;
	}

	/**
	 * Gets the make and model service.
	 *
	 * @return the make and model service
	 */
	public MakeAndModelService getMakeAndModelService() {
		return makeAndModelService;
	}

	/**
	 * Sets the make and model service.
	 *
	 * @param makeAndModelService the new make and model service
	 */
	public void setMakeAndModelService(MakeAndModelService makeAndModelService) {
		this.makeAndModelService = makeAndModelService;
	}

	/**
	 * Gets the my util error handler.
	 *
	 * @return the my util error handler
	 */
	public MyUtilErrorHandler getMyUtilErrorHandler() {
		return myUtilErrorHandler;
	}

	/**
	 * Sets the my util error handler.
	 *
	 * @param myUtilErrorHandler the new my util error handler
	 */
	public void setMyUtilErrorHandler(MyUtilErrorHandler myUtilErrorHandler) {
		this.myUtilErrorHandler = myUtilErrorHandler;
	}

	/**
	 * Gets the my util clean up.
	 *
	 * @return the my util clean up
	 */
	public MyUtilCleanUp getMyUtilCleanUp() {
		return myUtilCleanUp;
	}

	/**
	 * Sets the my util clean up.
	 *
	 * @param myUtilCleanUp the new my util clean up
	 */
	public void setMyUtilCleanUp(MyUtilCleanUp myUtilCleanUp) {
		this.myUtilCleanUp = myUtilCleanUp;
	}

	/**
	 * Gets the forgot password.
	 *
	 * @return the forgot password
	 */
	public ForgotPassword getForgotPassword() {
		return forgotPassword;
	}

	/**
	 * Sets the forgot password.
	 *
	 * @param forgotPassword the new forgot password
	 */
	public void setForgotPassword(ForgotPassword forgotPassword) {
		this.forgotPassword = forgotPassword;
	}

	/**
	 * Gets the make toll payments.
	 *
	 * @return the make toll payments
	 */
	public MakeTollPayments getMakeTollPayments() {
		return makeTollPayments;
	}

	/**
	 * Sets the make toll payments.
	 *
	 * @param makeTollPayments the new make toll payments
	 */
	public void setMakeTollPayments(MakeTollPayments makeTollPayments) {
		this.makeTollPayments = makeTollPayments;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public VehicleHistoryDetails getVehicleHistoryDetails() {
		return vehicleHistoryDetails;
	}

	public void setVehicleHistoryDetails(VehicleHistoryDetails vehicleHistoryDetails) {
		this.vehicleHistoryDetails = vehicleHistoryDetails;
	}

	public PaymentDetailsHistory getPaymentDetailsHistory() {
		return paymentDetailsHistory;
	}

	public void setPaymentDetailsHistory(PaymentDetailsHistory paymentDetailsHistory) {
		this.paymentDetailsHistory = paymentDetailsHistory;
	}

	public PaymentTransactionService getPaymentTransactionService() {
		return paymentTransactionService;
	}

	public void setPaymentTransactionService(
			PaymentTransactionService paymentTransactionService) {
		this.paymentTransactionService = paymentTransactionService;
	}

	public CommandAck getCommandAck() {
		return commandAck;
	}

	public void setCommandAck(CommandAck commandAck) {
		this.commandAck = commandAck;
	}

}

