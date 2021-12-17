package com.hk.chest.vo;

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
	
	// private Favo Attribute
	// private String id;
	// private int bookNO;
	
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
	// private int bookNO;
	
	// private PageBuy Attribute
	private int pagePay;
	// private String id;
	// private int pageNO;
	private Date pagePayDate;
	private String pIsRefund;
	
	// private CoinHistory Attribute
	private String coinMethod;
	// private String id;
	private Date coinDate;
	private String cIsRefund;
	private int rechargeCoin;
	private String tid;
	
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
	public int getPagePay() {
		return pagePay;
	}
	public void setPagePay(int pagePay) {
		this.pagePay = pagePay;
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
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	
	@Override
	public String toString() {
		return "ChestVO [bookNO=" + bookNO + ", bookTitle=" + bookTitle + ", intro=" + intro + ", theme=" + theme
				+ ", bookImage=" + bookImage + ", bookDelete=" + bookDelete + ", name=" + name + ", id=" + id
				+ ", bookDate=" + bookDate + ", bViewCnt=" + bViewCnt + ", pageNO=" + pageNO + ", series=" + series
				+ ", pageTitle=" + pageTitle + ", pageText=" + pageText + ", pageDate=" + pageDate + ", comment="
				+ comment + ", pViewCnt=" + pViewCnt + ", charge=" + charge + ", like=" + like + ", pageDelete="
				+ pageDelete + ", pagePay=" + pagePay + ", pagePayDate=" + pagePayDate + ", pIsRefund=" + pIsRefund
				+ ", coinMethod=" + coinMethod + ", coinDate=" + coinDate + ", cIsRefund=" + cIsRefund
				+ ", rechargeCoin=" + rechargeCoin + ", tid=" + tid + "]";
	}		

	
}