package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class MakeAndModelResponse.
 */
public class MakeAndModelResponse {
	
	/** The make. */
	private List<Make> make;

	/**
	 * Instantiates a new make and model response.
	 */
	public MakeAndModelResponse(){
		this.make = new LinkedList<Make>();
	}
	
	/**
	 * Gets the make.
	 *
	 * @return the make
	 */
	public List<Make> getMake() {
		return make;
	}

	/**
	 * Sets the make.
	 *
	 * @param make the new make
	 */
	public void setMake(List<Make> make) {
		this.make = make;
	}
	
}
