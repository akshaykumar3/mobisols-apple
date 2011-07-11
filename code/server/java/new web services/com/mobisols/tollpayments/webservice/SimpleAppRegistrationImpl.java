package com.mobisols.tollpayments.webservice;

import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.User;
import com.mobisols.tollpayments.hibernate.entity.UserBalance;
import com.mobisols.tollpayments.hibernate.entity.UserPaymentDetail;
import com.mobisols.tollpayments.myutils.MyUtils;

@Path("/SimpleAppRegistration")
public class SimpleAppRegistrationImpl implements SimpleAppRegistration {

	private String deviceUuid;
	private String deviceType;
	private String password;
	
	public SimpleAppRegistrationImpl(){
		
	}
	
	@POST
	public String postAppRegistration(@FormParam("deviceUuid")String deviceUuid,@FormParam("deviceType")String deviceType,
			@FormParam("password")String password)
	{
		MyUtils mu=new MyUtils();
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(User.class);
		crit.add(Restrictions.eq("userName", deviceUuid+deviceType));
		List<User> ul=crit.list();
		if(!ul.isEmpty())
		{
			System.out.println("User already exists");
			Transaction tx=s.beginTransaction();
			User u=(User) s.get(User.class, ul.get(0).getUserId());
			u.setUserName(u.getUserName()+mu.getCurrentTimeStamp());
			u.setLastModifiedBy(-1);
			u.setLastModifiedOn(mu.getCurrentTimeStamp());
			s.save(u);
			tx.commit();
		}
		Transaction tx=s.beginTransaction();
		User u=new User();
		u.setClientId(1);
		u.setContactNo(null);
		u.setCreatedOn(mu.getCurrentTimeStamp());
		u.setIsActive("y");
		u.setLastLoginTime(mu.getCurrentTimeStamp());
		u.setLastModifiedBy(-1);
		u.setLastModifiedOn(mu.getCurrentTimeStamp());
		u.setLocale("");
		u.setPassword(password);
		u.setUserName(deviceUuid+deviceType);
		u.setUtypeId(1);
		
		UserBalance ub= new UserBalance();
		ub.setBalance(0.0);
		ub.setClientId(1);
		ub.setCreatedOn(mu.getCurrentTimeStamp());
		ub.setLastModifiedBy(-1);
		ub.setLastModifiedOn(mu.getCurrentTimeStamp());
		u.setUserBalance(ub);
		
		UserPaymentDetail upd = new UserPaymentDetail();
		upd.setCreatedOn(mu.getCurrentTimeStamp());
		upd.setClientId(1);
		upd.setLastModifiedBy(-1);
		upd.setLastModifiedOn(mu.getCurrentTimeStamp());
		upd.setPayPrefer("c");
		u.setUserPaymentDetails(upd);
		
		s.save(u);
		tx.commit();
		HibernateSessionFactory.closeSession();
		return null;
	}
	
	public String getId() {
		return deviceUuid;
	}
	public void setId(String id) {
		deviceUuid = id;
	}
	public String getDeviceName() {
		return deviceType;
	}
	public void setDeviceName(String deviceName) {
		this.deviceType = deviceName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
