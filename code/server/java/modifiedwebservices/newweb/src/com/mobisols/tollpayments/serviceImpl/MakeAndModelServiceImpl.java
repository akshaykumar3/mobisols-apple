package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.MakeDao;
import com.mobisols.tollpayments.model.Make;
import com.mobisols.tollpayments.model.Model;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.MakeAndModelResponse;
import com.mobisols.tollpayments.service.MakeAndModelService;

public class MakeAndModelServiceImpl implements MakeAndModelService {

	private MakeDao makeDao;
	private JsonConverter jsonConverter;
	
	public String getMakeAndModels(String request){
		String status = "success";
		MakeAndModelResponse response = new MakeAndModelResponse();
		List<Make> l = makeDao.getMake();
		for(Iterator<Make> it  = l.iterator();it.hasNext();)
		{
			Make make = it.next();
			com.mobisols.tollpayments.response.get.Make makeResponse = new com.mobisols.tollpayments.response.get.Make();
			for(Iterator<Model> it1 = make.getModel().iterator();it1.hasNext();)
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

	public MakeDao getMakeDao() {
		return makeDao;
	}

	public void setMakeDao(MakeDao makeDao) {
		this.makeDao = makeDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
