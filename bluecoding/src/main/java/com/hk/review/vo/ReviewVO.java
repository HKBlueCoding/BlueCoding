package com.hk.review.vo;

import java.util.Date;

public class ReviewVO {

	// private Attribute
	private int revNO;
	private int revParentNO;
	private String revText;
	private Date revDate;
	private String revDelete;
	private int bookNO;
	private String id;
	private String nick;
	private int level;

	// Getter & Setter
	public int getRevNO() {
		return revNO;
	}

	public void setRevNO(int revNO) {
		this.revNO = revNO;
	}

	public int getRevParentNO() {
		return revParentNO;
	}

	public void setRevParentNO(int revParentNO) {
		this.revParentNO = revParentNO;
	}

	public String getRevText() {
		return revText;
	}

	public void setRevText(String revText) {
		this.revText = revText;
	}

	public Date getRevDate() {
		return revDate;
	}

	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}

	public String getRevDelete() {
		return revDelete;
	}

	public void setRevDelete(String revDelete) {
		this.revDelete = revDelete;
	}

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
		return "ReviewVO [revNO=" + revNO + ", revParentNO=" + revParentNO + ", revText=" + revText + ", revDate="
				+ revDate + ", revDelete=" + revDelete + ", bookNO=" + bookNO + ", id=" + id + ", nick=" + nick
				+ ", level=" + level + "]";
	}

}
