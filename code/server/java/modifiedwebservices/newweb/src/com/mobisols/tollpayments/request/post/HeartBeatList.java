/**
 * 
 */
package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class HeartBeatList {

	private List<HeartBeatRequest> heartBeatList;

	public HeartBeatList(){
		this.heartBeatList = new LinkedList<HeartBeatRequest>();
	}
	
	public List<HeartBeatRequest> getHeartBeatList() {
		return heartBeatList;
	}

	public void setHeartBeatList(List<HeartBeatRequest> heartBeatList) {
		this.heartBeatList = heartBeatList;
	}
	
}
