package com.hk.report.vo;

public class ReportVO {

	// private Attribute
	private String kinds;
	private String repoTitle;
	private String repoText;
	private int allNO;
	private String repoId;
	private String writerId;
	
	// Getter & Setter
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
	public String getRepoTitle() {
		return repoTitle;
	}
	public void setRepoTitle(String repoTitle) {
		this.repoTitle = repoTitle;
	}
	public String getRepoText() {
		return repoText;
	}
	public void setRepoText(String repoText) {
		this.repoText = repoText;
	}
	public int getAllNO() {
		return allNO;
	}
	public void setAllNO(int allNO) {
		this.allNO = allNO;
	}
	public String getRepoId() {
		return repoId;
	}
	public void setRepoId(String repoId) {
		this.repoId = repoId;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	
	// toString()
	@Override
	public String toString() {
		return "ReportVO [kinds=" + kinds + ", repoTitle=" + repoTitle + ", repoText=" + repoText + ", allNO=" + allNO
				+ ", repoId=" + repoId + ", writerId=" + writerId + "]";
	}
	
	
	
}
