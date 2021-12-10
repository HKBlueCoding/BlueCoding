package com.hk.author.vo;

import java.util.Date;

public class AuthorVO {

	// private Attribute
	private int authorProfit;
	private String isRealization;
	private Date pagePayDate;
	private Date realizationDate;
	private int pageNO;
	private String id;
	
	// Getter & Setter
	public int getAuthorProfit() {
		return authorProfit;
	}
	public void setAuthorProfit(int authorProfit) {
		this.authorProfit = authorProfit;
	}
	public String getIsRealization() {
		return isRealization;
	}
	public void setIsRealization(String isRealization) {
		this.isRealization = isRealization;
	}
	public Date getPagePayDate() {
		return pagePayDate;
	}
	public void setPagePayDate(Date pagePayDate) {
		this.pagePayDate = pagePayDate;
	}
	public Date getRealizationDate() {
		return realizationDate;
	}
	public void setRealizationDate(Date realizationDate) {
		this.realizationDate = realizationDate;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	// toString()
	@Override
	public String toString() {
		return "AuthorVO [authorProfit=" + authorProfit + ", isRealization=" + isRealization + ", pagePayDate="
				+ pagePayDate + ", realizationDate=" + realizationDate + ", pageNO=" + pageNO + ", id=" + id + "]";
	}
	
	
	
}
