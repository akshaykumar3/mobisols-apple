/**
 * 
 */
package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TpImport;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface TpImportDao.
 * Used to access the tp_import table of the database.
 * @author Raghu
 */
public interface TpImportDao {

	
	/** The Constant IMPORT_PENDING. */
	public static final String IMPORT_PENDING = ServerConfiguration.getServerConfiguration().getValue("import_pending");
	
	/** The Constant IMPORT_INPROGRESS. */
	public static final String IMPORT_INPROGRESS = ServerConfiguration.getServerConfiguration().getValue("import_inprogress");
	
	/** The Constant IMPORT_HOLD. */
	public static final String IMPORT_HOLD = ServerConfiguration.getServerConfiguration().getValue("import_hold");
	
	/** The Constant IMPORT_ERROR. */
	public static final String IMPORT_ERROR = ServerConfiguration.getServerConfiguration().getValue("imporet_error");
	
	/** The Constant IMPORT_COMPLETE. */
	public static final String IMPORT_COMPLETE = ServerConfiguration.getServerConfiguration().getValue("import_complete");
	
	/**
	 * Saves the given tp import to the database.
	 *
	 * @param tpImport the tp import
	 */
	public void save(TpImport tpImport);
}
