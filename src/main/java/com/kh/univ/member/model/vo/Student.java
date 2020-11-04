package com.kh.univ.member.model.vo;

import java.sql.Date;

public class Student {
	
	private String semester;
	private String sNo;
	private String sPwd;
	private String sName;
	private String sEmail;
	private String sPhone;
	private String sSsn;
	private String sImage;
	private String sAddress;
	private Date enrollDate;
	private String sStatus;
	private String cpNo;
	private String dNo;
	
	public Student() {
	}

	public Student(String semester, String sNo, String sPwd, String sName, String sEmail, String sPhone, String sSsn, String sImage, String sAddress, Date enrollDate, String sStatus, String cpNo,
			String dNo) {
		super();
		this.semester = semester;
		this.sNo = sNo;
		this.sPwd = sPwd;
		this.sName = sName;
		this.sEmail = sEmail;
		this.sPhone = sPhone;
		this.sSsn = sSsn;
		this.sImage = sImage;
		this.sAddress = sAddress;
		this.enrollDate = enrollDate;
		this.sStatus = sStatus;
		this.cpNo = cpNo;
		this.dNo = dNo;
	}

	public String getSemester()
		{
			return semester;
		}

	public void setSemester(String semester)
		{
			this.semester = semester;
		}

	public String getsNo()
		{
			return sNo;
		}

	public void setsNo(String sNo)
		{
			this.sNo = sNo;
		}

	public String getsPwd()
		{
			return sPwd;
		}

	public void setsPwd(String sPwd)
		{
			this.sPwd = sPwd;
		}

	public String getsName()
		{
			return sName;
		}

	public void setsName(String sName)
		{
			this.sName = sName;
		}

	public String getsEmail()
		{
			return sEmail;
		}

	public void setsEmail(String sEmail)
		{
			this.sEmail = sEmail;
		}

	public String getsPhone()
		{
			return sPhone;
		}

	public void setsPhone(String sPhone)
		{
			this.sPhone = sPhone;
		}

	public String getsSsn()
		{
			return sSsn;
		}

	public void setsSsn(String sSsn)
		{
			this.sSsn = sSsn;
		}

	public String getsImage()
		{
			return sImage;
		}

	public void setsImage(String sImage)
		{
			this.sImage = sImage;
		}

	public String getsAddress()
		{
			return sAddress;
		}

	public void setsAddress(String sAddress)
		{
			this.sAddress = sAddress;
		}

	public Date getEnrollDate()
		{
			return enrollDate;
		}

	public void setEnrollDate(Date enrollDate)
		{
			this.enrollDate = enrollDate;
		}

	public String getsStatus()
		{
			return sStatus;
		}

	public void setsStatus(String sStatus)
		{
			this.sStatus = sStatus;
		}

	public String getCpNo()
		{
			return cpNo;
		}

	public void setCpNo(String cpNo)
		{
			this.cpNo = cpNo;
		}

	public String getdNo()
		{
			return dNo;
		}

	public void setdNo(String dNo)
		{
			this.dNo = dNo;
		}

	@Override
	public String toString()
		{
			return "Student [semester=" + semester + ", sNo=" + sNo + ", sPwd=" + sPwd + ", sName=" + sName + ", sEmail=" + sEmail + ", sPhone=" + sPhone + ", sSsn=" + sSsn + ", sImage=" + sImage
					+ ", sAddress=" + sAddress + ", enrollDate=" + enrollDate + ", sStatus=" + sStatus + ", cpNo=" + cpNo + ", dNo=" + dNo + "]";
		}
	
	
	
	
	
	
	
	
	
}	


