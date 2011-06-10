
package com.mobisols.tollpayments.mockwebservices;

public class BalanceLog {
	private float balance;
	private String description;
	private String timeStamp;
	
	public BalanceLog(){
		
	}
	public BalanceLog(int logid){
		//TODO retrieve the data using hibernate and update 
		this.setBalance((float)19.0000);
		this.setDescription("Paid 1 dollar whicle passing through toll");
		this.setTimeStamp("12-6-2011 12:04:12");
	}
	
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
}
