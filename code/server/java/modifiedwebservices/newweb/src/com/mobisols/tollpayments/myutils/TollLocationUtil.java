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
	 * Gets the distance.
	 *
	 * @param p1 the p1
	 * @param p2 the p2
	 * @return the distance
	 */
	public double getDistance(Location p1,Location p2);
}
