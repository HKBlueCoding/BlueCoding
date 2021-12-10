package com.hk.favo.vo;

public class FavoVO {
	
	// private Attribute
	private String id;
	private int bookNO;
	
	// Getter & Setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBookNO() {
		return bookNO;
	}
	public void setBookNO(int bookNO) {
		this.bookNO = bookNO;
	}
	
	// toString()
	@Override
	public String toString() {
		return "FavoVO [id=" + id + ", bookNO=" + bookNO + "]";
	}
	
	

}
