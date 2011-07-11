package com.mobisols.tollpayments.myutils;

import java.awt.Point;
import java.awt.geom.Point2D;

import java.util.Iterator;
import java.util.List;

public class TollLocationUtil {

	public Point getNearestToll(Point p){
		double minDist=100000000.0000;
		List<Point> l=TollLocationList.getTollLocationList();
		Point nearest=new Point();
		nearest.setLocation(0.0, 0.0);
		for(Iterator it=l.iterator();it.hasNext();)
		{
			Point2D p1=p;
			Point2D p2=(Point2D) it.next();
			double dist = p1.distance(p2);
			if(dist<minDist)
			{
				nearest.setLocation(p2);
				minDist=dist;
			}
		}
		return nearest;
	}
	
	public double getDistance(Point p1,Point p2){
		Point2D q1=p1;
		return q1.distance(p2);
	}
}
