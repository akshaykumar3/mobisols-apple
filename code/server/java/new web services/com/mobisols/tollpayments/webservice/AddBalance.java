package com.mobisols.tollpayments.webservice;


public interface AddBalance {
	float amount=(float) 0.0;
	String description=null;
	int balanceId=0;
	public String addBalance( String user,String json,int hasId);
	public float getAmount();
	public void setAmount(float amount);
	public String getDescription();
	public void setDescription(String description);
	public int getbalanceId();

	public void setbalanceId(int balanceId);
}
