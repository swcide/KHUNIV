package com.kh.univ.helpDesk.model.vo;

import java.sql.Date;

public class Reply {
	private int qna_rId;
	private String qna_rContent;
	private int qna_refBid;
	private String qna_rWriter;
	private Date qna_rCreateDate;
	private Date qna_rModifyDate;
	private String qna_rStatus;
	
	public Reply() {}

	public Reply(int qna_rId, String qna_rContent, int qna_refBid, String qna_rWriter, Date qna_rCreateDate, Date qna_rModifyDate, String qna_rStatus) {
		super();
		this.qna_rId = qna_rId;
		this.qna_rContent = qna_rContent;
		this.qna_refBid = qna_refBid;
		this.qna_rWriter = qna_rWriter;
		this.qna_rCreateDate = qna_rCreateDate;
		this.qna_rModifyDate = qna_rModifyDate;
		this.qna_rStatus = qna_rStatus;
	}

	public int getQna_rId()
		{
			return qna_rId;
		}

	public void setQna_rId(int qna_rId)
		{
			this.qna_rId = qna_rId;
		}

	public String getQna_rContent()
		{
			return qna_rContent;
		}

	public void setQna_rContent(String qna_rContent)
		{
			this.qna_rContent = qna_rContent;
		}

	public int getQna_refBid()
		{
			return qna_refBid;
		}

	public void setQna_refBid(int qna_refBid)
		{
			this.qna_refBid = qna_refBid;
		}

	public String getQna_rWriter()
		{
			return qna_rWriter;
		}

	public void setQna_rWriter(String qna_rWriter)
		{
			this.qna_rWriter = qna_rWriter;
		}

	public Date getQna_rCreateDate()
		{
			return qna_rCreateDate;
		}

	public void setQna_rCreateDate(Date qna_rCreateDate)
		{
			this.qna_rCreateDate = qna_rCreateDate;
		}

	public Date getQna_rModifyDate()
		{
			return qna_rModifyDate;
		}

	public void setQna_rModifyDate(Date qna_rModifyDate)
		{
			this.qna_rModifyDate = qna_rModifyDate;
		}

	public String getQna_rStatus()
		{
			return qna_rStatus;
		}

	public void setQna_rStatus(String qna_rStatus)
		{
			this.qna_rStatus = qna_rStatus;
		}

	@Override
	public String toString()
		{
			return "Reply [qna_rId=" + qna_rId + ", qna_rContent=" + qna_rContent + ", qna_refBid=" + qna_refBid + ", qna_rWriter=" + qna_rWriter + ", qna_rCreateDate=" + qna_rCreateDate
					+ ", qna_rModifyDate=" + qna_rModifyDate + ", qna_rStatus=" + qna_rStatus + "]";
		}

	
}
