package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserBalance;
import com.mobisols.tollpayments.hibernate.UserBalanceLog;
import com.mobisols.tollpayments.hibernate.UserType;

@Path("/BalanceInfo")
public class BalanceInfoImpl implements BalanceInfo {

	private double currentBalance;
	private double minBalance;
	private List<BalanceLog> balancelog;
	private int balanceId;
	
	

	public BalanceInfoImpl(){
		
	}
	
	public BalanceInfoImpl(Integer userId)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalance.class);
		crit.add(Restrictions.eq("userId", userId));
		List<UserBalance> ub=crit.list();
		if(ub.isEmpty())
			return;
		this.setCurrentBalance((ub.get(0).getBalance()));
		this.setBalanceId(ub.get(0).getUbalId());
		crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userId", userId));
		List<User> u=crit.list();
		crit=s.createCriteria(UserType.class);
		crit.add(Restrictions.eq("userTypeId",u.get(0).getUtypeId()));
		List<UserType> ut=crit.list();
		if(ut.isEmpty())
		{
			return;
		}
		//this.setMinBalance(ut.get(0).getMinBalance());
		this.balancelog=new LinkedList<BalanceLog>();
		crit=s.createCriteria(UserBalanceLog.class);
		crit.add(Restrictions.eq("ubalId",ub.get(0).getUbalId()));
		List<UserBalanceLog> ubl=crit.list();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			this.balancelog.add(new BalanceLogImpl(((UserBalanceLog)it.next()).getUblogId()));
		}
	}
	
	@GET
	@Produces("text/plain")
	public String getBalanceInfo(@QueryParam("user_name") String user,@QueryParam("client_id")int clientId)
	{
		String request="";
		String status="";
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		crit.add(Restrictions.eq("clientId", clientId));
		List<User> u=crit.list();
		BalanceInfo ac=new BalanceInfoImpl(u.get(0).getUserId());
		JsonConverter json=new JsonConverterImpl();
		String res = json.getJSON(request, status, ac);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	public double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	public double getMinBalance() {
		return minBalance;
	}
	public void setMinBalance(double minBalance) {
		this.minBalance = minBalance;
	}
	public List<BalanceLog> getBalancelog() {
		return balancelog;
	}
	public void setBalancelog(List<BalanceLog> balancelog) {
		this.balancelog = balancelog;
	}
	public int getBalanceId() {
		return balanceId;
	}

	public void setBalanceId(int balanceId) {
		this.balanceId = balanceId;
	}
}
