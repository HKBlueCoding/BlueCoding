package com.hk.news.vo;

import java.util.Date;

public class NewsVO {

	// private Attribute
	private int newsNO;
	private String category;
	private String newsTitle;
	private String newsText;
	private Date newsDate;
	private String newsImage;
	private int nViewCnt;
	private String newsDelete;
	private String id;
	private String nick;
	
	
	// Getter & Setter
	public int getNewsNO() {
		return newsNO;
	}
	public void setNewsNO(int newsNO) {
		this.newsNO = newsNO;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsText() {
		return newsText;
	}
	public void setNewsText(String newsText) {
		this.newsText = newsText;
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public String getNewsImage() {
		return newsImage;
	}
	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}
	public int getnViewCnt() {
		return nViewCnt;
	}
	public void setnViewCnt(int nViewCnt) {
		this.nViewCnt = nViewCnt;
	}
	public String getNewsDelete() {
		return newsDelete;
	}
	public void setNewsDelete(String newsDelete) {
		this.newsDelete = newsDelete;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	// toString()
	@Override
	public String toString() {
		return "NewsVO [newsNO=" + newsNO + ", category=" + category + ", newsTitle=" + newsTitle + ", newsText="
				+ newsText + ", newsDate=" + newsDate + ", newsImage=" + newsImage + ", nViewCnt=" + nViewCnt
				+ ", newsDelete=" + newsDelete + ", id=" + id + ", nick=" + nick + "]";
	}
	
	
}
