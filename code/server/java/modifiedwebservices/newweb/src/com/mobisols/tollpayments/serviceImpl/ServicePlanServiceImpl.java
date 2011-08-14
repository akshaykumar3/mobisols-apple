package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.ServicePlanDao;
import com.mobisols.tollpayments.response.get.ServicePlan;
import com.mobisols.tollpayments.response.get.ServicePlanList;
import com.mobisols.tollpayments.service.ServicePlanService;

public class ServicePlanServiceImpl implements ServicePlanService {

	private ServicePlanDao servicePlanDao;
	
	@Override
	public ServicePlanList getServiceList() {
		ServicePlanList response= new ServicePlanList();
		List l=servicePlanDao.getServiceList();
		for(Iterator it = l.iterator();it.hasNext();)
	    {
			com.mobisols.tollpayments.model.ServicePlan s=(com.mobisols.tollpayments.model.ServicePlan) it.next();
	    	ServicePlan p=new ServicePlan();
	    	p.setDescription(s.getDescription());
	    	p.setName(s.getName());
	    	p.setTollOpName(s.getTollOperator().getName());
	    	response.getServicePlanList().add(p);
	    }
		return response;
	}
	public ServicePlanDao getServicePlanDao() {
		return servicePlanDao;
	}
	public void setServicePlanDao(ServicePlanDao userServiceDao) {
		this.servicePlanDao = userServiceDao;
	}
}
