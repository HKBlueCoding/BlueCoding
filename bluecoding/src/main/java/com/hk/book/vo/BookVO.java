package com.hk.book.vo;

public class BookVO {
	
	// private Attribute
	private int bookNO;
	private String bookTitle;
	private String intro;
	private String theme;
	private String bookImage;
	private String bookDelete;
	private String name;
	private String id;
	
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
	
	//toString()
	@Override
	public String toString() {
		return "BookVO [bookNO=" + bookNO + ", bookTitle=" + bookTitle + ", intro=" + intro + ", theme=" + theme
				+ ", bookImage=" + bookImage + ", bookDelete=" + bookDelete + ", name=" + name + ", id=" + id + "]";
	}
	
	
	
	

}
