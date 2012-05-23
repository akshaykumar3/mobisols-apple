package com.mobisols.tollpayments.myutilsImpl;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.model.HibernateSessionFactory;
import com.mobisols.tollpayments.model.TollLocation;



// TODO: Auto-generated Javadoc
/**
 * The Class TollLocationList.
 */
public class TollLocationList {

/** The instance. */
private static List<Location> instance=null;
	
	/**
	 * Gets the toll location list.
	 *
	 * @return the toll location list
	 */
	public static List<Location> getTollLocationList(){
		if(instance==null)
		{
			instance = new LinkedList<Location>();
			Session s= HibernateSessionFactory.getSession();
			Criteria crit=s.createCriteria(TollLocation.class);
			List<TollLocation> tl=crit.list();
			for(Iterator i=tl.iterator();i.hasNext();)
			{
				TollLocation t=(TollLocation) i.next();
				Location p=new Location();
				p.setLatitude(t.getLatitude());
				p.setLongitude(t.getLongitude());
				instance.add(p);
			}
		}
		return instance;
	}
}
