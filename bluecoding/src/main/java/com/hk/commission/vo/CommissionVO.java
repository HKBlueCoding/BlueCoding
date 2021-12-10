package com.hk.commission.vo;

import java.util.Date;

public class CommissionVO {
	
	// private Attribute
	private String isCommission;
	private String id;
	private int pageNO;
	private Date commissionDate;
	private int admCommission;
	
	// Getter & Setter
	public String getIsCommission() {
		return isCommission;
	}
	public void setIsCommission(String isCommission) {
		this.isCommission = isCommission;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO) {
		this.pageNO = pageNO;
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
	
	// toString()
	@Override
	public String toString() {
		return "CommissionVO [isCommission=" + isCommission + ", id=" + id + ", pageNO=" + pageNO + ", commissionDate="
				+ commissionDate + ", admCommission=" + admCommission + "]";
	}
	
	

}
