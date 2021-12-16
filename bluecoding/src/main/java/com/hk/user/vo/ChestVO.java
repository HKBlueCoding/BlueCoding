package com.hk.user.vo;

import java.util.Date;

public class ChestVO {

	// private Book Attribute
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
	
	// private Page Attribute
	private int pageNO;
	private int series;
	private String pageTitle;
	private String pageText;
	private Date pageDate;
	private String comment;
	private int pViewCnt;
	private String charge;
	private int like;
	private String pageDelete;
	
	// private PageBuy Attribute
	private int pageBuy;
	private Date pagePayDate;
	private String pIsRefund;
	
	// private CoinHistory Attribute
	private String coinMethod;
	private Date coinDate;
	private String cIsRefund;
	private int rechargeCoin;
	
	// private Commission Attribute
	private String isCommission;
	private Date commissionDate;
	private int admCommission;

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
	
	// Getter & Setter
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
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public String getPageDelete() {
		return pageDelete;
	}
	public void setPageDelete(String pageDelete) {
		this.pageDelete = pageDelete;
	}
	public int getPageBuy() {
		return pageBuy;
	}
	public void setPageBuy(int pageBuy) {
		this.pageBuy = pageBuy;
	}
	public Date getPagePayDate() {
		return pagePayDate;
	}
	public void setPagePayDate(Date pagePayDate) {
		this.pagePayDate = pagePayDate;
	}
	public String getpIsRefund() {
		return pIsRefund;
	}
	public void setpIsRefund(String pIsRefund) {
		this.pIsRefund = pIsRefund;
	}
	public String getCoinMethod() {
		return coinMethod;
	}
	public void setCoinMethod(String coinMethod) {
		this.coinMethod = coinMethod;
	}
	public Date getCoinDate() {
		return coinDate;
	}
	public void setCoinDate(Date coinDate) {
		this.coinDate = coinDate;
	}
	public String getcIsRefund() {
		return cIsRefund;
	}
	public void setcIsRefund(String cIsRefund) {
		this.cIsRefund = cIsRefund;
	}
	public int getRechargeCoin() {
		return rechargeCoin;
	}
	public void setRechargeCoin(int rechargeCoin) {
		this.rechargeCoin = rechargeCoin;
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
	public int getAdmCommission() {
		return admCommission;
	}
	public void setAdmCommission(int admCommission) {
		this.admCommission = admCommission;
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
				+ ", bookDate=" + bookDate + ", bViewCnt=" + bViewCnt + ", pageNO=" + pageNO + ", series=" + series
				+ ", pageTitle=" + pageTitle + ", pageText=" + pageText + ", pageDate=" + pageDate + ", comment="
				+ comment + ", pViewCnt=" + pViewCnt + ", charge=" + charge + ", like=" + like + ", pageDelete="
				+ pageDelete + ", pageBuy=" + pageBuy + ", pagePayDate=" + pagePayDate + ", pIsRefund=" + pIsRefund
				+ ", coinMethod=" + coinMethod + ", coinDate=" + coinDate + ", cIsRefund=" + cIsRefund
				+ ", rechargeCoin=" + rechargeCoin + ", isCommission=" + isCommission + ", commissionDate="
				+ commissionDate + ", admCommission=" + admCommission + ", articleNO=" + articleNO + ", boardTitle="
				+ boardTitle + ", boardText=" + boardText + ", boardDate=" + boardDate + ", boardImage=" + boardImage
				+ ", bdViewCnt=" + bdViewCnt + ", boardDelete=" + boardDelete + ", nick=" + nick + ", qnaNO=" + qnaNO
				+ ", qnaParentNO=" + qnaParentNO + ", qnaList=" + qnaList + ", qnaTitle=" + qnaTitle + ", qnaText="
				+ qnaText + ", qnaImage=" + qnaImage + ", isProcess=" + isProcess + ", qnaDate=" + qnaDate
				+ ", finishDate=" + finishDate + "]";
	}
	
	
}