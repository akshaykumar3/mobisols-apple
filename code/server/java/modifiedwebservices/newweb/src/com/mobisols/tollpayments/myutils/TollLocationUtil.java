package com.mobisols.tollpayments.myutils;

import com.mobisols.tollpayments.myutilsImpl.Location;

public interface TollLocationUtil {
	public Location getNearestToll(Location p);
	public double getDistance(Location p1,Location p2);
}
