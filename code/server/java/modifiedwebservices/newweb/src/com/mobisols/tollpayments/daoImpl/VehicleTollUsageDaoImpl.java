package com.mobisols.tollpayments.daoImpl;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleTollUsage;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollOperator;


// TODO: Auto-generated Javadoc
/**
 * The Class VehicleTollUsageDaoImpl.
 */
public class VehicleTollUsageDaoImpl implements VehicleTollUsageDao {
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getNonPaidTollUsage()
	 */
	public List<VehicleTollUsage> getNonPaidTollUsage(){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(VehicleTollUsage.class);
		crit.add(Restrictions.eq("ptranId",-1));
		return crit.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getNonPaidTollUsageByVehicle()
	 */
	public List getNonPaidTollUsageByVehicle()
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select tollUsage.vtuId,tollUsage.uvhId,vehicle.userId,tollOperator.tollOperatorId,tollPriceHistory.sellingPrice"
			+" from VehicleTollUsage  tollUsage,UserVehicleHistory  vehicle,TollLocation  tollLocation,TollOperator  tollOperator,TollPriceHistory tollPriceHistory"
			+" where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			" AND tollLocation.tollOperatorId=tollOperator.TollOPeratorId AND tollUsage.tphId=tollPriceHistory.tphId";
		Query query = s.createQuery(q);
		return query.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getNonPaidTollUsageByUser()
	 */
	public List getNonPaidTollUsageByUser()
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select vehicle.userId,tollOperator.tollOperatorId,sum(tollPriceHistory.sellingPrice)"
			+" from VehicleTollUsage tollUsage, UserVehicleHistory vehicle,com.mobisols.tollpayments.model.TollLocation  tollLocation,com.mobisols.tollpayments.model.TollOperator tollOperator,TollPriceHistory  tollPriceHistory"
			+" where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			" AND tollLocation.tollOperatorId=tollOperator.tollOperatorId AND tollUsage.tphId=tollPriceHistory.tphId"
			+" group by vehicle.userId,tollOperator.tollOperatorId";
		Query query=s.createQuery(q);
		return query.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getNonPaidTolls(int, int)
	 */
	public List getNonPaidTolls(int userId,int tollOperatorId)
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select tollUsage.vtuId,tollUsage.uvhId,vehicle.userId,tollOperator.tollOperatorId,tollPriceHistory.sellingPrice"
			+" from VehicleTollUsage tollUsage,UserVehicleHistory vehicle,com.mobisols.tollpayments.model.TollLocation tollLocation,com.mobisols.tollpayments.model.TollOperator tollOperator,TollPriceHistory tollPriceHistory"
			+" where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			" AND tollLocation.tollOperatorId=tollOperator.tollOperatorId AND tollUsage.tphId=tollPriceHistory.tphId"+
			" AND tollOperator.tollOperatorId= '"+tollOperatorId+"' AND vehicle.userId='"+userId+
			"' order by tollUsage.timestamp";
		Query query=s.createQuery(q);
		return query.list();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getVehicleTollUsage(int)
	 */
	public VehicleTollUsage getVehicleTollUsage(int vehicleTollUsageId)
	{
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleTollUsage.class);
		crit.add(Restrictions.eq("vtuId", vehicleTollUsageId));
		return (VehicleTollUsage)crit.uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#save(com.mobisols.tollpayments.model.VehicleTollUsage)
	 */
	@Override
	public void save(VehicleTollUsage vt) {
		Session s=HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.saveOrUpdate(vt);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.VehicleTollUsageDao#getTollUsage(int, java.sql.Timestamp, java.sql.Timestamp)
	 */
	@Override
	public List<VehicleTollUsage> getTollUsage(int tollLocationId,
			Timestamp fromDate, Timestamp toDate) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(VehicleTollUsage.class);
		crit.add(Restrictions.eq("tollLocId", tollLocationId));
		crit.add(Restrictions.between("timestamp", fromDate, toDate));
		return crit.list();
	}
}
