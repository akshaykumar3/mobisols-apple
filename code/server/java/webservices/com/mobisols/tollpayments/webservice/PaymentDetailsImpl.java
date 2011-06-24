package com.mobisols.tollpayments.webservice;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.CcTypeDAO;
import com.mobisols.tollpayments.hibernate.CcTypeId;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.hibernate.UserPaymentDetailId;
@Path("/PaymentDetails")
public class PaymentDetailsImpl implements PaymentDetails{

	private String cardNumber;
	private String ccName;
	private Integer expMonth;
	private Date expYear;
	private String cardType;
	private Integer bankRouting;
	private Long bankAccount;
	
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
		}
		s.close();
		
	}
	
	public PaymentDetailsImpl() {
	}
	
	@POST
	@Produces("text/plain")
	public String postPaymentDetails(@QueryParam("json") String json,@QueryParam("username") String user)
	{
		JsonConverter c=new JsonConverterImpl();
		PaymentDetails pd=(PaymentDetails)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.PaymentDetails");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponseImpl();
		((GeneralResponseImpl) response).setDescription("your account details have been updated successfully");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
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
}
