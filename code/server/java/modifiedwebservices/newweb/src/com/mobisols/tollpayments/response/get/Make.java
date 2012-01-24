package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class Make.
 */
public class Make {
	
	/** The name. */
	private String name;
	
	/** The description. */
	private String description;
	
	/** The model. */
	private List<Model> model;

	/**
	 * Instantiates a new make.
	 */
	public Make(){
		this.model = new LinkedList<Model>();
	}

	/**
	 * Gets the model.
	 *
	 * @return the model
	 */
	public List<Model> getModel() {
		return model;
	}

	/**
	 * Sets the model.
	 *
	 * @param model the new model
	 */
	public void setModel(List<Model> model) {
		this.model = model;
	}

	/**
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 *
	 * @param name the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
