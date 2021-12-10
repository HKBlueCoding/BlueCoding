package com.hk.page.vo;

import java.util.Date;

public class PageVO {

	
	// private Attribute
	private int pageNO;
	private int series;
	private String pageTitle;
	private String pageText;
	private Date pageDate;
	private String comment;
	private int pViewCnt;
	private String charge;
	private String like;
	private String pageDelete;
	private int bookNO;
	
	// Getter & Setter
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
	public String getPageTitle() {
		return pageTitle;
	}
	public void setPageTitle(String pageTitle) {
		this.pageTitle = pageTitle;
	}
	public String getPageText() {
		return pageText;
	}
	public void setPageText(String pageText) {
		this.pageText = pageText;
	}
	public Date getPageDate() {
		return pageDate;
	}
	public void setPageDate(Date pageDate) {
		this.pageDate = pageDate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getpViewCnt() {
		return pViewCnt;
	}
	public void setpViewCnt(int pViewCnt) {
		this.pViewCnt = pViewCnt;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getLike() {
		return like;
	}
	public void setLike(String like) {
		this.like = like;
	}
	public String getPageDelete() {
		return pageDelete;
	}
	public void setPageDelete(String pageDelete) {
		this.pageDelete = pageDelete;
	}
	public int getBookNO() {
		return bookNO;
	}
	public void setBookNO(int bookNO) {
		this.bookNO = bookNO;
	}
	
	// toString()
	@Override
	public String toString() {
		return "PageVO [pageNO=" + pageNO + ", series=" + series + ", pageTitle=" + pageTitle + ", pageText=" + pageText
				+ ", pageDate=" + pageDate + ", comment=" + comment + ", pViewCnt=" + pViewCnt + ", charge=" + charge
				+ ", like=" + like + ", pageDelete=" + pageDelete + ", bookNO=" + bookNO + "]";
	}
	
	
	
}
