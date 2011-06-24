package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserBalanceId;
import com.mobisols.tollpayments.hibernate.UserBalanceLogId;
import com.mobisols.tollpayments.hibernate.UserDAO;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserTypeId;

@Path("/BalanceInfo")
public class BalanceInfoImpl implements BalanceInfo {

	private double currentBalance;
	private double minBalance;
	private List<BalanceLog> balancelog;
	
	public BalanceInfoImpl(){
		
	}
	
	public BalanceInfoImpl(Integer userId)
	{
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserBalanceId.class);
		crit.add(Restrictions.eq("user_id", userId));
		List<UserBalanceId> ub=crit.list();
		if(ub.isEmpty())
			return;
		this.setCurrentBalance((ub.get(0).getBalance()));
		crit=s.createCriteria(UserTypeId.class);
		List<UserId> u=new UserDAO().findByProperty("user_id", userId);
		crit.add(Restrictions.eq("user_type_id",u.get(0).getUtypeId()));
		List<UserTypeId> ut=crit.list();
		this.setMinBalance(ut.get(0).getMinBalance());
		this.balancelog=new LinkedList<BalanceLog>();
		crit=s.createCriteria(UserBalanceLogId.class);
		crit.add(Restrictions.eq("ubal_id",ub.get(0).getUbalId()));
		List<UserBalanceLogId> ubl=crit.list();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			this.balancelog.add(new BalanceLogImpl(ubl.get(it.next()).getUblogId()));
		}
		s.close();
	}
	
	@GET
	@Produces("text/plain")
	public String getBalanceInfo(@QueryParam("username") String user)
	{
		String request="";
		String status="";
		BalanceInfo ac=new BalanceInfoImpl();
		JsonConverter json=new JsonConverterImpl();
		return json.getJSON(request, status, ac);
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
}
