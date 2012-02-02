package com.mobisols.tollpayments.daoImpl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserVehicleHistory;

// TODO: Auto-generated Javadoc
/**
 * The Class UserVehicleHistoryDaoImpl.
 */
public class UserVehicleHistoryDaoImpl implements UserVehicleHistoryDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getLatestUvhId(int)
	 */
	public int getLatestUvhId(int userVehicleId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("userVehicleId", userVehicleId));
		crit.addOrder(Order.desc("startDate"));
		List<UserVehicleHistory> uvh=crit.list();
		return uvh.get(0).getUvhId();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getAllActiveVehicles()
	 */
	@Override
	public List<UserVehicleHistory> getAllActiveVehicles() {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		return crit.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getAllDistinctVehicles(int, int)
	 */
	public List getAllDistinctVehicles(int from,int to) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.ge("uvhId", from));
		crit.add(Restrictions.le("uvhId", to));
		ProjectionList projectionList = Projections.projectionList();
        projectionList.add(Projections.property("registrationNo"));
        projectionList.add(Projections.property("registeredState"));
        crit.setProjection(Projections.distinct(projectionList));
        //crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        return crit.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getHistory(java.lang.String, java.lang.String, int, int)
	 */
	public List<UserVehicleHistory> getHistory(String regNo,String state,int from,int to){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.ge("uvhId", from));
		if(to!=-1)
			crit.add(Restrictions.le("uvhId", to));
		crit.add(Restrictions.eq("registrationNo", regNo));
		crit.add(Restrictions.eq("registeredState", state));
		crit.addOrder(Order.asc("uvhId"));
        return crit.list();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getUvhId(java.lang.String, java.lang.String, java.util.Date)
	 */
	@Override
	public UserVehicleHistory getUvh(String regNo, String state, Date date) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("registrationNo", regNo));
		crit.add(Restrictions.eq("registeredState", state));
		crit.add(Restrictions.le("vehicleStartDate", new Timestamp(date.getTime())));
		crit.add(Restrictions.ge("vehicleEndDate", new Timestamp(date.getTime())));
		crit.add(Restrictions.le("startDate", new Timestamp(date.getTime())));
		crit.add(Restrictions.ge("endDate", new Timestamp(date.getTime())));
		crit.addOrder(Order.desc("uvhId"));
		List l = crit.list();
		if(l.isEmpty())
			return null;
		else
			return (UserVehicleHistory) l.get(0);
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getDateAdded(java.lang.Integer)
	 */
	@Override
	public Timestamp getDateAdded(Integer userVehicleId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("userVehicleId", userVehicleId));
		crit.add(Restrictions.eq("action","insert"));
		UserVehicleHistory uvh = (UserVehicleHistory) crit.uniqueResult();
		return uvh.getStartDate();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getDateDeleted(java.lang.Integer)
	 */
	@Override
	public Timestamp getDateDeleted(Integer userVehicleId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("userVehicleId", userVehicleId));
		crit.add(Restrictions.eq("action", "delete"));
		UserVehicleHistory uvh =  (UserVehicleHistory) crit.uniqueResult();
		if(uvh!=null)
			return uvh.getEndDate();
		return null;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserVehicleHistoryDao#getVehicleHistory(int, java.sql.Timestamp, java.sql.Timestamp)
	 */
	@Override
	public List<UserVehicleHistory> getVehicleHistory(int vehicleId,
			Timestamp fromDate, Timestamp toDate) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserVehicleHistory.class);
		crit.add(Restrictions.eq("userVehicleId", vehicleId));
		crit.add(Restrictions.ge("startDate", fromDate));
		crit.add(Restrictions.le("endDate", toDate));
		return crit.list();
	}

}
