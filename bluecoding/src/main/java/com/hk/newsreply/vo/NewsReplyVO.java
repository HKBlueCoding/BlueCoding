package com.hk.newsreply.vo;

import java.util.Date;

public class NewsReplyVO {

	// private Attribute
	private int newsReplyNO;
	private int nReParentNO;
	private String newsReText;
	private Date newsReDate;
	private String newsReDelete;
	private int newsNO;
	private String id;
	private String nick;
	
	// Getter & Setter
	public int getNewsReplyNO() {
		return newsReplyNO;
	}
	public void setNewsReplyNO(int newsReplyNO) {
		this.newsReplyNO = newsReplyNO;
	}
	public int getnReParentNO() {
		return nReParentNO;
	}
	public void setnReParentNO(int nReParentNO) {
		this.nReParentNO = nReParentNO;
	}
	public String getNewsReText() {
		return newsReText;
	}
	public void setNewsReText(String newsReText) {
		this.newsReText = newsReText;
	}
	public Date getNewsReDate() {
		return newsReDate;
	}
	public void setNewsReDate(Date newsReDate) {
		this.newsReDate = newsReDate;
	}
	public String getNewsReDelete() {
		return newsReDelete;
	}
	public void setNewsReDelete(String newsReDelete) {
		this.newsReDelete = newsReDelete;
	}
	public int getNewsNO() {
		return newsNO;
	}
	public void setNewsNO(int newsNO) {
		this.newsNO = newsNO;
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
		return "NewsReplyVO [newsReplyNO=" + newsReplyNO + ", nReParentNO=" + nReParentNO + ", newsReText=" + newsReText
				+ ", newsReDate=" + newsReDate + ", newsReDelete=" + newsReDelete + ", newsNO=" + newsNO + ", id=" + id
				+ ", nick=" + nick + "]";
	}
	
	
	
}
