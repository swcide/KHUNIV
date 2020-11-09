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
	private String rName;
	private int refRid;
	
	public nReply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public nReply(int rId, String rContent, int refNid, String rWriter, Date rCreateDate, Date rmodifyDate,
			String rStatus, String rName, int refRid) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refNid = refNid;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rmodifyDate = rmodifyDate;
		this.rStatus = rStatus;
		this.rName = rName;
		this.refRid = refRid;
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

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public int getRefRid() {
		return refRid;
	}

	public void setRefRid(int refRid) {
		this.refRid = refRid;
	}

	@Override
	public String toString() {
		return "nReply [rId=" + rId + ", rContent=" + rContent + ", refNid=" + refNid + ", rWriter=" + rWriter
				+ ", rCreateDate=" + rCreateDate + ", rmodifyDate=" + rmodifyDate + ", rStatus=" + rStatus + ", rName="
				+ rName + ", refRid=" + refRid + "]";
	}

	
	

}
