package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.UserBalanceLog;

public class BalanceLogImpl implements BalanceLog {
	private Double delta;
	private String description;
	private Timestamp timeStamp;
	
	public BalanceLogImpl(){
	}
	
	public BalanceLogImpl(int logid) {	
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalanceLog.class);
		crit.add(Restrictions.eq("ublogId",logid));
		UserBalanceLog ub=(UserBalanceLog) crit.uniqueResult();
		this.setDelta(ub.getDelta());
		this.setDescription(ub.getAction());
		this.setTimeStamp(ub.getTimestamp());
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
