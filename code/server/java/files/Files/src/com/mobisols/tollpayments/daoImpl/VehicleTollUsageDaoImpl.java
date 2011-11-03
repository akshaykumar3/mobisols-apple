package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.VehicleTollUsage;

public class VehicleTollUsageDaoImpl implements VehicleTollUsageDao {
	
	public List getNonPaidTollUsageByVehicle()
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select tollUsage.vtuId,tollUsage.uvhId,vehicle.userId,tollOperator.tollOperatorId,tollPriceHistory.sellingPrice"
			+"from VehicleTollUsage tollUsage,UserVehicleHistory vehicle,TollLocation tollLocation,TollOperator tollOperator,TollPriceHistory tollPriceHistory"
			+"where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			"AND tollLocation.tollOperatorId=tollOperator.TollOPeratorId AND tollUsage.tphId=tollPriceHistory.tphId";
		Query query = s.createQuery(q);
		return query.list();
	}
	
	public List getNonPaidTollUsageByUser()
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select vehicle.userId,tollOperator.tollOperatorId,sum(tollPriceHistory.sellingPrice)"
			+"from VehicleTollUsage tollUsage,UserVehicleHistory vehicle,TollLocation tollLocation,TollOperator tollOperator,TollPriceHistory tollPriceHistory"
			+"where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			"AND tollLocation.tollOperatorId=tollOperator.TollOPeratorId AND tollUsage.tphId=tollPriceHistory.tphId"
			+"group by vehicle.userId,tollOperator.tollOperatorId";
		Query query=s.createQuery(q);
		return query.list();
	}
	
	public List getNonPaidTolls(int userId,int tollOperatorId)
	{
		Session s=HibernateSessionFactory.getSession();
		String q="Select tollUsage.vtuId,tollUsage.uvhId,vehicle.userId,tollOperator.tollOperatorId,tollPriceHistory.sellingPrice"
			+"from VehicleTollUsage tollUsage,UserVehicleHistory vehicle,TollLocation tollLocation,TollOperator tollOperator,TollPriceHistory tollPriceHistory"
			+"where tollUsage.ptranId='-1' AND vehicle.uvhId=tollUsage.uvhId AND tollUsage.tollLocId=tollLocation.tollLocationId"+
			"AND tollLocation.tollOperatorId=tollOperator.TollOPeratorId AND tollUsage.tphId=tollPriceHistory.tphId"+
			"AND tollOperator.tollOperatorId="+tollOperatorId+"AND vehicle.userId="+userId+
			"oder by tollUsage.timestamp";
		Query query=s.createQuery(q);
		return query.list();
	}
	
	public VehicleTollUsage getVehicleTollUsage(int vehicleTollUsageId)
	{
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleTollUsage.class);
		crit.add(Restrictions.eq("vtuId", vehicleTollUsageId));
		return (VehicleTollUsage)crit.uniqueResult();
	}

	@Override
	public void save(VehicleTollUsage vt) {
		Session s=HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.saveOrUpdate(vt);
		tx.commit();
	}
}
