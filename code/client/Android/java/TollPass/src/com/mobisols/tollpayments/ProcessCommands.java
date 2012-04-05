/**
 * 
 */
package com.mobisols.tollpayments;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

import android.database.Cursor;
import android.util.Log;

import com.mobisols.tollpayments.data.ClientConfiguration;
import com.mobisols.tollpayments.data.DataBaseHelper;
import com.mobisols.tollpayments.request.ActivateRequest;
import com.mobisols.tollpayments.request.ClientConfigurationRequest;
import com.mobisols.tollpayments.request.CommandAckRequest;
import com.mobisols.tollpayments.request.CommandAcknowledge;
import com.mobisols.tollpayments.response.ActualActivateResponse;
import com.mobisols.tollpayments.response.ActualClientConfigResponse;
import com.mobisols.tollpayments.response.CommandAckResponse;
import com.mobisols.tollpayments.utils.JsonConverter;
import com.mobisols.tollpayments.utils.MyApplicationUtil;
import com.mobisols.tollpayments.utils.WebRequest;
import com.mobisols.tollpayments.utils.WebServiceLinks;

/**
 * @author Raghu
 *
 */
public class ProcessCommands {
	
	public static void commandAcknowledge(Long notficationId){
		CommandAckRequest req = new CommandAckRequest();
		Cursor c = DataBaseHelper.getInstance().getCommadCursor();
		c.moveToFirst();
		while(c.isAfterLast()){
			Long id = c.getLong(0);
			String command = c.getString(1);
			String status = c.getString(2);
			CommandAcknowledge ca = new CommandAcknowledge();
			ca.setMessage("");
			ca.setNotificationId(id);
			ca.setResult("");
			ca.setStatus(status);
			req.getCommands().add(ca);
		}
		c.close();
		HttpPost request= new HttpPost(WebServiceLinks.getCommandAck());
		List<BasicNameValuePair> data = new ArrayList<BasicNameValuePair>();
		data.add(new BasicNameValuePair("json", JsonConverter.getJSON(request)));
		try {
			 request.setEntity(new UrlEncodedFormEntity(data));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpResponse response = WebRequest.postMethod(request);
		BufferedReader rd;
		String line=null;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			line = rd.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception2");
		}
		CommandAckResponse r = (CommandAckResponse) JsonConverter.getObject(line, "com.mobisols.tollpayments.response.CommandAckResponse");
		if(r.getStatus()=="fail"){
			DataBaseHelper.getInstance().insertInsertCommand(notficationId, ClientConfiguration.getInstance().getValue("command_ack"), ClientConfiguration.getInstance().getValue("command_status_failure"));
		}
		else{
			DataBaseHelper.getInstance().insertInsertCommand(notficationId, ClientConfiguration.getInstance().getValue("command_ack"), ClientConfiguration.getInstance().getValue("command_status_success"));
		}
	}
	
	public static void dsiableApp(Long notificationId){
		
		ActivateRequest req = new ActivateRequest();
		req.setActive("N");
		HttpPost request = new HttpPost(WebServiceLinks.getDEACTIVATE());
		List<BasicNameValuePair> data = new ArrayList<BasicNameValuePair>();
		data.add(new BasicNameValuePair("json", JsonConverter.getJSON(req)));
		try {
			 request.setEntity(new UrlEncodedFormEntity(data));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpResponse response = WebRequest.postMethod(request);
		BufferedReader rd;
		String line=null;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			line = rd.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception2");
		}
		
		ActualActivateResponse res = (ActualActivateResponse) JsonConverter.getObject(line, "com.mobisols.tollpayments.response.ActualActivateResponse");
		if(res.getStatus() == "fail"){
			DataBaseHelper.getInstance().insertInsertCommand(notificationId, ClientConfiguration.getInstance().getValue("command_deactivate_user"), ClientConfiguration.getInstance().getValue("command_status_failure"));
		}
		else if(res.getStatus()=="success"){
			DataBaseHelper.getInstance().insertInsertCommand(notificationId, ClientConfiguration.getInstance().getValue("command_deactivate_user"), ClientConfiguration.getInstance().getValue("command_status_success"));
		}
	}
	
	public static void doDeviceRegistration(Long notificationId){
		
	}
	
	public static void updateClientConfiguration(Long notificationId){
		ClientConfigurationRequest req = new ClientConfigurationRequest();
		req.setComponentName(null);
		req.setKey(null);
		req.setVersion(MyApplicationUtil.version);
		String requestUrl = WebServiceLinks.getCLIENTCONFIGURATION();
		requestUrl = requestUrl+"?"+"json="+JsonConverter.getJSON(req);
		HttpGet request = new HttpGet(WebServiceLinks.getCLIENTCONFIGURATION());
		HttpResponse response = WebRequest.getMethod(request);
		BufferedReader rd;
		String line=null;
		try {
			rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
			line = rd.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch(NullPointerException e){
			Log.d("HTTP REQUEST", "Nullpointer Exception2");
		}
		
		ActualClientConfigResponse res = (ActualClientConfigResponse) JsonConverter.getObject(line, "com.mobisols.tollpayments.response.ActualClientConfigResponse");
		if(res.getStatus() == "fail"){
			DataBaseHelper.getInstance().insertInsertCommand(notificationId, ClientConfiguration.getInstance().getValue("command_update_client_config"), ClientConfiguration.getInstance().getValue("command_status_failure"));
		}
		else if(res.getStatus()=="success"){
			ClientConfiguration.getInstance().clear();
			for(Iterator<String> it = res.getResponse().getKeyValues().keySet().iterator();it.hasNext();){
				String key = it.next();
				ClientConfiguration.getInstance().setValue(key, res.getResponse().getKeyValues().get(key));
			}
			DataBaseHelper.getInstance().insertInsertCommand(notificationId, ClientConfiguration.getInstance().getValue("command_update_client_config"), ClientConfiguration.getInstance().getValue("command_status_success"));
		}
	}
}
