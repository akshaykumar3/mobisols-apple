package com.mobisols.tollpayments.daoImpl;

import java.util.Iterator;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mobisols.tollpayments.dao.MakeDao;
import com.mobisols.tollpayments.dao.ModelDao;
import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.Model;

public class ModelDaoImpl implements ModelDao {
	
	public Model getModel(int makeId,String name){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Model.class);
		crit.add(Restrictions.eq("name", name));
		crit.add(Restrictions.eq("makeId", makeId));
		return (Model) crit.uniqueResult();
	}
	
	public Model getModel(String make,String model){
		Session s =HibernateSessionFactory.getSession();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
		BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
	    MakeDao makeDao  =  (MakeDao ) factory.getBean("dao.tollpayments.makeDao");
	    Criteria crit = s.createCriteria(Model.class);
	    crit.add(Restrictions.eq("name", model));
	    if(makeDao.getMake(make) == null)
	    {
	    	return null;
	    }
	    for(Iterator<Model> it  = makeDao.getMake(make).getModel().iterator();it.hasNext();)
	    {
	    	Model m = it.next();
	    	System.out.println(m.getName());
	    	System.out.println(m.getMakeId());
	    }
	    System.out.println(makeDao.getMake(make).getMakeId());
	    crit.add(Restrictions.eq("makeId", makeDao.getMake(make).getMakeId()));
	    return (Model) crit.uniqueResult();
	}
}
