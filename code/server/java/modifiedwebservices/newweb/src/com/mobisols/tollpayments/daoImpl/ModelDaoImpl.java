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

// TODO: Auto-generated Javadoc
/**
 * The Class ModelDaoImpl.
 */
public class ModelDaoImpl implements ModelDao {
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ModelDao#getModel(int, java.lang.String)
	 */
	public Model getModel(int makeId,String name){
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Model.class);
		crit.add(Restrictions.eq("name", name));
		crit.add(Restrictions.eq("makeId", makeId));
		return (Model) crit.uniqueResult();
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ModelDao#getModel(java.lang.String, java.lang.String)
	 */
	public Model getModel(String make,String model){
		Session s =HibernateSessionFactory.getSession();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
		BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
	    MakeDao makeDao  =  (MakeDao ) factory.getBean("dao.tollpayments.makeDao");
	    Criteria crit = s.createCriteria(Model.class);
	    crit.add(Restrictions.eq("name", model));
	    if(makeDao.getMake(make) == null)
	    {
	    	System.out.println("Make is Null");
	    	return null;
	    }
	   /* for(Iterator<Model> it  = makeDao.getMake(make).getModel().iterator();it.hasNext();)
	    {
	    	Model m = it.next();
	    	System.out.println(m.getName());
	    	System.out.println(m.getMakeId());
	    }*/
	    System.out.println(makeDao.getMake(make).getMakeId());
	    crit.add(Restrictions.eq("makeId", makeDao.getMake(make).getMakeId()));
	    System.out.println(crit.list().size());
	    Model m = (Model) crit.uniqueResult();
	    try{
	    	System.out.println(m.getName());
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    return m;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.dao.ModelDao#getModel(java.lang.Integer)
	 */
	@Override
	public Model getModel(Integer modelId) {
		Session s = HibernateSessionFactory.getSession();
		Criteria crit = s.createCriteria(Model.class);
		crit.add(Restrictions.eq("modelId", modelId));
		return (Model) crit.uniqueResult();
		
	}
}
