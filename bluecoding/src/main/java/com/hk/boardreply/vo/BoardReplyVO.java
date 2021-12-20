package com.hk.boardreply.vo;

import java.util.Date;

public class BoardReplyVO {

	// private Attribute
	private int replyNO;
	private int reParentNO;
	private String boardReText;
	private Date boardReDate;
	private String boardReDelete;
	private int articleNO;
	private String id;
	private String nick;
	private int level;

	// Getter & Setter
	public int getReplyNO() {
		return replyNO;
	}

	public void setReplyNO(int replyNO) {
		this.replyNO = replyNO;
	}

	public int getReParentNO() {
		return reParentNO;
	}

	public void setReParentNO(int reParentNO) {
		this.reParentNO = reParentNO;
	}

	public String getBoardReText() {
		return boardReText;
	}

	public void setBoardReText(String boardReText) {
		this.boardReText = boardReText;
	}

	public Date getBoardReDate() {
		return boardReDate;
	}

	public void setBoardReDate(Date boardReDate) {
		this.boardReDate = boardReDate;
	}

	public String getBoardReDelete() {
		return boardReDelete;
	}

	public void setBoardReDelete(String boardReDelete) {
		this.boardReDelete = boardReDelete;
	}

	public int getArticleNO() {
		return articleNO;
	}

	public void setArticleNO(int articleNO) {
		this.articleNO = articleNO;
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
		return "BoardReplyVO [replyNO=" + replyNO + ", reParentNO=" + reParentNO + ", boardReText=" + boardReText
				+ ", boardReDate=" + boardReDate + ", boardReDelete=" + boardReDelete + ", articleNO=" + articleNO
				+ ", id=" + id + ", nick=" + nick + ", level=" + level + "]";
	}

}
