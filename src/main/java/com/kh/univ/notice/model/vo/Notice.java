package com.kh.univ.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int nId;
	private int nType;
	private String nTitle;
	private String nContent;
	private String nWriter;
	private String nName;
	private int nCount ;
	private String originalFileName;
	private String renameFileName;
	
	private Date nCreateDate;
	private Date nModifyDate;
	private String nStatus;
	private String nSecret;
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notice(int nId, int nType, String nTitle, String nContent, String nWriter, String nName, int nCount,
			String originalFileName, String renameFileName, Date nCreateDate, Date nModifyDate, String nStatus,
			String nSecret) {
		super();
		this.nId = nId;
		this.nType = nType;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nWriter = nWriter;
		this.nName = nName;
		this.nCount = nCount;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.nCreateDate = nCreateDate;
		this.nModifyDate = nModifyDate;
		this.nStatus = nStatus;
		this.nSecret = nSecret;
	}

	public int getnId() {
		return nId;
	}

	public void setnId(int nId) {
		this.nId = nId;
	}

	public int getnType() {
		return nType;
	}

	public void setnType(int nType) {
		this.nType = nType;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public String getnWriter() {
		return nWriter;
	}

	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}

	public String getnName() {
		return nName;
	}

	public void setnName(String nName) {
		this.nName = nName;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getRenameFileName() {
		return renameFileName;
	}

	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}

	public Date getnCreateDate() {
		return nCreateDate;
	}

	public void setnCreateDate(Date nCreateDate) {
		this.nCreateDate = nCreateDate;
	}

	public Date getnModifyDate() {
		return nModifyDate;
	}

	public void setnModifyDate(Date nModifyDate) {
		this.nModifyDate = nModifyDate;
	}

	public String getnStatus() {
		return nStatus;
	}

	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}

	public String getnSecret() {
		return nSecret;
	}

	public void setnSecret(String nSecret) {
		this.nSecret = nSecret;
	}

	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", nType=" + nType + ", nTitle=" + nTitle + ", nContent=" + nContent
				+ ", nWriter=" + nWriter + ", nName=" + nName + ", nCount=" + nCount + ", originalFileName="
				+ originalFileName + ", renameFileName=" + renameFileName + ", nCreateDate=" + nCreateDate
				+ ", nModifyDate=" + nModifyDate + ", nStatus=" + nStatus + ", nSecret=" + nSecret + "]";
	}

	
	
}
