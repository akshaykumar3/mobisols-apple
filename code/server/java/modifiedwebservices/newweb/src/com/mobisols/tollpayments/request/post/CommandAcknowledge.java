/**
 * 
 */
package com.mobisols.tollpayments.request.post;

/**
 * @author Raghu
 *
 */
public class CommandAcknowledge {

	private int notificationId;
	private String status;
	private String message;
	private String result;
	
	public int getNotificationId() {
		return notificationId;
	}
	public void setNotificationId(int notificationId) {
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
