package com.mobisols.tollpayments.myutilsImpl;

public abstract class MySingleTon {
	protected boolean dirty;

	public boolean isDirty() {
		return dirty;
	}

	public void setDirty(boolean dirty) {
		this.dirty = dirty;
	}
	public abstract void refresh();
}
