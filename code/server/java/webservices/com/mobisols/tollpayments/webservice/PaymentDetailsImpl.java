package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.CcTypeDAO;
import com.mobisols.tollpayments.hibernate.CcTypeId;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserPaymentDetailId;
import com.mobisols.tollpayments.myutils.MyUtils;
@Path("/PaymentDetails")
public class PaymentDetailsImpl implements PaymentDetails{

	private String cardNumber;
	private String ccName;
	private Integer expMonth;
	private Date expYear;
	private String cardType;
	private Integer bankRouting;
	private Long bankAccount;
	private int paymentId;
	

	public PaymentDetailsImpl(int userId) {
		//TODO code to access database using hibernate
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserPaymentDetailId.class);
		crit.add(Restrictions.eq("user_id", userId));
		List<UserPaymentDetailId> pd=crit.list();
		if(pd.isEmpty())
		{
			return;
		}
		Iterator it=pd.iterator();
		if(it.hasNext())
		{
			
			this.setCardNumber(pd.get(0).getCcNumber());
			this.setCcName(pd.get(0).getCcAcName());
			List<CcTypeId> cctype=new CcTypeDAO().findByProperty("cc_type_id", pd.get(0).getCcTypeId());
			this.setCardType(cctype.get(0).getDescription());
			this.setExpMonth(pd.get(0).getCcExpMonth());
			this.setExpYear(pd.get(0).getCcExpYear());
			this.setBankRouting(pd.get(0).getBankRouting());
			this.setBankAccount(pd.get(0).getBankAccount());
			this.setPaymentId(pd.get(0).getUpdId());
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
		UserPaymentDetailId upd=(UserPaymentDetailId) s.get(UserPaymentDetailId.class, paymentId);
		upd.setBankAccount(pd.getBankAccount());
		upd.setBankRouting(pd.getBankRouting());
		upd.setCcExpMonth(pd.getExpMonth());
		upd.setCcExpYear(pd.getExpYear());
		upd.setCcNumber(pd.getCardNumber());
		upd.setClientId(clientId);
		Criteria crit=s.createCriteria(CcTypeId.class);
		crit.add(Restrictions.eq("client_id", clientId));
		crit.add(Restrictions.eq("name", pd.getCardType()));
		List<CcTypeId> cc=crit.list();
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
			@FormParam("client_id")int clientId,@FormParam("")int hasId)
	{
		JsonConverter c=new JsonConverterImpl();
		GeneralResponse response ;
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserId.class);
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id", clientId));
		List<UserId> u=crit.list();
		if(u.isEmpty())
		{
			return null;
		}
		PaymentDetails pd=(PaymentDetails)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.PaymentDetails");
		if(hasId==1)
			response= postPaymentDetails(pd,clientId,pd.getPaymentId(),u.get(0).getUserId());
		else
		{
			
			crit=s.createCriteria(UserPaymentDetailId.class);
			crit.add(Restrictions.eq("user_id", u.get(0).getUserId()));
			crit.add(Restrictions.eq("client_id", clientId));
			List<UserPaymentDetailId> upd=crit.list();
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
}
