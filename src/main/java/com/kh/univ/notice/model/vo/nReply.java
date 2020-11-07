package com.kh.univ.notice.model.vo;

import java.sql.Date;

public class nReply {
	
	private int rId;
	private String rContent;
	private int refNid;
	private String rWriter;
	private Date rCreateDate;
	private Date rmodifyDate;
	private String rStatus;
	public nReply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public nReply(int rId, String rContent, int refNid, String rWriter, Date rCreateDate, Date rmodifyDate,
			String rStatus) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refNid = refNid;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rmodifyDate = rmodifyDate;
		this.rStatus = rStatus;
	}
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getRefNid() {
		return refNid;
	}
	public void setRefNid(int refNid) {
		this.refNid = refNid;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public Date getrCreateDate() {
		return rCreateDate;
	}
	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}
	public Date getRmodifyDate() {
		return rmodifyDate;
	}
	public void setRmodifyDate(Date rmodifyDate) {
		this.rmodifyDate = rmodifyDate;
	}
	public String getrStatus() {
		return rStatus;
	}
	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}
	@Override
	public String toString() {
		return "nReply [rId=" + rId + ", rContent=" + rContent + ", refBid=" + refNid + ", rWriter=" + rWriter
				+ ", rCreateDate=" + rCreateDate + ", rmodifyDate=" + rmodifyDate + ", rStatus=" + rStatus + "]";
	}
	
	

}
