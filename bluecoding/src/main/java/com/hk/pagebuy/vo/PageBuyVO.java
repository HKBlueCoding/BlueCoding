package com.hk.pagebuy.vo;

import java.util.Date;

public class PageBuyVO {

	// private Attribute
	private int pageBuy;
	private String id;
	private int pageNO;
	private Date pagePayDate;
	private String pIsRefund;
	
	// Getter & Setter
	public int getPageBuy() {
		return pageBuy;
	}
	public void setPageBuy(int pageBuy) {
		this.pageBuy = pageBuy;
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
		return "PageBuyVO [pageBuy=" + pageBuy + ", id=" + id + ", pageNO=" + pageNO + ", pagePayDate=" + pagePayDate
				+ ", pIsRefund=" + pIsRefund + "]";
	}
	
	
	
}
