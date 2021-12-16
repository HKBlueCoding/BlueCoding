package com.hk.pagebuy.vo;

import java.util.Date;

public class PageBuyVO {

	// private PageBuy Attribute
	private int pagePay;
	private String id;
	private int pageNO;
	private Date pagePayDate;
	private String pIsRefund;
	
	// Getter & Setter
	public int getPagePay() {
		return pagePay;
	}
	public void setPagePay(int pagePay) {
		this.pagePay = pagePay;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
	}
	public Date getPagePayDate() {
		return pagePayDate;
	}
	public void setPagePayDate(Date pagePayDate) {
		this.pagePayDate = pagePayDate;
	}
	public String getpIsRefund() {
		return pIsRefund;
	}
	public void setpIsRefund(String pIsRefund) {
		this.pIsRefund = pIsRefund;
	}
	
	// toString()
	@Override
	public String toString() {
		return "PageBuyVO [pagePay=" + pagePay + ", id=" + id + ", pageNO=" + pageNO + ", pagePayDate=" + pagePayDate
				+ ", pIsRefund=" + pIsRefund + "]";
	}
	
	
}