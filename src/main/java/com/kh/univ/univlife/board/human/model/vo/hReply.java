package com.kh.univ.univlife.board.human.model.vo;

import java.sql.Date;

public class hReply {
	
	private int rId;
	private String rContent;
	private int refHid;
	private String rWriter;
	private Date rCreateDate;
	private Date rmodifyDate;
	private String rStatus;
	private String rName;
	private int refRid;
	private int hType;
	
	public hReply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public hReply(int rId, String rContent, int refHid, String rWriter, Date rCreateDate, Date rmodifyDate,
			String rStatus, String rName, int refRid, int hType) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refHid = refHid;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rmodifyDate = rmodifyDate;
		this.rStatus = rStatus;
		this.rName = rName;
		this.refRid = refRid;
		this.hType = hType;
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

	public int getRefHid() {
		return refHid;
	}

	public void setRefHid(int refHid) {
		this.refHid = refHid;
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

	public int gethType() {
		return hType;
	}

	public void sethType(int hType) {
		this.hType = hType;
	}

	@Override
	public String toString() {
		return "hReply [rId=" + rId + ", rContent=" + rContent + ", refHid=" + refHid + ", rWriter=" + rWriter
				+ ", rCreateDate=" + rCreateDate + ", rmodifyDate=" + rmodifyDate + ", rStatus=" + rStatus + ", rName="
				+ rName + ", refRid=" + refRid + ", hType=" + hType + "]";
	}
	
	

}
