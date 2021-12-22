package com.hk.kakaopayrefund.vo;

import java.util.Date;

import com.hk.amount.vo.AmountVO;

public class KakaoPayRefundVO {
	
	private String aid, tid, cid, status, 
			 	   partner_order_id, partner_user_id, payment_method_type;
	
	private AmountVO amount, approved_cancel_amount, CanceledAmount, CancelAvailableAmount;
	
	private String item_name, item_code;
	
	private Integer quantity;
	
	private Date created_at, approved_at, canceled_at;
	
	private String payload;

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPartner_order_id() {
		return partner_order_id;
	}

	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}

	public String getPartner_user_id() {
		return partner_user_id;
	}

	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}

	public String getPayment_method_type() {
		return payment_method_type;
	}

	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}

	public AmountVO getAmount() {
		return amount;
	}

	public void setAmount(AmountVO amount) {
		this.amount = amount;
	}

	public AmountVO getApproved_cancel_amount() {
		return approved_cancel_amount;
	}

	public void setApproved_cancel_amount(AmountVO approved_cancel_amount) {
		this.approved_cancel_amount = approved_cancel_amount;
	}

	public AmountVO getCanceledAmount() {
		return CanceledAmount;
	}

	public void setCanceledAmount(AmountVO canceledAmount) {
		CanceledAmount = canceledAmount;
	}

	public AmountVO getCancelAvailableAmount() {
		return CancelAvailableAmount;
	}

	public void setCancelAvailableAmount(AmountVO cancelAvailableAmount) {
		CancelAvailableAmount = cancelAvailableAmount;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_code() {
		return item_code;
	}

	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getApproved_at() {
		return approved_at;
	}

	public void setApproved_at(Date approved_at) {
		this.approved_at = approved_at;
	}

	public Date getCanceled_at() {
		return canceled_at;
	}

	public void setCanceled_at(Date canceled_at) {
		this.canceled_at = canceled_at;
	}

	public String getPayload() {
		return payload;
	}

	public void setPayload(String payload) {
		this.payload = payload;
	}

	@Override
	public String toString() {
		return "KakaoPayRefundVO [aid=" + aid + ", tid=" + tid + ", cid=" + cid + ", status=" + status
				+ ", partner_order_id=" + partner_order_id + ", partner_user_id=" + partner_user_id
				+ ", payment_method_type=" + payment_method_type + ", amount=" + amount + ", approved_cancel_amount="
				+ approved_cancel_amount + ", CanceledAmount=" + CanceledAmount + ", CancelAvailableAmount="
				+ CancelAvailableAmount + ", item_name=" + item_name + ", item_code=" + item_code + ", quantity="
				+ quantity + ", created_at=" + created_at + ", approved_at=" + approved_at + ", canceled_at="
				+ canceled_at + ", payload=" + payload + "]";
	}
	
}
