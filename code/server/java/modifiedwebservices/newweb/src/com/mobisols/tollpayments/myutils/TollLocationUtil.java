package com.mobisols.tollpayments.myutils;

import com.mobisols.tollpayments.myutilsImpl.Location;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollLocationUtil.
 */
public interface TollLocationUtil {
	
	/**
	 * Gets the nearest toll.
	 *
	 * @param p the p
	 * @return the nearest toll
	 */
	public Location getNearestToll(Location p);
	
	/**
	 * Gets the distance between two points.
	 *
	 * @param p1 the location 1.
	 * @param p2 the location 2.
	 * @return the distance
	 */
	public double getDistance(Location p1,Location p2);
}
