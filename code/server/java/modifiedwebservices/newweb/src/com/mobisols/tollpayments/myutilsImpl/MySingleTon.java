package com.mobisols.tollpayments.myutilsImpl;

// TODO: Auto-generated Javadoc
/**
 * The Class MySingleTon.
 */
public abstract class MySingleTon {
	
	/** The dirty. */
	protected boolean dirty;

	/**
	 * Checks if is dirty.
	 *
	 * @return true, if is dirty
	 */
	public boolean isDirty() {
		return dirty;
	}

	/**
	 * Sets the dirty.
	 *
	 * @param dirty the new dirty
	 */
	public void setDirty(boolean dirty) {
		this.dirty = dirty;
	}
	
	/**
	 * Refresh.
	 */
	public abstract void refresh();
}
