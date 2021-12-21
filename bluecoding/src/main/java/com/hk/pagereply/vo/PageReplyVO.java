package com.hk.pagereply.vo;

import java.util.Date;

public class PageReplyVO {

	// private Attribute
	private int pageReNO;
	private int pageParentNO;
	private String pageReText;
	private Date pageReDate;
	private String pageReDelete;
	private int pageNO;
	private String id;
	private String nick;
	private int level;

	// Getter & Setter
	public int getPageReNO() {
		return pageReNO;
	}

	public void setPageReNO(int pageReNO) {
		this.pageReNO = pageReNO;
	}

	public int getPageParentNO() {
		return pageParentNO;
	}

	public void setPageParentNO(int pageParentNO) {
		this.pageParentNO = pageParentNO;
	}

	public String getPageReText() {
		return pageReText;
	}

	public void setPageReText(String pageReText) {
		this.pageReText = pageReText;
	}

	public Date getPageReDate() {
		return pageReDate;
	}

	public void setPageReDate(Date pageReDate) {
		this.pageReDate = pageReDate;
	}

	public String getPageReDelete() {
		return pageReDelete;
	}

	public void setPageReDelete(String pageReDelete) {
		this.pageReDelete = pageReDelete;
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	// toString()
	@Override
	public String toString() {
		return "PageReplyVO [pageReNO=" + pageReNO + ", pageParentNO=" + pageParentNO + ", pageReText=" + pageReText
				+ ", pageReDate=" + pageReDate + ", pageReDelete=" + pageReDelete + ", pageNO=" + pageNO + ", id=" + id
				+ ", nick=" + nick + ", level=" + level + "]";
	}

}
