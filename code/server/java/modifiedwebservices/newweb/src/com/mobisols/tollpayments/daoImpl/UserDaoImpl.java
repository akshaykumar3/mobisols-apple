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

public class UserDaoImpl implements UserDao {

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

	public void save(User u) {
		// TODO Auto-generated method stub
		Session s=HibernateSessionFactory.getSession();
		Transaction tx=s.beginTransaction();
		s.saveOrUpdate(u);
		tx.commit();
		
	}

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
	
	public void update(User u){
		Session s = HibernateSessionFactory.getSession();
		Transaction t= s.beginTransaction();
		s.update(u);
		t.commit();
	}
}
