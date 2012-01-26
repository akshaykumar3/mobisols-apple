package com.mobisols.tollpayments.daoImpl;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.User;

// TODO: Auto-generated Javadoc
/**
 * The Class UserDaoImpl.
 */
public class UserDaoImpl implements UserDao {

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserDao#getUser(java.lang.String)
	 */
	public User getUser(String username)
	{
		Session s=HibernateSessionFactory.getSession();
		Criteria c=s.createCriteria(User.class);
		c.add(Restrictions.eq("userName", username));
		List userList=c.list();
		if(userList.isEmpty())
		{
			System.out.println("user list is empty");
			return null;
		}
		User u=(User) ((User) userList.get(0));
		return u;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserDao#save(com.mobisols.tollpayments.model.User)
	 */
	public void save(User u) {
		// TODO Auto-generated method stub
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.saveOrUpdate(u);
		tx.commit();
		
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserDao#getUserList()
	 */
	@Override
	public List<String> getUserList() {
		List<String> u=new LinkedList<String>();
		Session s=HibernateSessionFactory.getSession();
		Criteria c=s.createCriteria(User.class);
		List<User> user=c.list();
		for(Iterator it=user.iterator();it.hasNext();)
			u.add(((User)it.next()).getUserName());
		return u;
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserDao#update(com.mobisols.tollpayments.model.User)
	 */
	public void update(User u){
		Session s = HibernateSessionFactory.getSession();
		Transaction t= s.beginTransaction();
		s.update(u);
		t.commit();
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.UserDao#getUser(int)
	 */
	@Override
	public User getUser(int userId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria c=s.createCriteria(User.class);
		c.add(Restrictions.eq("userId", userId));
		List userList=c.list();
		if(userList.isEmpty())
		{
			System.out.println("user list is empty");
			return null;
		}
		User u=(User) ((User) userList.get(0));
		return u;
	}
}
