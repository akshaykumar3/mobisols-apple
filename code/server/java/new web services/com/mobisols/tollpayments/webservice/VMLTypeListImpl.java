package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VmlType;
@Path("/VMLTypeList")
public class VMLTypeListImpl implements VMLTypeList {
	private List<VMLTypeImpl> vmltypes;

	public VMLTypeListImpl()
	{
		this.vmltypes=new LinkedList<VMLTypeImpl>();
	}
	@GET
	public String getVMLTypeList() {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VmlType.class);
		List<VmlType> vmlt=crit.list();
		VMLTypeListImpl vm=new VMLTypeListImpl();
		for(Iterator it=  (Iterator) vmlt.iterator();it.hasNext();)
		{
			vm.getVmltypes().add(new VMLTypeImpl(((VmlType) it.next()).getVmlTypeId()));
		}
		String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, vm);
		HibernateSessionFactory.closeSession();
		return res;
	}

	public List<VMLTypeImpl> getVmltypes() {
		return vmltypes;
	}

	public void setVmltypes(List<VMLTypeImpl> vmltypes) {
		this.vmltypes = vmltypes;
	}
}
