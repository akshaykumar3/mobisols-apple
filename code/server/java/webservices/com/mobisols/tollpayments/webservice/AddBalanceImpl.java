package com.mobisols.tollpayments.webservice;

import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.FormParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.UserBalanceId;
import com.mobisols.tollpayments.hibernate.UserId;
import com.mobisols.tollpayments.myutils.MyUtils;

@Path("/AddBalance")
public class AddBalanceImpl implements AddBalance {

	private float amount;
	private String description;
	@POST
	@Produces("text/plain")
	public String addBalance(@FormParam("username") String user,@FormParam("json")String json,@FormParam("clientid")int clientId) {
		JsonConverter c=new JsonConverterImpl();
		AddBalance ad=new AddBalanceImpl();
		System.out.println(json);
		ad=(AddBalance)c.getObject(json,"com.mobisols.tollpayments.mockwebservices.AddBalance");
		System.out.println("got the gson object");
		Session s= HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		Criteria crit=s.createCriteria(UserId.class);
		crit.add(Restrictions.eq("user_name", user));
		crit.add(Restrictions.eq("client_id",clientId));
		List<UserId> u=crit.list();
		if(u.isEmpty())
			return "";
		crit=s.createCriteria(UserBalanceId.class);
		crit.add(Restrictions.eq("user_id", u.get(0).getUserId()));
		List<UserBalanceId> ubList = crit.list();
		if(ubList.isEmpty())
			return "";
		UserBalanceId ub=(UserBalanceId) s.get(UserBalanceId.class, ubList.get(0).getUbalId());
		ub.setBalance(ub.getBalance()+ad.getAmount());
		ub.setLastModifiedBy(-1);
		ub.setLastModifiedOn(new MyUtils().getCurrentTimeStamp());
		s.save(ub);
		GeneralResponse response =new GeneralResponseImpl(); 
		((GeneralResponseImpl) response).setDescription("successfully added " +ad.getAmount()+" to your account");
		String status="";
		String request="";
		tx.commit();
		String res= c.getJSON(request, status, response);
		HibernateSessionFactory.closeSession();
		return res;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
