package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class MakeAndModelResponse {
	private List<Make> make;

	public MakeAndModelResponse(){
		this.make = new LinkedList<Make>();
	}
	
	public List<Make> getMake() {
		return make;
	}

	public void setMake(List<Make> make) {
		this.make = make;
	}
	
}
