/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class PaymentTransactionResponse {

	private List<TollPaymentTransfer> list;
	
	public PaymentTransactionResponse(){
		this.list = new LinkedList<TollPaymentTransfer>();
	}

	public List<TollPaymentTransfer> getList() {
		return list;
	}

	public void setList(List<TollPaymentTransfer> list) {
		this.list = list;
	}
	
}
