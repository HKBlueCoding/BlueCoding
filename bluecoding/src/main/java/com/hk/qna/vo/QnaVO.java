package com.hk.qna.vo;

import java.util.Date;

public class QnaVO {

	// private Attribute
	private int qnaNO;
	private int qnaParentNO;
	private String qnaList;
	private String qnaTitle;
	private String qnaText;
	private String qnaImage;
	private String isProcess;
	private Date qnaDate;
	private Date finishDate;
	private String id;
	
	
	// Getter & Setter
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	//toString()
	@Override
	public String toString() {
		return "QnaVO [qnaNO=" + qnaNO + ", qnaParentNO=" + qnaParentNO + ", qnaList=" + qnaList + ", qnaTitle="
				+ qnaTitle + ", qnaText=" + qnaText + ", qnaImage=" + qnaImage + ", isProcess=" + isProcess
				+ ", qnaDate=" + qnaDate + ", finishDate=" + finishDate + ", id=" + id + "]";
	}

}
