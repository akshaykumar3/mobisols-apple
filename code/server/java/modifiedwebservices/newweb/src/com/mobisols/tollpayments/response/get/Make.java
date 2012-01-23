package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class Make {
	private String name;
	private String description;
	private List<Model> model;

	public Make(){
		this.model = new LinkedList<Model>();
	}

	public List<Model> getModel() {
		return model;
	}

	public void setModel(List<Model> model) {
		this.model = model;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
