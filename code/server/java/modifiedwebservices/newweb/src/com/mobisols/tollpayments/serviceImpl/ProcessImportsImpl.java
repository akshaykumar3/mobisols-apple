/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.TollPriceHistoryDao;
import com.mobisols.tollpayments.dao.TpImportBatchDao;
import com.mobisols.tollpayments.dao.TpImportDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollPriceHistory;
import com.mobisols.tollpayments.model.TpImport;
import com.mobisols.tollpayments.model.TpImportBatch;
import com.mobisols.tollpayments.model.UserVehicleHistory;
import com.mobisols.tollpayments.model.VehicleTollUsage;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ProcessImports;

// TODO: Auto-generated Javadoc
/**
 * The Class ProcessImportsImpl.
 *
 * @author Raghu
 */
public class ProcessImportsImpl implements ProcessImports {

	/** The tp import batch dao. */
	private TpImportBatchDao tpImportBatchDao;
	
	/** The tp import dao. */
	private TpImportDao tpImportDao;
	
	/** The vehicle toll usage dao. */
	private VehicleTollUsageDao vehicleTollUsageDao;
	
	/** The user vehicle history dao. */
	private UserVehicleHistoryDao userVehicleHistoryDao;
	
	/** The toll location dao. */
	private TollLocationDao tollLocationDao;
	
	/** The toll price history dao. */
	private TollPriceHistoryDao tollPriceHistoryDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ProcessImports#processImports()
	 */
	@Override
	public String processImports(String request,int batchId) {
		
		TpImportBatch tib = tpImportBatchDao.getImportBatch(batchId);
		GeneralResponse response = new GeneralResponse();
		if(tib.getStatus().equals(TpImportBatchDao.IMPORT_PENDING) || tib.getStatus().equals(TpImportBatchDao.IMPORT_PARTIAL)){
			if(tib.getBatchType().equals(TpImportBatchDao.TEXAS_IMPORT_TYPE)){
				try{
				tib.setStatus(TpImportBatchDao.IMPORT_INPROGRESS);
				tpImportBatchDao.save(tib);
				for(Iterator<TpImport> it = tib.getTpImport().iterator();it.hasNext();){
					TpImport ti = it.next();
					String state = ti.getFd2();
					String plate = ti.getFd3();
					String transactionNumber = ti.getFd4();
					String transactionDate = ti.getFd5();
					String transactionTime = ti.getFd6();
					String transactionAmount = ti.getFd7();
					String roadWay = ti.getFd8();
					String tollPlaza = ti.getFd9();
					String lane = ti.getFd10();
					SimpleDateFormat format = new SimpleDateFormat("MMddyyyyHHmmss");
					
					Date date=null;
					try {
						date = format.parse(transactionDate+transactionTime);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
			        
			        UserVehicleHistory userVehicle = userVehicleHistoryDao.getUvhId(plate,state,date);
					TollLocation tl = tollLocationDao.getTollLocation(tollPlaza);
			        List<TollPriceHistory> tollprice = tollPriceHistoryDao.getTollPriceHistory(tl.getTollLocationId(), Float.parseFloat(transactionAmount));
					
			        VehicleTollUsage vtu = new VehicleTollUsage();
					vtu.setClientId(Client.PRESENT_CLIENT);
					vtu.setCreatedOn(new Timestamp(new Date().getTime()));
					vtu.setLastModifiedBy(-1);
					vtu.setLastModifiedOn(new Timestamp(new Date().getTime()));
					vtu.setTimestamp(new Timestamp(date.getTime()));
					vtu.setTollLocId(tl.getTollLocationId());
					vtu.setTphId(tollprice.get(0).getTphId());
					vtu.setUvhId(userVehicle.getUvhId());
					vtu.setVmlId(-1);
					vehicleTollUsageDao.save(vtu);
					ti.setStatus(TpImportDao.IMPORT_COMPLETE);
					tpImportDao.save(ti);
				}
				}catch (Exception e) {
					tib.setStatus(TpImportBatchDao.IMPORT_ERROR);
					tpImportBatchDao.save(tib);
					response.setDescription(e.getStackTrace().toString());
					response.getNotifications().add("Failed with error.");
					return jsonConverter.getJSON(request, "fail", response);
				}
				tib.setStatus(TpImportBatchDao.IMPORT_COMPLETE);
				tpImportBatchDao.save(tib);
			}
			return jsonConverter.getJSON(request, "success", response);
		}
		else
		{
			response.getNotifications().add("Batch  was already processed");
			return jsonConverter.getJSON(request, "success", response);
		}
	}
	
	/**
	 * Gets the tp import batch dao.
	 *
	 * @return the tp import batch dao
	 */
	public TpImportBatchDao getTpImportBatchDao() {
		return tpImportBatchDao;
	}
	
	/**
	 * Sets the tp import batch dao.
	 *
	 * @param tpImportBatchDao the new tp import batch dao
	 */
	public void setTpImportBatchDao(TpImportBatchDao tpImportBatchDao) {
		this.tpImportBatchDao = tpImportBatchDao;
	}
	
	/**
	 * Gets the tp import dao.
	 *
	 * @return the tp import dao
	 */
	public TpImportDao getTpImportDao() {
		return tpImportDao;
	}
	
	/**
	 * Sets the tp import dao.
	 *
	 * @param tpImportDao the new tp import dao
	 */
	public void setTpImportDao(TpImportDao tpImportDao) {
		this.tpImportDao = tpImportDao;
	}
	
	/**
	 * Gets the vehicle toll usage dao.
	 *
	 * @return the vehicle toll usage dao
	 */
	public VehicleTollUsageDao getVehicleTollUsageDao() {
		return vehicleTollUsageDao;
	}
	
	/**
	 * Sets the vehicle toll usage dao.
	 *
	 * @param vehicleTollUsageDao the new vehicle toll usage dao
	 */
	public void setVehicleTollUsageDao(VehicleTollUsageDao vehicleTollUsageDao) {
		this.vehicleTollUsageDao = vehicleTollUsageDao;
	}
	
	/**
	 * Gets the user vehicle history dao.
	 *
	 * @return the user vehicle history dao
	 */
	public UserVehicleHistoryDao getUserVehicleHistoryDao() {
		return userVehicleHistoryDao;
	}
	
	/**
	 * Sets the user vehicle history dao.
	 *
	 * @param userVehicleHistoryDao the new user vehicle history dao
	 */
	public void setUserVehicleHistoryDao(UserVehicleHistoryDao userVehicleHistoryDao) {
		this.userVehicleHistoryDao = userVehicleHistoryDao;
	}
	
	/**
	 * Gets the toll location dao.
	 *
	 * @return the toll location dao
	 */
	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}
	
	/**
	 * Sets the toll location dao.
	 *
	 * @param tollLocationDao the new toll location dao
	 */
	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
	}
	
	/**
	 * Gets the toll price history dao.
	 *
	 * @return the toll price history dao
	 */
	public TollPriceHistoryDao getTollPriceHistoryDao() {
		return tollPriceHistoryDao;
	}
	
	/**
	 * Sets the toll price history dao.
	 *
	 * @param tollPriceHistoryDao the new toll price history dao
	 */
	public void setTollPriceHistoryDao(TollPriceHistoryDao tollPriceHistoryDao) {
		this.tollPriceHistoryDao = tollPriceHistoryDao;
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
