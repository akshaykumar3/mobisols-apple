package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * UserNotificationId entity. @author MyEclipse Persistence Tools
 */

public class UserNotification implements java.io.Serializable {

	// Fields

	/** The user notification id. */
	private Integer userNotificationId;
	
	/** The device id. */
	private Integer deviceId;
	
	/** The user notification type. */
	private String userNotificationType;
	
	/** The udf1. */
	private String udf1;
	
	/** The udf2. */
	private String udf2;
	
	/** The udf3. */
	private String udf3;
	
	/** The udf4. */
	private String udf4;
	
	/** The udf5. */
	private String udf5;
	
	/** The flag1. */
	private String flag1;
	
	/** The flag2. */
	private String flag2;
	
	/** The flag3. */
	private String flag3;
	
	/** The flag4. */
	private String flag4;
	
	/** The flag5. */
	private String flag5;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The client id. */
	private Integer clientId;
	
	/** The status. */
	private String status;
	
	/** The send at. */
	private Timestamp sendAt;
	
	/** The notification. */
	private String notification;
	
	/** The ack message. */
	private String ackMessage;
	
	/** The ack result. */
	private String ackResult;
	
	/** The add timestamp. */
	private Timestamp addTimestamp;
	
	/** The sent timestamp. */
	private Timestamp sentTimestamp;
	
	/** The ack timestamp. */
	private Timestamp ackTimestamp;
	
	/** The device. */
	private Device device;
	
	// Constructors
	/**
	 * default constructor.
	 */
	public UserNotification() {
	}

	/**
	 * Gets the user notification id.
	 *
	 * @return the user notification id
	 */
	public Integer getUserNotificationId() {
		return userNotificationId;
	}

	/**
	 * Sets the user notification id.
	 *
	 * @param userNotificationId the new user notification id
	 */
	public void setUserNotificationId(Integer userNotificationId) {
		this.userNotificationId = userNotificationId;
	}

	/**
	 * Gets the device id.
	 *
	 * @return the device id
	 */
	public Integer getDeviceId() {
		return deviceId;
	}

	/**
	 * Sets the device id.
	 *
	 * @param deviceId the new device id
	 */
	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	/**
	 * Gets the user notification type.
	 *
	 * @return the user notification type
	 */
	public String getUserNotificationType() {
		return userNotificationType;
	}

	/**
	 * Sets the user notification type.
	 *
	 * @param userNotificationType the new user notification type
	 */
	public void setUserNotificationType(String userNotificationType) {
		this.userNotificationType = userNotificationType;
	}

	/**
	 * Gets the udf1.
	 *
	 * @return the udf1
	 */
	public String getUdf1() {
		return udf1;
	}

	/**
	 * Sets the udf1.
	 *
	 * @param udf1 the new udf1
	 */
	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	/**
	 * Gets the udf2.
	 *
	 * @return the udf2
	 */
	public String getUdf2() {
		return udf2;
	}

	/**
	 * Sets the udf2.
	 *
	 * @param udf2 the new udf2
	 */
	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	/**
	 * Gets the udf3.
	 *
	 * @return the udf3
	 */
	public String getUdf3() {
		return udf3;
	}

	/**
	 * Sets the udf3.
	 *
	 * @param udf3 the new udf3
	 */
	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	/**
	 * Gets the udf4.
	 *
	 * @return the udf4
	 */
	public String getUdf4() {
		return udf4;
	}

	/**
	 * Sets the udf4.
	 *
	 * @param udf4 the new udf4
	 */
	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	/**
	 * Gets the udf5.
	 *
	 * @return the udf5
	 */
	public String getUdf5() {
		return udf5;
	}

	/**
	 * Sets the udf5.
	 *
	 * @param udf5 the new udf5
	 */
	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	/**
	 * Gets the flag1.
	 *
	 * @return the flag1
	 */
	public String getFlag1() {
		return flag1;
	}

	/**
	 * Sets the flag1.
	 *
	 * @param flag1 the new flag1
	 */
	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	/**
	 * Gets the flag2.
	 *
	 * @return the flag2
	 */
	public String getFlag2() {
		return flag2;
	}

	/**
	 * Sets the flag2.
	 *
	 * @param flag2 the new flag2
	 */
	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	/**
	 * Gets the flag3.
	 *
	 * @return the flag3
	 */
	public String getFlag3() {
		return flag3;
	}

	/**
	 * Sets the flag3.
	 *
	 * @param flag3 the new flag3
	 */
	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	/**
	 * Gets the flag4.
	 *
	 * @return the flag4
	 */
	public String getFlag4() {
		return flag4;
	}

	/**
	 * Sets the flag4.
	 *
	 * @param flag4 the new flag4
	 */
	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	/**
	 * Gets the flag5.
	 *
	 * @return the flag5
	 */
	public String getFlag5() {
		return flag5;
	}

	/**
	 * Sets the flag5.
	 *
	 * @param flag5 the new flag5
	 */
	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	/**
	 * Gets the created on.
	 *
	 * @return the created on
	 */
	public Timestamp getCreatedOn() {
		return createdOn;
	}

	/**
	 * Sets the created on.
	 *
	 * @param createdOn the new created on
	 */
	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	/**
	 * Gets the last modified on.
	 *
	 * @return the last modified on
	 */
	public Timestamp getLastModifiedOn() {
		return lastModifiedOn;
	}

	/**
	 * Sets the last modified on.
	 *
	 * @param lastModifiedOn the new last modified on
	 */
	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	/**
	 * Gets the last modified by.
	 *
	 * @return the last modified by
	 */
	public Integer getLastModifiedBy() {
		return lastModifiedBy;
	}

	/**
	 * Sets the last modified by.
	 *
	 * @param lastModifiedBy the new last modified by
	 */
	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	/**
	 * Gets the client id.
	 *
	 * @return the client id
	 */
	public Integer getClientId() {
		return clientId;
	}

	/**
	 * Sets the client id.
	 *
	 * @param clientId the new client id
	 */
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	/**
	 * Gets the status.
	 *
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * Sets the status.
	 *
	 * @param status the new status
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * Gets the send at.
	 *
	 * @return the send at
	 */
	public Timestamp getSendAt() {
		return sendAt;
	}

	/**
	 * Sets the send at.
	 *
	 * @param sendAt the new send at
	 */
	public void setSendAt(Timestamp sendAt) {
		this.sendAt = sendAt;
	}

	/**
	 * Gets the notification.
	 *
	 * @return the notification
	 */
	public String getNotification() {
		return notification;
	}

	/**
	 * Sets the notification.
	 *
	 * @param notification the new notification
	 */
	public void setNotification(String notification) {
		this.notification = notification;
	}

	/**
	 * Gets the ack message.
	 *
	 * @return the ack message
	 */
	public String getAckMessage() {
		return ackMessage;
	}

	/**
	 * Sets the ack message.
	 *
	 * @param ackMessage the new ack message
	 */
	public void setAckMessage(String ackMessage) {
		this.ackMessage = ackMessage;
	}

	/**
	 * Gets the ack result.
	 *
	 * @return the ack result
	 */
	public String getAckResult() {
		return ackResult;
	}

	/**
	 * Sets the ack result.
	 *
	 * @param ackResult the new ack result
	 */
	public void setAckResult(String ackResult) {
		this.ackResult = ackResult;
	}

	/**
	 * Gets the adds the timestamp.
	 *
	 * @return the adds the timestamp
	 */
	public Timestamp getAddTimestamp() {
		return addTimestamp;
	}

	/**
	 * Sets the adds the timestamp.
	 *
	 * @param addTimestamp the new adds the timestamp
	 */
	public void setAddTimestamp(Timestamp addTimestamp) {
		this.addTimestamp = addTimestamp;
	}

	/**
	 * Gets the sent timestamp.
	 *
	 * @return the sent timestamp
	 */
	public Timestamp getSentTimestamp() {
		return sentTimestamp;
	}

	/**
	 * Sets the sent timestamp.
	 *
	 * @param sentTimestamp the new sent timestamp
	 */
	public void setSentTimestamp(Timestamp sentTimestamp) {
		this.sentTimestamp = sentTimestamp;
	}

	/**
	 * Gets the ack timestamp.
	 *
	 * @return the ack timestamp
	 */
	public Timestamp getAckTimestamp() {
		return ackTimestamp;
	}

	/**
	 * Sets the ack timestamp.
	 *
	 * @param ackTimestamp the new ack timestamp
	 */
	public void setAckTimestamp(Timestamp ackTimestamp) {
		this.ackTimestamp = ackTimestamp;
	}

	/**
	 * Gets the device.
	 *
	 * @return the device
	 */
	public Device getDevice() {
		return device;
	}

	/**
	 * Sets the device.
	 *
	 * @param device the new device
	 */
	public void setDevice(Device device) {
		this.device = device;
	}

	

	
}