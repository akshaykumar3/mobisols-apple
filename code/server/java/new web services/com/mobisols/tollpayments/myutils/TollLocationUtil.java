package com.mobisols.tollpayments.myutils;

import java.awt.Point;
import java.awt.geom.Point2D;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.webservice.Location;
import com.mobisols.tollpayments.webservice.LocationImpl;

public class TollLocationUtil {

	public Location getNearestToll(Location p){
		double minDist=100000000.0000;
		List<Location> l=TollLocationList.getTollLocationList();
		Location nearest=new LocationImpl();
		nearest.setLatitude(0.0);
		nearest.setLatitude(0.0);
		for(Iterator it=l.iterator();it.hasNext();)
		{
			Location p1=p;
			Location p2=(Location) it.next();
			double dist = Math.sqrt((p1.getLatitude()-p2.getLatitude())*(p1.getLatitude()-p2.getLatitude())+
									(p1.getLongitude()-p2.getLongitude())*(p1.getLongitude()-p2.getLongitude()));
			if(dist<minDist)
			{
				nearest.setLatitude(p2.getLatitude());
				nearest.setLongitude(p2.getLongitude());
				minDist=dist;
			}
		}
		return nearest;
	}
	
	public double getDistance(Location p1,Location p2){
		return Math.sqrt((p1.getLatitude()-p2.getLatitude())*(p1.getLatitude()-p2.getLatitude())+
				(p1.getLongitude()-p2.getLongitude())*(p1.getLongitude()-p2.getLongitude()));
	}
}
