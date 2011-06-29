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
import com.mobisols.tollpayments.hibernate.UserDAO;
import com.mobisols.tollpayments.hibernate.User;
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
		crit.add(Restrictions.eq("user_id", userId));
		List<UserBalance> ub=crit.list();
		if(ub.isEmpty())
			return;
		this.setCurrentBalance((ub.get(0).getId().getBalance()));
		this.setBalanceId(ub.get(0).getId().getUbalId());
		crit=s.createCriteria(UserType.class);
		List<User> u=new UserDAO().findByProperty("user_id", userId);
		crit.add(Restrictions.eq("user_type_id",u.get(0).getId().getUtypeId()));
		List<UserType> ut=crit.list();
		this.setMinBalance(ut.get(0).getId().getMinBalance());
		this.balancelog=new LinkedList<BalanceLog>();
		crit=s.createCriteria(UserBalanceLog.class);
		crit.add(Restrictions.eq("ubal_id",ub.get(0).getId().getUbalId()));
		List<UserBalanceLog> ubl=crit.list();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			this.balancelog.add(new BalanceLogImpl(((UserBalanceLog)it.next()).getId().getUblogId()));
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
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id", clientId));
		List<User> u=crit.list();
		BalanceInfo ac=new BalanceInfoImpl(u.get(0).getId().getUserId());
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