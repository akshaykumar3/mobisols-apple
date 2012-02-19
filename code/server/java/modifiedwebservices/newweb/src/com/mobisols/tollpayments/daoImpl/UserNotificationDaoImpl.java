/**
 * 
 */
package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserNotificationDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.UserNotification;

/**
 * @author Raghu
 *
 */
public class UserNotificationDaoImpl implements UserNotificationDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserNotificationDao#getPendingCommands(java.lang.String)
	 */
	@Override
	public List<UserNotification> getPendingCommands(String deviceId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserNotification.class);
		crit.add(Restrictions.eq("status", UserNotificationDao.COMMAND_PENDING));
		crit.add(Restrictions.eq("deviceId", deviceId));
		crit.add(Restrictions.eq("userNotificationType", UserNotificationDao.USER_COMMAND));
		return crit.list();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserNotificationDao#getPendingNotifications(java.lang.String)
	 */
	@Override
	public List<UserNotification> getPendingNotifications(String deviceId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserNotification.class);
		crit.add(Restrictions.eq("status", UserNotificationDao.NOTIFICATION_PENDING));
		crit.add(Restrictions.eq("deviceId", deviceId));
		crit.add(Restrictions.eq("userNotificationType", UserNotificationDao.USER_NOTIFICATION));
		return crit.list();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserNotificationDao#save(com.mobisols.tollpayments.model.UserNotification)
	 */
	@Override
	public void save(UserNotification userNotification) {
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.save(userNotification);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserNotificationDao#update(com.mobisols.tollpayments.model.UserNotification)
	 */
	@Override
	public void update(UserNotification userNotification) {
		Session s = HibernateSessionFactory.getSession();
		Transaction tx = s.beginTransaction();
		s.update(userNotification);
		tx.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserNotificationDao#get(java.lang.Integer)
	 */
	@Override
	public UserNotification get(Integer notificationId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(UserNotification.class);
		crit.add(Restrictions.eq("userNotificationId", notificationId));
		return (UserNotification) crit.uniqueResult();
	}
	

}
