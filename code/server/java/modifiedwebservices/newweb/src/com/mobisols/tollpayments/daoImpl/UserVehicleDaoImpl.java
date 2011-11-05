package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

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
	public List getActiveVehicles() {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("isActive",UserVehicleDao.VEHICLE_ACTIVE));
		return crit.list();
	}

	public List getStandByVehicles(){
		Session s =HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("isActive",UserVehicleDao.VEHICLE_STANDBY));
		return crit.list();
	}
	
	
}
