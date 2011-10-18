package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

/**
 * UserNotificationId entity. @author MyEclipse Persistence Tools
 */

public class UserNotification implements java.io.Serializable {

	// Fields

	private Integer userNotificationId;
	private Integer deviceId;
	private String userNotificationType;
	private String udf1;
	private String udf2;
	private String udf3;
	private String udf4;
	private String udf5;
	private String flag1;
	private String flag2;
	private String flag3;
	private String flag4;
	private String flag5;
	private Timestamp createdOn;
	private Timestamp lastModifiedOn;
	private Integer lastModifiedBy;
	private Integer clientId;
	private String status;
	private Timestamp sendAt;
	private String notification;
	private String ackMessage;
	private String ackResult;
	private Timestamp addTimestamp;
	private Timestamp sentTimestamp;
	private Timestamp ackTimestamp;
	
	private Device device;
	
	// Constructors
	/** default constructor */
	public UserNotification() {
	}

	public Integer getUserNotificationId() {
		return userNotificationId;
	}

	public void setUserNotificationId(Integer userNotificationId) {
		this.userNotificationId = userNotificationId;
	}

	public Integer getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	public String getUserNotificationType() {
		return userNotificationType;
	}

	public void setUserNotificationType(String userNotificationType) {
		this.userNotificationType = userNotificationType;
	}

	public String getUdf1() {
		return udf1;
	}

	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	public String getUdf2() {
		return udf2;
	}

	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	public String getUdf3() {
		return udf3;
	}

	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	public String getUdf4() {
		return udf4;
	}

	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	public String getUdf5() {
		return udf5;
	}

	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	public String getFlag1() {
		return flag1;
	}

	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	public String getFlag2() {
		return flag2;
	}

	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	public String getFlag3() {
		return flag3;
	}

	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	public String getFlag4() {
		return flag4;
	}

	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	public String getFlag5() {
		return flag5;
	}

	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	public Timestamp getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	public Timestamp getLastModifiedOn() {
		return lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	public Integer getLastModifiedBy() {
		return lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	public Integer getClientId() {
		return clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getSendAt() {
		return sendAt;
	}

	public void setSendAt(Timestamp sendAt) {
		this.sendAt = sendAt;
	}

	public String getNotification() {
		return notification;
	}

	public void setNotification(String notification) {
		this.notification = notification;
	}

	public String getAckMessage() {
		return ackMessage;
	}

	public void setAckMessage(String ackMessage) {
		this.ackMessage = ackMessage;
	}

	public String getAckResult() {
		return ackResult;
	}

	public void setAckResult(String ackResult) {
		this.ackResult = ackResult;
	}

	public Timestamp getAddTimestamp() {
		return addTimestamp;
	}

	public void setAddTimestamp(Timestamp addTimestamp) {
		this.addTimestamp = addTimestamp;
	}

	public Timestamp getSentTimestamp() {
		return sentTimestamp;
	}

	public void setSentTimestamp(Timestamp sentTimestamp) {
		this.sentTimestamp = sentTimestamp;
	}

	public Timestamp getAckTimestamp() {
		return ackTimestamp;
	}

	public void setAckTimestamp(Timestamp ackTimestamp) {
		this.ackTimestamp = ackTimestamp;
	}

	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
	}

	

	
}