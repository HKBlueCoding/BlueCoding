package com.hk.chest.vo;

import java.util.Date;

public class ChestVO {

	// private Attribute
	
	private int bookNO;
	private String id;
	private String name;
	private String bookTitle;
	private Date bookDate;
	private int bViewCnt;
	
	private int pageNO;
	private int series;
	private int pViewCnt;
	
	private int pagePay;
	private Date pagePayDate;
	
	private String coinMethod;
	private int rechargeCoin;
	private Date coinDate;
	private String tid;
	private String cisRefund;
	
	private String isCommission;
	private Date commissionDate;
	
	// Getter & Setter
	public int getBookNO() {
		return bookNO;
	}
	public void setBookNO(int bookNO) {
		this.bookNO = bookNO;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}
	public int getbViewCnt() {
		return bViewCnt;
	}
	public void setbViewCnt(int bViewCnt) {
		this.bViewCnt = bViewCnt;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
	}
	public int getSeries() {
		return series;
	}
	public void setSeries(int series) {
		this.series = series;
	}
	public int getpViewCnt() {
		return pViewCnt;
	}
	public void setpViewCnt(int pViewCnt) {
		this.pViewCnt = pViewCnt;
	}
	public int getPagePay() {
		return pagePay;
	}
	public void setPagePay(int pagePay) {
		this.pagePay = pagePay;
	}
	public Date getPagePayDate() {
		return pagePayDate;
	}
	public void setPagePayDate(Date pagePayDate) {
		this.pagePayDate = pagePayDate;
	}
	public String getCoinMethod() {
		return coinMethod;
	}
	public void setCoinMethod(String coinMethod) {
		this.coinMethod = coinMethod;
	}
	public int getRechargeCoin() {
		return rechargeCoin;
	}
	public void setRechargeCoin(int rechargeCoin) {
		this.rechargeCoin = rechargeCoin;
	}
	public Date getCoinDate() {
		return coinDate;
	}
	public void setCoinDate(Date coinDate) {
		this.coinDate = coinDate;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getCisRefund() {
		return cisRefund;
	}
	public void setCisRefund(String cisRefund) {
		this.cisRefund = cisRefund;
	}
	public String getIsCommission() {
		return isCommission;
	}
	public void setIsCommission(String isCommission) {
		this.isCommission = isCommission;
	}
	public Date getCommissionDate() {
		return commissionDate;
	}
	public void setCommissionDate(Date commissionDate) {
		this.commissionDate = commissionDate;
	}
	
	// toString()
	@Override
	public String toString() {
		return "ChestVO [bookNO=" + bookNO + ", id=" + id + ", name=" + name + ", bookTitle=" + bookTitle
				+ ", bookDate=" + bookDate + ", bViewCnt=" + bViewCnt + ", pageNO=" + pageNO + ", series=" + series
				+ ", pViewCnt=" + pViewCnt + ", pagePay=" + pagePay + ", pagePayDate=" + pagePayDate + ", coinMethod="
				+ coinMethod + ", rechargeCoin=" + rechargeCoin + ", coinDate=" + coinDate + ", tid=" + tid
				+ ", cisRefund=" + cisRefund + ", isCommission=" + isCommission + ", commissionDate=" + commissionDate
				+ "]";
	}
	
	

	
	
	
}