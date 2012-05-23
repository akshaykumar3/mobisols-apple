/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserNotificationDao;
import com.mobisols.tollpayments.model.UserNotification;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.CommandAckRequest;
import com.mobisols.tollpayments.request.post.CommandAcknowledge;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.CommandAck;

/**
 * @author Raghu
 *
 */
public class CommandAckImpl implements CommandAck {

	private UserNotificationDao userNotificationDao;
	private JsonConverter jsonConverter;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.CommandAck#acknowledgeCommand(com.mobisols.tollpayments.request.post.CommandAckRequest)
	 */
	@Override
	public String acknowledgeCommand(CommandAckRequest commandAckRequest,String request) {
		GeneralResponse response = new GeneralResponse();
		String status = "success";
		for(Iterator<CommandAcknowledge> it = commandAckRequest.getCommands().iterator();it.hasNext();){
			CommandAcknowledge ca = it.next();
			UserNotification un = userNotificationDao.get(ca.getNotificationId());
			un.setAckMessage(ca.getMessage());
			un.setAckResult(ca.getResult());
			un.setAckTimestamp(new Timestamp(new Date().getTime()));
			un.setLastModifiedBy(UserDao.DEFAULT_USER);
			un.setLastModifiedOn(new Timestamp(new Date().getTime()));
			un.setStatus(ca.getStatus());
			userNotificationDao.update(un);
		}
		return jsonConverter.getJSON(request, status,response);
	}
	public UserNotificationDao getUserNotificationDao() {
		return userNotificationDao;
	}
	public void setUserNotificationDao(UserNotificationDao userNotificationDao) {
		this.userNotificationDao = userNotificationDao;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter josnConverter) {
		this.jsonConverter = josnConverter;
	}

}
