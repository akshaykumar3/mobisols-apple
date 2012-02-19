/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.post.CommandAckRequest;


/**
 * @author Raghu
 *
 */
public interface CommandAck {
	public String acknowledgeCommand(CommandAckRequest commandAckRequest,String request);
}
