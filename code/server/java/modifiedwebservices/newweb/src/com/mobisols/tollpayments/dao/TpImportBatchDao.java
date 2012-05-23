/**
 * 
 */
package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TpImportBatch;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface TpImportBatchDao.
 *Used to access the tp_import_batch table of the database.
 * @author Raghu
 */
public interface TpImportBatchDao {

	/** The Constant IMPORT_PENDING. */
	public static final String IMPORT_PENDING = ServerConfiguration.getServerConfiguration().getValue("import_batch_pending");
	
	/** The Constant IMPORT_INPROGRESS. */
	public static final String IMPORT_INPROGRESS = ServerConfiguration.getServerConfiguration().getValue("import_batch_inprogress");
	
	/** The Constant IMPORT_HOLD. */
	public static final String IMPORT_HOLD = ServerConfiguration.getServerConfiguration().getValue("import_batch_hold");
	
	/** The Constant IMPORT_ERROR. */
	public static final String IMPORT_ERROR = ServerConfiguration.getServerConfiguration().getValue("imporet_batch_error");
	
	/** The Constant IMPORT_PARTIAL. */
	public static final String IMPORT_PARTIAL = ServerConfiguration.getServerConfiguration().getValue("import_batch_progress");
	
	/** The Constant IMPORT_COMPLETE. */
	public static final String IMPORT_COMPLETE = ServerConfiguration.getServerConfiguration().getValue("import_batch_complete");
	
	/** The Constant TEXAS_IMPORT_TYPE. */
	public static final String TEXAS_IMPORT_TYPE = ServerConfiguration.getServerConfiguration().getValue("texas_import_type");
	
	/**
	 * Saves the given TpImportBatch to the database.
	 *
	 * @param tpImportBatch the tp import batch
	 */
	public void save(TpImportBatch tpImportBatch);
	
	/**
	 * Gets the import batch with the given batch id.
	 *
	 * @param batchId the batch id
	 * @return the import batch
	 */
	public TpImportBatch getImportBatch(int batchId);
}
