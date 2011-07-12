package com.mobisols.tollpayments.myutils;

import java.awt.Point;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.TollLocation;
import com.mobisols.tollpayments.webservice.Location;
import com.mobisols.tollpayments.webservice.LocationImpl;

public class TollLocationList implements Serializable{

	private static List<Location> instance=null;
	
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
				Location p=new LocationImpl();
				p.setLatitude(t.getLatitude());
				p.setLongitude(t.getLongitude());
				instance.add(p);
			}
		}
		return instance;
	}
}
