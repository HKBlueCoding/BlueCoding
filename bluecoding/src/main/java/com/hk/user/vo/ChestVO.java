package com.hk.user.vo;

import java.util.Date;

public class ChestVO {

	// private Attribute
	private int bookNO;
	private String bookTitle;
	private String intro;
	private String theme;
	private String bookImage;
	private String bookDelete;
	private String name;
	private String id;
	private Date bookDate;
	private int bViewCnt;

	// private Board Attribute
	private int articleNO;
	private String boardTitle;
	private String boardText;
	private Date boardDate;
	private String boardImage;
	private int bdViewCnt;
	private String boardDelete;

	private String nick;

	// private Qna Attribute
	private int qnaNO;
	private int qnaParentNO;
	private String qnaList;
	private String qnaTitle;
	private String qnaText;
	private String qnaImage;
	private String isProcess;
	private Date qnaDate;
	private Date finishDate;
	
	
	// Generate Getter & Setter
	public int getBookNO() {
		return bookNO;
	}

	public void setBookNO(int bookNO) {
		this.bookNO = bookNO;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getBookImage() {
		return bookImage;
	}

	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}

	public String getBookDelete() {
		return bookDelete;
	}

	public void setBookDelete(String bookDelete) {
		this.bookDelete = bookDelete;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getBdViewCnt() {
		return bdViewCnt;
	}

	public void setBdViewCnt(int bdViewCnt) {
		this.bdViewCnt = bdViewCnt;
	}

	public String getBoardDelete() {
		return boardDelete;
	}

	public void setBoardDelete(String boardDelete) {
		this.boardDelete = boardDelete;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getQnaNO() {
		return qnaNO;
	}

	public void setQnaNO(int qnaNO) {
		this.qnaNO = qnaNO;
	}

	public int getQnaParentNO() {
		return qnaParentNO;
	}

	public void setQnaParentNO(int qnaParentNO) {
		this.qnaParentNO = qnaParentNO;
	}

	public String getQnaList() {
		return qnaList;
	}

	public void setQnaList(String qnaList) {
		this.qnaList = qnaList;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaText() {
		return qnaText;
	}

	public void setQnaText(String qnaText) {
		this.qnaText = qnaText;
	}

	public String getQnaImage() {
		return qnaImage;
	}

	public void setQnaImage(String qnaImage) {
		this.qnaImage = qnaImage;
	}

	public String getIsProcess() {
		return isProcess;
	}

	public void setIsProcess(String isProcess) {
		this.isProcess = isProcess;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public Date getFinishDate() {
		return finishDate;
	}

	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}

	// toString()
	@Override
	public String toString() {
		return "ChestVO [bookNO=" + bookNO + ", bookTitle=" + bookTitle + ", intro=" + intro + ", theme=" + theme
				+ ", bookImage=" + bookImage + ", bookDelete=" + bookDelete + ", name=" + name + ", id=" + id
				+ ", bookDate=" + bookDate + ", bViewCnt=" + bViewCnt + ", articleNO=" + articleNO + ", boardTitle="
				+ boardTitle + ", boardText=" + boardText + ", boardDate=" + boardDate + ", boardImage=" + boardImage
				+ ", bdViewCnt=" + bdViewCnt + ", boardDelete=" + boardDelete + ", nick=" + nick + ", qnaNO=" + qnaNO
				+ ", qnaParentNO=" + qnaParentNO + ", qnaList=" + qnaList + ", qnaTitle=" + qnaTitle + ", qnaText="
				+ qnaText + ", qnaImage=" + qnaImage + ", isProcess=" + isProcess + ", qnaDate=" + qnaDate
				+ ", finishDate=" + finishDate + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
