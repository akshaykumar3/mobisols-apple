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

public class TollLocationList implements Serializable{

	private static List<Point> instance=null;
	
	public static List<Point> getTollLocationList(){
		if(instance==null)
		{
			instance = new LinkedList<Point>();
			Session s= HibernateSessionFactory.getSession();
			Criteria crit=s.createCriteria(TollLocation.class);
			List<TollLocation> tl=crit.list();
			for(Iterator i=tl.iterator();i.hasNext();)
			{
				TollLocation t=(TollLocation) i.next();
				Point p=new Point();
				p.setLocation(t.getLatitude(), t.getLongitude());
				instance.add(p);
			}
			HibernateSessionFactory.closeSession();
		}
		return instance;
	}
}
