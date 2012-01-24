package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.paymentprocess.CreditCardProcessing;
import com.mobisols.tollpayments.paymentprocess.PaymentGateway;
import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.response.post.ActivateResponse;
import com.mobisols.tollpayments.service.ActivateService;

// TODO: Auto-generated Javadoc
/**
 * The Class ActivateServiceImpl.
 */
public class ActivateServiceImpl implements ActivateService {

	/** The user dao. */
	private UserDao userDao;
	
	/** The user balance dao. */
	private UserBalanceDao userBalanceDao;
	
	/** The user vehicle dao. */
	private UserVehicleDao userVehicleDao;
	
	/** The device dao. */
	private DeviceDao deviceDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ActivateService#activate(java.lang.String, com.mobisols.tollpayments.request.post.ActivateRequest, java.lang.String)
	 */
	public String activate(String request,ActivateRequest ar,String userName){
		ActivateResponse response = new ActivateResponse();
		String status="success"; 
		User u = userDao.getUser(userName);
		
		if(ar.getActive().equals("Y"))
		{
			List<UserVehicle> standByVehicles = userVehicleDao.getStandByVehicles(userName);
			
			if(u.getIsActive().equals(UserDao.USER_INACTIVE) && standByVehicles.isEmpty())
			{
				response.getNotifications().add("Add a Vehicle that is active");
				status = "fail";
				return jsonConverter.getJSON(request, status, response);
			}
			else if(u.getIsActive().equals(UserDao.USER_INACTIVE))
			{
				UserBalance ub = u.getUserBalance();
				if(ub.getBalance()< u.getUserType().getMinBalance())
				{
					UserPaymentDetail upd = u.getUserPaymentDetails();
					PaymentGateway pg = new PaymentGateway();
					String expDate = "";
					if(upd.getCcExpMonth()<10)
						expDate = expDate+"0"+upd.getCcExpMonth();
					else
						expDate = expDate+upd.getCcExpMonth();
					expDate = expDate + upd.getCcExpYear();
					Double amount = u.getUserType().getMinBalance() - ub.getBalance();
					String ack  = pg.getCreditCardProcessing().doPaymentProcess(
							CreditCardProcessing.PAYMENT_ACTION_ADDBALANCE, amount.toString(), 
							upd.getCcType().getName(), upd.getCcNumber(),expDate , upd.getCcCvv().toString(), 
							upd.getCcAcName(), "", upd.getAddress1()+upd.getAddress2(), 
							upd.getCity(), upd.getState(), upd.getZip(), upd.getCountry());
					if(ack.equals("Success") || ack.equals("SuccessWithWarning"))
					{
						ub.setBalance(amount+ub.getBalance());
						userBalanceDao.save(ub);
						for(Iterator<UserVehicle> it = standByVehicles.iterator();it.hasNext();)
						{
							UserVehicle uv = it.next();
							uv.setIsActive(UserVehicleDao.VEHICLE_ACTIVE);
							userVehicleDao.update(uv);
						}
						u.setIsActive(UserDao.USER_ACTIVE);
						userDao.update(u);
						//Device d = deviceDao.getDevice(u.getUserId());
						//d.setIsActive(deviceDao.DEVICE_ACTIVE);
						//deviceDao.update(d);
						response.setActive(UserDao.USER_ACTIVE);
					}
					else if(ack.equals("Failure") || ack.equals("FailureWithWarning"))
					{
						response.getNotifications().add("Low Balance : CreditCard transaction Failed");
						status = "fail";
						response.setActive(UserDao.USER_INACTIVE);
					}
				}
				else {
					for(Iterator<UserVehicle> it = standByVehicles.iterator();it.hasNext();)
					{
						UserVehicle uv = it.next();
						uv.setIsActive(UserVehicleDao.VEHICLE_ACTIVE);
						userVehicleDao.update(uv);
					}
					u.setIsActive(UserDao.USER_ACTIVE);
					userDao.update(u);
					//Device d = deviceDao.getDevice(u.getUserId());
					//d.setIsActive(deviceDao.DEVICE_ACTIVE);
					//deviceDao.update(d);
					response.setActive(UserDao.USER_ACTIVE);
				}
				
			}
			else if(u.equals(UserDao.USER_ACTIVE))
			{
				response.setActive(UserDao.USER_ACTIVE);
			}
			else
			{
				String notify = null;
				status = "fail";
				if(u.getIsActive().equals(UserDao.USER_BLOCK))
					notify = "User is Blocked";
				else if(u.getIsActive().equals(UserDao.USER_INCOMPLETE))
					notify = "User details are incomplete";
				else if(u.getIsActive().equals(UserDao.USER_SUSPEND))
					notify = "User is suspended";
				else
					{
					notify = "User is already Active";
					status="success";
					}
				
				response.getNotifications().add(notify);
				response.setActive(u.getIsActive());
			}
		}
		else if(ar.getActive().equals("N"))
		{
			if(u.getIsActive().equals(UserDao.USER_ACTIVE))
			{
				List activeVehicles = userVehicleDao.getActiveVehicles(userName);
				for(Iterator<UserVehicle> it = activeVehicles.iterator();it.hasNext();)
				{
					UserVehicle uv = it.next();
					uv.setIsActive(UserVehicleDao.VEHICLE_STANDBY);
					userVehicleDao.update(uv);
				}
				u.setIsActive(UserDao.USER_INACTIVE);
				userDao.update(u);
				//Device d = deviceDao.getDevice(u.getUserId());
				//d.setVehicleId(-1);
				//d.setIsActive(deviceDao.DEVICE_INACTIVE);
				//deviceDao.update(d);
				//response.setActive("N");
				response.getNotifications().add("User is Deactivated");
			}
			else
			{
				String notify = "User is already Inactive";
				status = "fail";
				response.getNotifications().add(notify);
				response.setActive(u.getIsActive());
			}
		}
		return jsonConverter.getJSON(request, status,response);
	}

	/**
	 * Gets the user vehicle dao.
	 *
	 * @return the user vehicle dao
	 */
	public UserVehicleDao getUserVehicleDao() {
		return userVehicleDao;
	}

	/**
	 * Sets the user vehicle dao.
	 *
	 * @param userVehicleDao the new user vehicle dao
	 */
	public void setUserVehicleDao(UserVehicleDao userVehicleDao) {
		this.userVehicleDao = userVehicleDao;
	}

	/**
	 * Gets the user dao.
	 *
	 * @return the user dao
	 */
	public UserDao getUserDao() {
		return userDao;
	}

	/**
	 * Sets the user dao.
	 *
	 * @param userDao the new user dao
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * Gets the device dao.
	 *
	 * @return the device dao
	 */
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	/**
	 * Sets the device dao.
	 *
	 * @param deviceDao the new device dao
	 */
	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
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
	 * Gets the user balance dao.
	 *
	 * @return the user balance dao
	 */
	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}

	/**
	 * Sets the user balance dao.
	 *
	 * @param userBalanceDao the new user balance dao
	 */
	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}
}
