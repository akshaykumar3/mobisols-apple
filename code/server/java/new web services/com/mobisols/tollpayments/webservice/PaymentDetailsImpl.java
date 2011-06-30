package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.CcType;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.User;
import com.mobisols.tollpayments.hibernate.UserPaymentDetail;
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
	
	public PaymentDetailsImpl(int userId) {
		//TODO code to access database using hibernate
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserPaymentDetail.class);
		crit.add(Restrictions.eq("userId", userId));
		List<UserPaymentDetail> pd=crit.list();
		if(pd.isEmpty())
		{
			return;
		}
		Iterator it=pd.iterator();
		if(it.hasNext())
		{
			
			this.setCardNumber(pd.get(0).getCcNumber());
			this.setCcName(pd.get(0).getCcAcName());
			crit=s.createCriteria(CcType.class);
			crit.add(Restrictions.eq("ccTypeId", pd.get(0).getCcTypeId()));
			List<CcType> cctype=crit.list();
			this.setCardType(cctype.get(0).getName());
			this.setExpMonth(pd.get(0).getCcExpMonth());
			this.setExpYear(pd.get(0).getCcExpYear());
			this.setBankRouting(pd.get(0).getBankRouting());
			this.setBankAccount(pd.get(0).getBankAccount());
			this.setPaymentId(pd.get(0).getUpdId());
			this.setAddress1(pd.get(0).getAddress1());
			this.setAddress2(pd.get(0).getAddress2());
			this.setCcCVV(pd.get(0).getCcCvv());
			this.setCity(pd.get(0).getCity());
			this.setCountry(pd.get(0).getCountry());
			this.setPayPrefer(pd.get(0).getPayPrefer());
			this.setState(pd.get(0).getState());
			this.setZip(pd.get(0).getZip());
		}
	}
	
	public PaymentDetailsImpl() {
	}
	
	//TODO update about address of the user for payment detail
	public GeneralResponse postPaymentDetails(PaymentDetails pd,int clientId,int paymentId,int userId)
	{
		GeneralResponse response=new GeneralResponseImpl();
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		UserPaymentDetail upd=(UserPaymentDetail) s.get(UserPaymentDetail.class, paymentId);
		upd.setBankAccount(pd.getBankAccount());
		upd.setBankRouting(pd.getBankRouting());
		upd.setCcExpMonth(pd.getExpMonth());
		upd.setCcExpYear(pd.getExpYear());
		upd.setCcNumber(pd.getCardNumber());
		upd.setClientId(clientId);
		upd.setAddress1(pd.getAddress1());
		upd.setAddress2(pd.getAddress2());
		upd.setCcAcName(pd.getCcName());
		upd.setCcCvv(pd.getCcCVV());
		upd.setCity(pd.getCity());
		upd.setCountry(pd.getCountry());
		upd.setPayPrefer(pd.getPayPrefer());
		upd.setState(pd.getState());
		upd.setZip(pd.getZip());
		Criteria crit=s.createCriteria(CcType.class);
		crit.add(Restrictions.eq("clientId", clientId));
		crit.add(Restrictions.eq("name", pd.getCardType()));
		List<CcType> cc=crit.list();
		if(cc.isEmpty())
		{
			return null;
		}
		upd.setCcTypeId(cc.get(0).getCcTypeId());
		upd.setLastModifiedBy(userId);
		upd.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		((GeneralResponseImpl) response).setDescription("your account details have been updated successfully");
		return response;
	}
	@POST
	@Produces("text/plain")
	public String postPaymentDetails(@FormParam("json") String json,@FormParam("user_name") String user,
			@FormParam("client_id")int clientId,@FormParam("has_id")int hasId)
	{
		JsonConverter c=new JsonConverterImpl();
		GeneralResponse response ;
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", user));
		crit.add(Restrictions.eq("clientId", clientId));
		List<User> u=crit.list();
		if(u.isEmpty())
		{
			return null;
		}
		PaymentDetails pd=(PaymentDetails)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.PaymentDetails");
		if(hasId==1)
			response= postPaymentDetails(pd,clientId,pd.getPaymentId(),u.get(0).getUserId());
		else
		{
			
			crit=s.createCriteria(UserPaymentDetail.class);
			crit.add(Restrictions.eq("userId", u.get(0).getUserId()));
			crit.add(Restrictions.eq("clientId", clientId));
			List<UserPaymentDetail> upd=crit.list();
			if(upd.isEmpty())
			{
				return null;
			}
			response=postPaymentDetails(pd, clientId,upd.get(0).getUpdId(),u.get(0).getUserId());
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
