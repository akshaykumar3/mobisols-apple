/**
 * 
 */
package com.mobisols.tollpayments.request;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class CommandAckRequest {
	private List<CommandAcknowledge> commands ;

	public CommandAckRequest() {
		commands =  new LinkedList<CommandAcknowledge>();
	}

	public List<CommandAcknowledge> getCommands() {
		return commands;
	}

	public void setCommands(List<CommandAcknowledge> commands) {
		this.commands = commands;
	}
	
}
