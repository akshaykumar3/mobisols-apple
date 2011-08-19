package com.mobisols.tollpayments.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserVehicle;

public class UserVehicleDaoImpl implements UserVehicleDao {

	@Override
	public UserVehicle getVehicle(String reg, String state,int userId) {
		
		return null;
	}

	@Override
	public void update(UserVehicle uv) {
		Session s=HibernateSessionFactory.getSession();
		Transaction t=s.beginTransaction();
		s.saveOrUpdate(uv);
		t.commit();
	}

	@Override
	public void delete(UserVehicle uv) {
		
		
	}

	@Override
	public void save(UserVehicle uv) {
		Session s=HibernateSessionFactory.getSession();
		Transaction t=s.beginTransaction();
		s.save(uv);
		t.commit();
	}

}
