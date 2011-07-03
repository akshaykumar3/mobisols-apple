package com.mobisols.tollpayments.loadtest;

import java.util.Timer;
import java.util.TimerTask;

class TimeSched {
    private Integer loadtime;
    public TimeSched(Integer loadtime)
    {
    this.loadtime=loadtime;
    Timer timer = new Timer();
    TimeSched task = new TimeSched(loadtime);
    timer.schedule(new TimerTask(){public void run() {
        System.out.println("Time out!!");
        System.exit(0);
      }},task.loadtime);
} 
 }
