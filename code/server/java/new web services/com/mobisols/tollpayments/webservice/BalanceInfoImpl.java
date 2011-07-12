package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserBalance;
import com.mobisols.tollpayments.hibernate.entity.UserBalanceLog;
import com.mobisols.tollpayments.hibernate.entity.UserType;

@Path("/BalanceInfo")
public class BalanceInfoImpl implements BalanceInfo {

	private double currentBalance;
	private double minBalance;
	private List<BalanceLogImpl> balancelog;
	private int balanceId;
	
	

	public BalanceInfoImpl(){
		
	}
	
	public BalanceInfoImpl(Integer ubalId)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalance.class);
		crit.add(Restrictions.eq("ubalId", ubalId));
		UserBalance ub=(UserBalance) crit.uniqueResult();
		if(ub==null)
			return;
		this.setCurrentBalance((ub.getBalance()));
		this.setBalanceId(ub.getUbalId());
		if(ub.getUser().getUserType()==null)
		{
			System.out.println("UserType is null");
		}
		else
		{
			System.out.println("UserType is not null");
		}
		this.setMinBalance(ub.getUser().getUserType().getMinBalance());
		this.balancelog=new LinkedList<BalanceLogImpl>();
		Set<UserBalanceLog> ubl=ub.getUserBalanceLog();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			this.balancelog.add(new BalanceLogImpl(((UserBalanceLog)it.next()).getUblogId()));
		}
	}
	
	@GET
	@Produces("text/plain")
	public String getBalanceInfo(@QueryParam("user_name") String user)
	{
		String request="";
		String status="";
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
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
	public List<BalanceLogImpl> getBalancelog() {
		return balancelog;
	}
	public void setBalancelog(List<BalanceLogImpl> balancelog) {
		this.balancelog = balancelog;
	}
	public int getBalanceId() {
		return balanceId;
	}

	public void setBalanceId(int balanceId) {
		this.balanceId = balanceId;
	}
}
