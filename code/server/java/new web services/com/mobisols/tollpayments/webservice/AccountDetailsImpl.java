package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.*;
import org.hibernate.criterion.*;
import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserVehicle;
import com.mobisols.tollpayments.hibernate.entity.VehicleTollUsage;

@Path("/AccountDetails")
public class AccountDetailsImpl implements AccountDetails{
	private String contactNo;
	private PaymentDetailsImpl paymentDetails;
	private List<VehicleDetails> vehicleDetails;
	private List<TollPayments> tollPayments;
	private BalanceInfo balanceInfo;
	private int userId;
	
	@GET
	@Produces("text/plain")
	public String getAccountDetails(@QueryParam("user_name") String user){
		HibernateSessionFactory.getSession();
		String request="";
		String status="";
		System.out.println("creating account details object");
		AccountDetails ac=new AccountDetailsImpl(user);
		System.out.println("created account details object");
		JsonConverter json=new JsonConverterImpl();
		String response = json.getJSON(request, status, ac);
		HibernateSessionFactory.closeSession();
		return response;
		
	}
	public AccountDetailsImpl() {
	}
	public AccountDetailsImpl(String user) {
		System.out.println("getting session factory");
		Session s= HibernateSessionFactory.getSession();
		
		if(s!=null)
		System.out.println("got Session factory");
		else
			System.out.println("errror in creating session factory");
		System.out.println("creating criteria");
		String SQL_QUERY ="from User user";
		  Query query = s.createQuery(SQL_QUERY);
		  for(Iterator i1=query.iterate();i1.hasNext();)
		  {
			  User insurance=(User)i1.next();
			  System.out.println("ID: " + insurance.getUserId());
		  }
		Criteria crit=s.createCriteria(User.class);
		//crit.createAlias("id", "u");
		crit.add(Restrictions.eq("userName", user));
		System.out.println("got criteria");
		List userList=crit.list();
		if(userList.isEmpty())
		{
			System.out.println("user list is empty");
			return;
		}
		User u=(User) ((User) userList.get(0));
		this.setContactNo(u.getContactNo());
		this.paymentDetails=new PaymentDetailsImpl(u.getUserPaymentDetails().getUpdId());
		this.vehicleDetails=new LinkedList<VehicleDetails>();
		Set <UserVehicle> vehicleList =u.getUserVehicle();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			 this.vehicleDetails.add(new VehicleDetailsImpl(((UserVehicle)it.next()).getUserVehicleId()));
		}
		
		this.tollPayments=new LinkedList<TollPayments>();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			Criteria c=s.createCriteria(VehicleTollUsage.class);
			c.add(Restrictions.eq("uvhId", ((UserVehicle)it.next()).getUserVehicleId()));
			List<VehicleTollUsage> vtuList=c.list();
			for(Iterator i=(Iterator) vtuList.iterator();i.hasNext();)
			{
				this.tollPayments.add(new TollPaymentsImpl(((VehicleTollUsage)i.next()).getVtuId()));
			}
		}
		this.balanceInfo=new BalanceInfoImpl(u.getUserBalance().getUbalId());
		this.setUserId(((User) userList.get(0)).getUserId());
	}
	
	protected void finalize(){
		HibernateSessionFactory.closeSession();
		}
	
	public PaymentDetailsImpl getPaymentDetails() {
		return paymentDetails;
	}
	public void setPaymentDetails(PaymentDetailsImpl paymentDetails) {
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
