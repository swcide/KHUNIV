package com.kh.univ.helpDesk.model.vo;

import java.sql.Date;

public class QnA {
	private int qnaId;
	private String qnaTitle;
	private String qnaWriter;
	private String qnaContent;
	private String qnaOriginalFileName;
	private String qnaRenameFileName;
	private int qnaCount ;
	private Date qnaCreateDate;
	private Date qnaModifyDate;
	private String qnaStatus;
	
	public QnA() {}

	public QnA(int qnaId, String qnaTitle, String qnaWriter, String qnaContent, String qnaOriginalFileName, String qnaRenameFileName, int qnaCount, Date qnaCreateDate, Date qnaModifyDate,
			String qnaStatus) {
		super();
		this.qnaId = qnaId;
		this.qnaTitle = qnaTitle;
		this.qnaWriter = qnaWriter;
		this.qnaContent = qnaContent;
		this.qnaOriginalFileName = qnaOriginalFileName;
		this.qnaRenameFileName = qnaRenameFileName;
		this.qnaCount = qnaCount;
		this.qnaCreateDate = qnaCreateDate;
		this.qnaModifyDate = qnaModifyDate;
		this.qnaStatus = qnaStatus;
	}

	public int getQnaId()
		{
			return qnaId;
		}

	public void setQnaId(int qnaId)
		{
			this.qnaId = qnaId;
		}

	public String getQnaTitle()
		{
			return qnaTitle;
		}

	public void setQnaTitle(String qnaTitle)
		{
			this.qnaTitle = qnaTitle;
		}

	public String getQnaWriter()
		{
			return qnaWriter;
		}

	public void setQnaWriter(String qnaWriter)
		{
			this.qnaWriter = qnaWriter;
		}

	public String getQnaContent()
		{
			return qnaContent;
		}

	public void setQnaContent(String qnaContent)
		{
			this.qnaContent = qnaContent;
		}

	public String getQnaOriginalFileName()
		{
			return qnaOriginalFileName;
		}

	public void setQnaOriginalFileName(String qnaOriginalFileName)
		{
			this.qnaOriginalFileName = qnaOriginalFileName;
		}

	public String getQnaRenameFileName()
		{
			return qnaRenameFileName;
		}

	public void setQnaRenameFileName(String qnaRenameFileName)
		{
			this.qnaRenameFileName = qnaRenameFileName;
		}

	public int getQnaCount()
		{
			return qnaCount;
		}

	public void setQnaCount(int qnaCount)
		{
			this.qnaCount = qnaCount;
		}

	public Date getQnaCreateDate()
		{
			return qnaCreateDate;
		}

	public void setQnaCreateDate(Date qnaCreateDate)
		{
			this.qnaCreateDate = qnaCreateDate;
		}

	public Date getQnaModifyDate()
		{
			return qnaModifyDate;
		}

	public void setQnaModifyDate(Date qnaModifyDate)
		{
			this.qnaModifyDate = qnaModifyDate;
		}

	public String getQnaStatus()
		{
			return qnaStatus;
		}

	public void setQnaStatus(String qnaStatus)
		{
			this.qnaStatus = qnaStatus;
		}

	@Override
	public String toString()
		{
			return "QnA [qnaId=" + qnaId + ", qnaTitle=" + qnaTitle + ", qnaWriter=" + qnaWriter + ", qnaContent=" + qnaContent + ", qnaOriginalFileName=" + qnaOriginalFileName
					+ ", qnaRenameFileName=" + qnaRenameFileName + ", qnaCount=" + qnaCount + ", qnaCreateDate=" + qnaCreateDate + ", qnaModifyDate=" + qnaModifyDate + ", qnaStatus=" + qnaStatus
					+ "]";
		}
	
}
