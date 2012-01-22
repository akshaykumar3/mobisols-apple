package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Make;

public interface MakeDao {
	public Make getMake(String name);
	public List<Make> getMake();
}
