package com.mobisols.tollpayments.serviceImpl;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.mobisols.tollpayments.dao.MakeDao;
import com.mobisols.tollpayments.model.Make;
import com.mobisols.tollpayments.model.Model;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.MakeAndModelResponse;
import com.mobisols.tollpayments.service.MakeAndModelService;

// TODO: Auto-generated Javadoc
/**
 * The Class MakeAndModelServiceImpl.
 */
public class MakeAndModelServiceImpl implements MakeAndModelService {

	/** The make dao. */
	private MakeDao makeDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.MakeAndModelService#getMakeAndModels(java.lang.String)
	 */
	public String getMakeAndModels(String request){
		String status = "success";
		MakeAndModelResponse response = new MakeAndModelResponse();
		List<Make> l = makeDao.getMake();
		for(Iterator<Make> it  = l.iterator();it.hasNext();)
		{
			Make make = it.next();
			com.mobisols.tollpayments.response.get.Make makeResponse = new com.mobisols.tollpayments.response.get.Make();
			List<Model> li = new LinkedList<Model>(make.getModel());
			Collections.sort(li);
			for(Iterator<Model> it1 = li.iterator();it1.hasNext();)
			{
				Model model = it1.next();
				com.mobisols.tollpayments.response.get.Model modelResponse = new com.mobisols.tollpayments.response.get.Model();
				modelResponse.setName(model.getName());
				modelResponse.setDescription(model.getDescription());
				makeResponse.getModel().add(modelResponse);
			}
			makeResponse.setName(make.getName());
			makeResponse.setDescription(make.getDescription());
			response.getMake().add(makeResponse);
		}
		return jsonConverter.getJSON(request, status, response);
	}

	/**
	 * Gets the make dao.
	 *
	 * @return the make dao
	 */
	public MakeDao getMakeDao() {
		return makeDao;
	}

	/**
	 * Sets the make dao.
	 *
	 * @param makeDao the new make dao
	 */
	public void setMakeDao(MakeDao makeDao) {
		this.makeDao = makeDao;
	}

	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
