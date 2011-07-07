package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.CcType;
import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserPaymentDetails;
import com.mobisols.tollpayments.myutils.MyUtils;
@Path("/PaymentDetails")
public class PaymentDetailsImpl implements PaymentDetails{

	private String ccName;
	private String cardNumber;
	private Integer expMonth;
	private int ccCVV;
	private Date expYear;
	private String cardType;
	private Integer bankRouting;
	private Long bankAccount;
	private int paymentId;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String zip;
	private String payPrefer;
	
	public PaymentDetailsImpl(int updId) {
		//TODO code to access database using hibernate
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserPaymentDetails.class);
		String hql ="from UserPaymentDetail userpayment where userpayment.userId=:userId";
		Query query = s.createQuery(hql);
		query.setInteger("updId",updId);
        UserPaymentDetails pd = (UserPaymentDetails) query.uniqueResult();
			this.setCardNumber(pd.getCcNumber());
			this.setCcName(pd.getCcAcName());
			this.setCardType(pd.getCcType().getDescription());
			this.setExpMonth(pd.getCcExpMonth());
			this.setExpYear(pd.getCcExpYear());
			this.setBankRouting(pd.getBankRouting());
			this.setBankAccount(pd.getBankAccount());
			this.setPaymentId(pd.getUpdId());
			this.setAddress1(pd.getAddress1());
			this.setAddress2(pd.getAddress2());
			this.setCcCVV(pd.getCcCvv());
			this.setCity(pd.getCity());
			this.setCountry(pd.getCountry());
			this.setPayPrefer(pd.getPayPrefer());
			this.setState(pd.getState());
			this.setZip(pd.getZip());
		}

	
	public PaymentDetailsImpl() {
	}
	
	//TODO update about address of the user for payment detail
	public GeneralResponse postPaymentDetails(UserPaymentDetails upd,int paymentId,int userId)
	{
		GeneralResponse response=new GeneralResponseImpl();
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		PaymentDetailsImpl pd=(PaymentDetailsImpl) s.get(UserPaymentDetails.class, paymentId);
		upd.setBankAccount(pd.getBankAccount());
		upd.setBankRouting(pd.getBankRouting());
		upd.setCcExpMonth(pd.getExpMonth());
		upd.setCcExpYear(pd.getExpYear());
		upd.setCcNumber(pd.getCardNumber());
		//TODO update clientId setter in post methods
		upd.setClientId(1);
		upd.setAddress1(pd.getAddress1());
		upd.setAddress2(pd.getAddress2());
		upd.setCcAcName(pd.getCcName());
		upd.setCcCvv(pd.getCcCVV());
		upd.setCity(pd.getCity());
		upd.setCountry(pd.getCountry());
		upd.setPayPrefer(pd.getPayPrefer());
		upd.setState(pd.getState());
		upd.setZip(pd.getZip());
		upd.setCcTypeId(pd.getCardType());
		upd.setLastModifiedBy(userId);
		upd.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		((GeneralResponseImpl) response).setDescription("your account details have been updated successfully");
		return response;
	}
	@POST
	@Produces("text/plain")
	public String postPaymentDetails(@FormParam("json") String json,@FormParam("user_name") String user,@FormParam("has_id")int hasId)
	{
		JsonConverter c=new JsonConverterImpl();
		GeneralResponse response ;
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		List<User> u=crit.list();
		if(u.isEmpty())
		{
			return null;
		}
		PaymentDetails pd=(PaymentDetails)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.PaymentDetails");
		if(hasId==1)
			response= postPaymentDetails(pd,pd.getPaymentId(),u.get(0).getUserId());
		else
		{
			
			crit=s.createCriteria(UserPaymentDetails.class);
			crit.add(Restrictions.eq("userId", u.get(0).getUserId()));
			List<UserPaymentDetails> upd=crit.list();
			if(upd.isEmpty())
			{
				return null;
			}
			response=postPaymentDetails(pd,upd.get(0).getUpdId(),u.get(0).getUserId());
		}
		//TODO update general response details
		String status="";
		String request="";
		String res= c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public Integer getExpMonth() {
		return expMonth;
	}

	public void setExpMonth(Integer integer) {
		this.expMonth = integer;
	}

	public Date getExpYear() {
		return expYear;
	}

	public void setExpYear(Date expYear) {
		this.expYear = expYear;
	}

	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public Integer getBankRouting() {
		return bankRouting;
	}
	public void setBankRouting(Integer integer) {
		this.bankRouting = integer;
	}
	public Long getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(Long long1) {
		this.bankAccount = long1;
	}

	public void setCcName(String ccName) {
		this.ccName = ccName;
	}

	public String getCcName() {
		return ccName;
	}
	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public int getCcCVV() {
		return ccCVV;
	}

	public void setCcCVV(int ccCVV) {
		this.ccCVV = ccCVV;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPayPrefer() {
		return payPrefer;
	}

	public void setPayPrefer(String payPrefer) {
		this.payPrefer = payPrefer;
	}



}
