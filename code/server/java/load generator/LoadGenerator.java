package com.mobisols.tollpayments.loadtest;


public class LoadGenerator extends Thread{
	private String classname;
	private Integer numload;
	private Integer lifetime;
	private Integer loadtime;
	public static void main(String[] args) {
	   int i;
	   LoadGenerator obj = new LoadGenerator();
	   obj.setNumload(10000);
	   obj.setClassname("heartbeat");
	   obj.setLifetime(600000);
	   obj.setLoadtime(60000000);
	   LoadThread thr[] = null;
	   TimeSched timer = new TimeSched(obj.loadtime);
	   for(i=0;i<obj.getNumload();i++)
	   {
		   System.out.println("New thread is created");
		   thr[i]= new LoadThread(obj.getClassname(),obj.getLifetime(),obj.getLoadtime());
	   }

	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public Integer getNumload() {
		return this.numload;
	}
	public void setNumload(Integer numload) {
		this.numload = numload;
	}
	public Integer getLifetime() {
		return lifetime;
	}
	public void setLifetime(Integer lifetime) {
		this.lifetime = lifetime;
	}
	public Integer getLoadtime() {
		return loadtime;
	}
	public void setLoadtime(Integer loadtime) {
		this.loadtime = loadtime;
	}

}
