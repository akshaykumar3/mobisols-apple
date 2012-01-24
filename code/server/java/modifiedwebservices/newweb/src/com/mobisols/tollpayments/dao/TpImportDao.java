/**
 * 
 */
package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TpImport;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

/**
 * @author Raghu
 *
 */
public interface TpImportDao {

	/**
	 * Save.
	 *
	 * @param tpImport the tp import
	 */
	public static final String IMPORT_PENDING = ServerConfiguration.getServerConfiguration().getValue("import_pending");
	public static final String IMPORT_INPROGRESS = ServerConfiguration.getServerConfiguration().getValue("import_inprogress");
	public static final String IMPORT_HOLD = ServerConfiguration.getServerConfiguration().getValue("import_hold");
	public static final String IMPORT_ERROR = ServerConfiguration.getServerConfiguration().getValue("imporet_error");
	public static final String IMPORT_COMPLETE = ServerConfiguration.getServerConfiguration().getValue("import_complete");
	public void save(TpImport tpImport);
}
