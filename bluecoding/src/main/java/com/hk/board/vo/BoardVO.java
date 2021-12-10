package com.hk.board.vo;

import java.util.Date;

public class BoardVO {
	
	// private Attribute
	private int articleNO;
	private String boardTitle;
	private String boardText;
	private Date boardDate;
	private String boardImage;
	private int bViewCnt;
	private String boardDelete;
	private String id;
	private String nick;
	
	
	// Getter & Setter
	public int getArticleNO() {
		return articleNO;
	}
	public void setArticleNO(int articleNO) {
		this.articleNO = articleNO;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardText() {
		return boardText;
	}
	public void setBoardText(String boardText) {
		this.boardText = boardText;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardImage() {
		return boardImage;
	}
	public void setBoardImage(String boardImage) {
		this.boardImage = boardImage;
	}
	public int getbViewCnt() {
		return bViewCnt;
	}
	public void setbViewCnt(int bViewCnt) {
		this.bViewCnt = bViewCnt;
	}
	public String getBoardDelete() {
		return boardDelete;
	}
	public void setBoardDelete(String boardDelete) {
		this.boardDelete = boardDelete;
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
		return "BoardVO [articleNO=" + articleNO + ", boardTitle=" + boardTitle + ", boardText=" + boardText
				+ ", boardDate=" + boardDate + ", boardImage=" + boardImage + ", bViewCnt=" + bViewCnt
				+ ", boardDelete=" + boardDelete + ", id=" + id + ", nick=" + nick + "]";
	}
	
	
	

}
