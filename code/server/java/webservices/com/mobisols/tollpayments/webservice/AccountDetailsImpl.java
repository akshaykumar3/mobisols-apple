package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.*;
import org.hibernate.criterion.*;
import org.hibernate.cfg.*;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserBalanceId;
import com.mobisols.tollpayments.hibernate.UserDAO;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserVehicle;
import com.mobisols.tollpayments.hibernate.UserVehicleId;
import com.mobisols.tollpayments.hibernate.VehicleTollUsage;
import com.mobisols.tollpayments.hibernate.VehicleTollUsageId;

@Path("/AccountDetails")
public class AccountDetailsImpl implements AccountDetails{
	private PaymentDetails paymentDetails;
	private List<VehicleDetails> vehicleDetails;
	private List<TollPayments> tollPayments;
	private BalanceInfo balanceInfo;
	
	@GET
	@Produces("text/plain")
	public String getAccountDetails(@QueryParam("username") String user,@QueryParam("clientid")int clientId){
		String request="";
		String status="";
		System.out.println("creating account details object");
		AccountDetails ac=new AccountDetailsImpl(user,clientId);
		System.out.println("created account details object");
		JsonConverter json=new JsonConverterImpl();
		return json.getJSON(request, status, ac);
	}
	public AccountDetailsImpl() {
	}
	
	public static AccountDetails getInstance(String user,int clientid){
		return null;
	}
	public AccountDetailsImpl(String user,int clientid) {
		
		System.out.println("getting session factory");
		Session s= HibernateSessionFactory.getSession();
		if(s!=null)
		System.out.println("got Session factory");
		else
			System.out.println("errror in creating session factory");
		System.out.println("creating criteria");
		Criteria crit=s.createCriteria(UserId.class);
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id", clientid));
		System.out.println("got criteria");
		List userList=crit.list();
		
		if(userList.isEmpty())
		{
			return;
		}
		UserId u=(UserId) userList.get(0);
		this.paymentDetails=new PaymentDetailsImpl(u.getUserId());
		this.vehicleDetails=new LinkedList<VehicleDetails>();
		crit=s.createCriteria(UserVehicleId.class);
		crit.add(Restrictions.eq("user_id", u.getUserId()));
		crit.add(Restrictions.eq("client_id", clientid));
		List<UserVehicleId> vehicleList=crit.list();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			this.vehicleDetails.add(new VehicleDetailsImpl(vehicleList.get(it.next()).getUserVehicleId()));
		}
		
		this.tollPayments=new LinkedList<TollPayments>();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			Criteria c=s.createCriteria(VehicleTollUsageId.class);
			c.add(Restrictions.eq("uvh_id", vehicleList.get(it.next()).getUserVehicleId()));
			List<VehicleTollUsageId> vtuList=c.list();
			for(Iterator i=(Iterator) vtuList.iterator();i.hasNext();)
			{
				this.tollPayments.add(new TollPaymentsImpl(vtuList.get(i.next()).getVtuId()));
			}
		}
		this.balanceInfo=new BalanceInfoImpl(u.getUserId());
		s.close();
	}
	
	public PaymentDetails getPaymentDetails() {
		return paymentDetails;
	}
	public void setPaymentDetails(PaymentDetails paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	public List<VehicleDetails> getVehicleDetails() {
		return vehicleDetails;
	}
	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}
	public List<TollPayments> getTollPayments() {
		return tollPayments;
	}
	public void setTollPayments(List<TollPayments> tollPayments) {
		this.tollPayments = tollPayments;
	}
	public BalanceInfo getBalanceInfo() {
		return balanceInfo;
	}
	public void setBalanceInfo(BalanceInfo balanceInfo) {
		this.balanceInfo = balanceInfo;
	}
}
