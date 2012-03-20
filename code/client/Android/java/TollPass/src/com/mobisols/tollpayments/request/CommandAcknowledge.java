/**
 * 
 */
package com.mobisols.tollpayments.request;

/**
 * @author Raghu
 *
 */
public class CommandAcknowledge {

	private Long notificationId;
	private String status;
	private String message;
	private String result;
	
	public Long getNotificationId() {
		return notificationId;
	}
	public void setNotificationId(Long notificationId) {
		this.notificationId = notificationId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
