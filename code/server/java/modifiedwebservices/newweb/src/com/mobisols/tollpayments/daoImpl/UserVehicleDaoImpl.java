package com.mobisols.tollpayments.daoImpl;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserVehicle;

public class UserVehicleDaoImpl implements UserVehicleDao {

	
	@Override
	public UserVehicle getVehicle(String reg, String state,int userId) {
		Session s= HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("registrationNo", reg));
		crit.add(Restrictions.eq("registeredState", state));
		crit.add(Restrictions.eq("userId", userId));
		return (UserVehicle)crit.uniqueResult();
	}

	@Override
	public void update(UserVehicle uv) {
		Session s=HibernateSessionFactory.getSession();
		Transaction t=s.beginTransaction();
		s.update(uv);
		t.commit();
	}

	@Override
	public void delete(UserVehicle uv) {
		Session s= HibernateSessionFactory.getSession();
		Transaction t= s.beginTransaction();
		s.delete(uv);
		t.commit();
	}

	@Override
	public void save(UserVehicle uv) {
		Session s=HibernateSessionFactory.getSession();
		Transaction t=s.beginTransaction();
		s.save(uv);
		t.commit();
	}

	@Override
	public UserVehicle getVehicle(int vehicleId) {
		Session s= HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userVehicleId", vehicleId));
		return (UserVehicle)crit.uniqueResult();
	}

	@Override
	public List getActiveVehicles(String username) {
		Session s = HibernateSessionFactory.getSession();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
        BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
        UserDao userDao  =  (UserDao ) factory.getBean("dao.tollpayments.userDao");
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userId", userDao.getUser(username).getUserId()));
		crit.add(Restrictions.eq("isActive",UserVehicleDao.VEHICLE_ACTIVE));
		return crit.list();
	}

	public List getStandByVehicles(String username){
		Session s =HibernateSessionFactory.getSession();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
        BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
        UserDao userDao  =  (UserDao ) factory.getBean("dao.tollpayments.userDao");
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userId", userDao.getUser(username).getUserId()));
		crit.add(Restrictions.eq("isActive",UserVehicleDao.VEHICLE_STANDBY));
		return crit.list();
	}
	public List<UserVehicle> getAllActiveVehicles(){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("isActive",UserVehicleDao.VEHICLE_ACTIVE));
		return crit.list();
	}

	@Override
	public List<UserVehicle> getActiveVehicles(String reg, String state) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("registrationNo", reg));
		crit.add(Restrictions.eq("registeredState", state));
		crit.add(Restrictions.disjunction().add(Restrictions.eq("isActive", "Y")).add(Restrictions.eq("isActive", "T")));
		crit.addOrder(Order.desc("vehicleEndDate"));
		return crit.list();
	}

	@Override
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp expiry) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("registrationNo", reg));
		crit.add(Restrictions.eq("registeredState", state));
		crit.add(Restrictions.disjunction().add(Restrictions.eq("isActive", "Y")).add(Restrictions.eq("isActive", "T")));
		crit.add(Restrictions.eq("vehicleEndDate", expiry));
		crit.addOrder(Order.desc("vehicleStartDate"));
		return crit.list();
	}
	
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp start,Timestamp expiry) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("registrationNo", reg));
		crit.add(Restrictions.eq("registeredState", state));
		crit.add(Restrictions.disjunction().add(Restrictions.eq("isActive", "Y")).add(Restrictions.eq("isActive", "T")));
		crit.add(Restrictions.eq("vehicleEndDate", expiry));
		crit.add(Restrictions.eq("vehicleStartDate", start));
		crit.addOrder(Order.desc("userVehicleId"));
		return crit.list();
	}

	
}
