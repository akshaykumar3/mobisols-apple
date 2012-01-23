package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Model;

public interface ModelDao {
	public Model getModel(int makeId,String name);
	public Model getModel(String make,String model);
}
