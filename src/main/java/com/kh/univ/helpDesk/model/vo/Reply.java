package com.kh.univ.helpDesk.model.vo;

import java.sql.Date;

public class Reply {
	
	private int rId;
	private String rContent;
	private int refQid;
	private String rWriter;
	private Date rCreateDate;
	private Date rmodifyDate;
	private String rStatus;
	private String rName;
	private int refRid;
	private int qType;
	
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Reply(int rId, String rContent, int refQid, String rWriter, Date rCreateDate, Date rmodifyDate, String rStatus, String rName, int refRid, int qType) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refQid = refQid;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rmodifyDate = rmodifyDate;
		this.rStatus = rStatus;
		this.rName = rName;
		this.refRid = refRid;
		this.qType = qType;
	}

	public int getrId()
		{
			return rId;
		}

	public void setrId(int rId)
		{
			this.rId = rId;
		}

	public String getrContent()
		{
			return rContent;
		}

	public void setrContent(String rContent)
		{
			this.rContent = rContent;
		}

	public int getRefQid()
		{
			return refQid;
		}

	public void setRefQid(int refQid)
		{
			this.refQid = refQid;
		}

	public String getrWriter()
		{
			return rWriter;
		}

	public void setrWriter(String rWriter)
		{
			this.rWriter = rWriter;
		}

	public Date getrCreateDate()
		{
			return rCreateDate;
		}

	public void setrCreateDate(Date rCreateDate)
		{
			this.rCreateDate = rCreateDate;
		}

	public Date getRmodifyDate()
		{
			return rmodifyDate;
		}

	public void setRmodifyDate(Date rmodifyDate)
		{
			this.rmodifyDate = rmodifyDate;
		}

	public String getrStatus()
		{
			return rStatus;
		}

	public void setrStatus(String rStatus)
		{
			this.rStatus = rStatus;
		}

	public String getrName()
		{
			return rName;
		}

	public void setrName(String rName)
		{
			this.rName = rName;
		}

	public int getRefRid()
		{
			return refRid;
		}

	public void setRefRid(int refRid)
		{
			this.refRid = refRid;
		}

	public int getqType()
		{
			return qType;
		}

	public void setqType(int qType)
		{
			this.qType = qType;
		}

	@Override
	public String toString()
		{
			return "Reply [rId=" + rId + ", rContent=" + rContent + ", refQid=" + refQid + ", rWriter=" + rWriter + ", rCreateDate=" + rCreateDate + ", rmodifyDate=" + rmodifyDate + ", rStatus="
					+ rStatus + ", rName=" + rName + ", refRid=" + refRid + ", qType=" + qType + "]";
		}


	
	

}
