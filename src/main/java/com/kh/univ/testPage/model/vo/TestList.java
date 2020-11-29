package com.kh.univ.testPage.model.vo;

import com.kh.univ.registration.model.vo.Registration;

public class TestList extends Registration{
	
	private String tNo;
	private String sNo;
	private String semYear;
	private String semNo;
	private String cNo;
	private String cName;
	private String cType;
	private String pNo;
	private String pName;
	private String tType;
	private String openDate;
	private String testTime;
	private String status;
	
	
	
	
	public TestList() {
		super();
		// TODO Auto-generated constructor stub
	}




	public TestList(String tNo, String sNo, String semYear, String semNo, String cNo, String cName, String cType,
			String pNo, String pName, String tType, String openDate, String testTime, String status) {
		super();
		this.tNo = tNo;
		this.sNo = sNo;
		this.semYear = semYear;
		this.semNo = semNo;
		this.cNo = cNo;
		this.cName = cName;
		this.cType = cType;
		this.pNo = pNo;
		this.pName = pName;
		this.tType = tType;
		this.openDate = openDate;
		this.testTime = testTime;
		this.status = status;
	}




	public String gettNo() {
		return tNo;
	}




	public void settNo(String tNo) {
		this.tNo = tNo;
	}




	public String getsNo() {
		return sNo;
	}




	public void setsNo(String sNo) {
		this.sNo = sNo;
	}




	public String getSemYear() {
		return semYear;
	}




	public void setSemYear(String semYear) {
		this.semYear = semYear;
	}




	public String getSemNo() {
		return semNo;
	}




	public void setSemNo(String semNo) {
		this.semNo = semNo;
	}




	public String getcNo() {
		return cNo;
	}




	public void setcNo(String cNo) {
		this.cNo = cNo;
	}




	public String getcName() {
		return cName;
	}




	public void setcName(String cName) {
		this.cName = cName;
	}




	public String getcType() {
		return cType;
	}




	public void setcType(String cType) {
		this.cType = cType;
	}




	public String getpNo() {
		return pNo;
	}




	public void setpNo(String pNo) {
		this.pNo = pNo;
	}




	public String getpName() {
		return pName;
	}




	public void setpName(String pName) {
		this.pName = pName;
	}




	public String gettType() {
		return tType;
	}




	public void settType(String tType) {
		this.tType = tType;
	}




	public String getOpenDate() {
		return openDate;
	}




	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}




	public String getTestTime() {
		return testTime;
	}




	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	@Override
	public String toString() {
		return "TestList [tNo=" + tNo + ", sNo=" + sNo + ", semYear=" + semYear + ", semNo=" + semNo + ", cNo=" + cNo
				+ ", cName=" + cName + ", cType=" + cType + ", pNo=" + pNo + ", pName=" + pName + ", tType=" + tType
				+ ", openDate=" + openDate + ", testTime=" + testTime + ", status=" + status + "]";
	}




	

	



	
	
	
}
