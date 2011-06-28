package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.*;
import org.hibernate.criterion.*;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserVehicle;
import com.mobisols.tollpayments.hibernate.VehicleTollUsage;

@Path("/AccountDetails")
public class AccountDetailsImpl implements AccountDetails{
	private String contactNo;
	private PaymentDetails paymentDetails;
	private List<VehicleDetails> vehicleDetails;
	private List<TollPayments> tollPayments;
	private BalanceInfo balanceInfo;
	private int userId;
	
	@GET
	@Produces("text/plain")
	public String getAccountDetails(@QueryParam("user_name") String user,@QueryParam("client_id")int clientId){
		HibernateSessionFactory.getSession();
		String request="";
		String status="";
		System.out.println(user+"  "+clientId);
		System.out.println("creating account details object");
		AccountDetails ac=new AccountDetailsImpl(user,clientId);
		System.out.println("created account details object");
		JsonConverter json=new JsonConverterImpl();
		String response = json.getJSON(request, status, ac);
		HibernateSessionFactory.closeSession();
		return response;
		
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
		Criteria crit=s.createCriteria(User.class);
		List<User> uList=crit.list();
		//crit.createAlias("id", "u");
		crit.add(Restrictions.eq("userName", user));
		crit.add(Restrictions.eq("clientId", clientid));
		System.out.println("got criteria");
		List<User> userList=crit.list();
		if(userList.isEmpty())
		{
			System.out.println("user list is empty");
			return;
		}
		UserId u=(UserId) userList.get(0).getId();
		this.setContactNo(u.getContactNo());
		this.paymentDetails=new PaymentDetailsImpl(u.getUserId());
		this.vehicleDetails=new LinkedList<VehicleDetails>();
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("user_id", u.getUserId()));
		crit.add(Restrictions.eq("client_id", clientid));
		List<UserVehicle> vehicleList=crit.list();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			 this.vehicleDetails.add(new VehicleDetailsImpl(((UserVehicle)it.next()).getId().getUserVehicleId()));
		}
		
		this.tollPayments=new LinkedList<TollPayments>();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			Criteria c=s.createCriteria(VehicleTollUsage.class);
			c.add(Restrictions.eq("uvh_id", ((UserVehicle)it.next()).getId().getUserVehicleId()));
			List<VehicleTollUsage> vtuList=c.list();
			for(Iterator i=(Iterator) vtuList.iterator();i.hasNext();)
			{
				this.tollPayments.add(new TollPaymentsImpl(((VehicleTollUsage)i.next()).getId().getVtuId()));
			}
		}
		this.balanceInfo=new BalanceInfoImpl(u.getUserId());
		this.setUserId(userList.get(0).getId().getUserId());
	}
	
	protected void finalize(){
		HibernateSessionFactory.closeSession();
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setContactNo(String mobileNo) {
		this.contactNo = mobileNo;
	}
	public String getContactNo() {
		return contactNo;
	}
}
