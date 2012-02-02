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
public class PaymentDetailHistoryResponse {
	private List<PaymentDetailHistory> list;

	public PaymentDetailHistoryResponse(){
		this.list = new LinkedList<PaymentDetailHistory>();
	}
	public List<PaymentDetailHistory> getList() {
		return list;
	}

	public void setList(List<PaymentDetailHistory> list) {
		this.list = list;
	}
}
