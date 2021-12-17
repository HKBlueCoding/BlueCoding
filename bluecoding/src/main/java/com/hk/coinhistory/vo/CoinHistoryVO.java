package com.hk.coinhistory.vo;

import java.util.Date;

public class CoinHistoryVO {
	
	// private Attribute
	private String coinMethod;
	private String id;
	private Date coinDate;
	private String cIsRefund;
	private int rechargeCoin;
	private String tid;
	public String getCoinMethod() {
		return coinMethod;
	}
	public void setCoinMethod(String coinMethod) {
		this.coinMethod = coinMethod;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getCoinDate() {
		return coinDate;
	}
	public void setCoinDate(Date coinDate) {
		this.coinDate = coinDate;
	}
	public String getcIsRefund() {
		return cIsRefund;
	}
	public void setcIsRefund(String cIsRefund) {
		this.cIsRefund = cIsRefund;
	}
	public int getRechargeCoin() {
		return rechargeCoin;
	}
	public void setRechargeCoin(int rechargeCoin) {
		this.rechargeCoin = rechargeCoin;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	@Override
	public String toString() {
		return "CoinHistoryVO [coinMethod=" + coinMethod + ", id=" + id + ", coinDate=" + coinDate + ", cIsRefund="
				+ cIsRefund + ", rechargeCoin=" + rechargeCoin + ", tid=" + tid + "]";
	}
	
}
