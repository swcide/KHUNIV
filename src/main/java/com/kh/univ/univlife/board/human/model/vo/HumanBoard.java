package com.kh.univ.univlife.board.human.model.vo;

import java.sql.Date;

public class HumanBoard {
	
	private int hId;
	private String hType;
	private String hTitle;
	private String hContent;
	private String hWriter;
	private String hName;
	private int hCount ;
	private String originalFilename;
	private String renameFilename;
	
	private Date hCreateDate;
	private Date hModifyDate;
	private String hStatus;
	private String hSecret;
	public HumanBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HumanBoard(int hId, String hType, String hTitle, String hContent, String hWriter, String hName, int hCount,
			String originalFilename, String renameFilename, Date hCreateDate, Date hModifyDate, String hStatus,
			String hSecret) {
		super();
		this.hId = hId;
		this.hType = hType;
		this.hTitle = hTitle;
		this.hContent = hContent;
		this.hWriter = hWriter;
		this.hName = hName;
		this.hCount = hCount;
		this.originalFilename = originalFilename;
		this.renameFilename = renameFilename;
		this.hCreateDate = hCreateDate;
		this.hModifyDate = hModifyDate;
		this.hStatus = hStatus;
		this.hSecret = hSecret;
	}
	public int gethId() {
		return hId;
	}
	public void sethId(int hId) {
		this.hId = hId;
	}
	public String gethType() {
		return hType;
	}
	public void sethType(String hType) {
		this.hType = hType;
	}
	public String gethTitle() {
		return hTitle;
	}
	public void sethTitle(String hTitle) {
		this.hTitle = hTitle;
	}
	public String gethContent() {
		return hContent;
	}
	public void sethContent(String hContent) {
		this.hContent = hContent;
	}
	public String gethWriter() {
		return hWriter;
	}
	public void sethWriter(String hWriter) {
		this.hWriter = hWriter;
	}
	public String gethName() {
		return hName;
	}
	public void sethName(String hName) {
		this.hName = hName;
	}
	public int gethCount() {
		return hCount;
	}
	public void sethCount(int hCount) {
		this.hCount = hCount;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getRenameFilename() {
		return renameFilename;
	}
	public void setRenameFilename(String renameFilename) {
		this.renameFilename = renameFilename;
	}
	public Date gethCreateDate() {
		return hCreateDate;
	}
	public void sethCreateDate(Date hCreateDate) {
		this.hCreateDate = hCreateDate;
	}
	public Date gethModifyDate() {
		return hModifyDate;
	}
	public void sethModifyDate(Date hModifyDate) {
		this.hModifyDate = hModifyDate;
	}
	public String gethStatus() {
		return hStatus;
	}
	public void sethStatus(String hStatus) {
		this.hStatus = hStatus;
	}
	public String gethSecret() {
		return hSecret;
	}
	public void sethSecret(String hSecret) {
		this.hSecret = hSecret;
	}
	@Override
	public String toString() {
		return "HumanBoard [hId=" + hId + ", hType=" + hType + ", hTitle=" + hTitle + ", hContent=" + hContent
				+ ", hWriter=" + hWriter + ", hName=" + hName + ", hCount=" + hCount + ", originalFilename="
				+ originalFilename + ", renameFilename=" + renameFilename + ", hCreateDate=" + hCreateDate
				+ ", hModifyDate=" + hModifyDate + ", hStatus=" + hStatus + ", hSecret=" + hSecret + "]";
	}

	
}