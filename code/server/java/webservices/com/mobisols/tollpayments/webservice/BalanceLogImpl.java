package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserBalanceLog;

public class BalanceLogImpl implements BalanceLog {
	private Double delta;
	private String description;
	private Timestamp timeStamp;
	
	public BalanceLogImpl(){
	}
	
	public BalanceLogImpl(int logid) {	
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalanceLog.class);
		List<UserBalanceLog> ubl=crit.list();
		if(ubl.isEmpty())
			return;
		this.setDelta(ubl.get(0).getId().getDelta());
		this.setDescription(ubl.get(0).getId().getAction());
		this.setTimeStamp(ubl.get(0).getId().getTimestamp());
	}
	public Double getDelta() {
		return delta;
	}

	public void setDelta(Double delta) {
		this.delta = delta;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timestamp2) {
		this.timeStamp = timestamp2;
	}
}
