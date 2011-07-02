package test;

import java.sql.Timestamp;
import java.util.Timer;
import java.lang.*;


public class LoadThread implements Runnable{
  private String className;
  private Integer lifeTime;
  private Integer loadTime;
  Thread runner;
  public LoadThread()
  {
	  className=null;
	  lifeTime=0;
	  loadTime=0;
	  System.out.println("Missing parameters");	  
  }
  
  public LoadThread(String className,Integer lifeTime,Integer loadTime)
  {
	  this.className=className;
	  this.lifeTime=lifeTime;
	  this.loadTime=loadTime;
	  runner = new Thread(this); 
	  runner.start();
	  try {
		runner.join(lifeTime);
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  }
 
  
  public void run()
  {
	  String result;
	  String timestamp = "2005-04-06 09:01:10";
	  String latitude = "23.567";
	  String longitude = "32.63";
	  String angle = "45.0";
	  String vmlType = "4-wheeler";
	  String input="{"+"timestamp:"+timestamp+","+"latitude:"+latitude+","+"longitude:"+longitude+
	  ","+"angle:"+angle+","+vmlType+"}";
	  HeartBeatImpl service = new HearBeatImpl();
	  result = service.getHeartBeat(runner.getName(),input);
	  System.out.println(result);
  }
	  
	  
  }
  


  


