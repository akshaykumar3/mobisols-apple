package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VmlTypeId;
@Path("/VMLTypeList")
public class VMLTypeListImpl implements VMLTypeList {
	List<VMLType> vmltypes;

	public VMLTypeListImpl()
	{
		this.vmltypes=new LinkedList<VMLType>();
	}
	@GET
	public String getVMLTypeList(@QueryParam("clientid")int clientId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VmlTypeId.class);
		crit.add(Restrictions.eq("client_id", clientId));
		List<VmlTypeId> vmlt=crit.list();
		VMLTypeListImpl vm=new VMLTypeListImpl();
		for(Iterator it=  (Iterator) vmlt.iterator();it.hasNext();)
		{
			vm.getVmltypes().add(new VMLTypeImpl(vmlt.get(it.next()).getVmlTypeId()));
		}
		String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, vm);
		HibernateSessionFactory.closeSession();
		return res;
	}

	public List<VMLType> getVmltypes() {
		return vmltypes;
	}

	public void setVmltypes(List<VMLType> vmltypes) {
		this.vmltypes = vmltypes;
	}
}
