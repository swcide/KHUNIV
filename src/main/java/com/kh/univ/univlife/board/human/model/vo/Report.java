package com.kh.univ.univlife.board.human.model.vo;

import java.sql.Date;

public class Report {
	
	private int hId;
	private String rpWriter;
	private String rpName;
	private Date rpCreateDate;
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(int hId, String rpWriter, String rpName, Date rpCreateDate) {
		super();
		this.hId = hId;
		this.rpWriter = rpWriter;
		this.rpName = rpName;
		this.rpCreateDate = rpCreateDate;
	}
	public int gethId() {
		return hId;
	}
	public void sethId(int hId) {
		this.hId = hId;
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
	public Date getRpCreateDate() {
		return rpCreateDate;
	}
	public void setRpCreateDate(Date rpCreateDate) {
		this.rpCreateDate = rpCreateDate;
	}
	@Override
	public String toString() {
		return "Report [hId=" + hId + ", rpWriter=" + rpWriter + ", rpName=" + rpName + ", rpCreateDate=" + rpCreateDate
				+ "]";
	}



}
