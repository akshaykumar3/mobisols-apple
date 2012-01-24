/**
 * 
 */
package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TpImportBatch;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

/**
 * @author Raghu
 *
 */
public interface TpImportBatchDao {

	public static final String IMPORT_PENDING = ServerConfiguration.getServerConfiguration().getValue("import_batch_pending");
	public static final String IMPORT_INPROGRESS = ServerConfiguration.getServerConfiguration().getValue("import_batch_inprogress");
	public static final String IMPORT_HOLD = ServerConfiguration.getServerConfiguration().getValue("import_batch_hold");
	public static final String IMPORT_ERROR = ServerConfiguration.getServerConfiguration().getValue("imporet_batch_error");
	public static final String IMPORT_PARTIAL = ServerConfiguration.getServerConfiguration().getValue("import_batch_progress");
	public static final String IMPORT_COMPLETE = ServerConfiguration.getServerConfiguration().getValue("import_batch_complete");
	public static final String TEXAS_IMPORT_TYPE = ServerConfiguration.getServerConfiguration().getValue("texas_import_type");
	public void save(TpImportBatch tpImportBatch);
	/**
	 * @param batchId
	 * @return
	 */
	public TpImportBatch getImportBatch(int batchId);
}
