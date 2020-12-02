package com.kh.univ.univlife.board.human.model.vo;

import java.sql.Date;

public class Report extends HumanBoard {
	
	private String rpWriter;
	private String rpName;
	private String rpContent;
	private String categoryName;
	private String status;
	private Date rpCreateDate;
	private int rpId;
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Report(int hId, String hType, String hTitle, String hContent, String hWriter, String hName, int hCount,
			String originalFilename, String renameFilename, Date hCreateDate, Date hModifyDate, String hStatus,
			String hSecret, String rpWriter, String rpName, String rpContent, String categoryName, String status,
			Date rpCreateDate, int rpId) {
		super(hId, hType, hTitle, hContent, hWriter, hName, hCount, originalFilename, renameFilename, hCreateDate,
				hModifyDate, hStatus, hSecret);
		this.rpWriter = rpWriter;
		this.rpName = rpName;
		this.rpContent = rpContent;
		this.categoryName = categoryName;
		this.status = status;
		this.rpCreateDate = rpCreateDate;
		this.rpId = rpId;
	}

	public String getRpWriter() {
		return rpWriter;
	}

	public void setRpWriter(String rpWriter) {
		this.rpWriter = rpWriter;
	}

	public String getRpName() {
		return rpName;
	}

	public void setRpName(String rpName) {
		this.rpName = rpName;
	}

	public String getRpContent() {
		return rpContent;
	}

	public void setRpContent(String rpContent) {
		this.rpContent = rpContent;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRpCreateDate() {
		return rpCreateDate;
	}

	public void setRpCreateDate(Date rpCreateDate) {
		this.rpCreateDate = rpCreateDate;
	}

	public int getRpId() {
		return rpId;
	}

	public void setRpId(int rpId) {
		this.rpId = rpId;
	}

	@Override
	public String toString() {
		return "Report [rpWriter=" + rpWriter + ", rpName=" + rpName + ", rpContent=" + rpContent + ", categoryName="
				+ categoryName + ", status=" + status + ", rpCreateDate=" + rpCreateDate + ", rpId=" + rpId + "]";
	}

	
}