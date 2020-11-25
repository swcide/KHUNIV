package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class LectureHomeWork {
	private String hNo; // 과제 번호
	private int lecNo;  // 과제 주차
	private String hTitle;  // 과제 제목
	private String hContent;  //과제 내용
	private String originalFileName; //파일
	private String renameFileName;

	private String pNo;  //교수 번호
	private String cNo;  //클래스 번호
	private String cName; // 클래스이름
	private String sNo;   // 학생 번호
	private String sName;  // 학생이름
	
	private String eGrade; // 배점
	private String hStatus; // 상태
	private String hPoint; // 점수
	
	private String openDate;
	private String endDate;
	
	
	public LectureHomeWork() {
		super();
		// TODO Auto-generated constructor stub
	}


	public LectureHomeWork(String hNo, int lecNo, String hTitle, String hContent, String originalFileName,
			String renameFileName, String pNo, String cNo, String cName, String sNo, String sName, String eGrade,
			String hStatus, String hPoint, String openDate, String endDate) {
		super();
		this.hNo = hNo;
		this.lecNo = lecNo;
		this.hTitle = hTitle;
		this.hContent = hContent;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.pNo = pNo;
		this.cNo = cNo;
		this.cName = cName;
		this.sNo = sNo;
		this.sName = sName;
		this.eGrade = eGrade;
		this.hStatus = hStatus;
		this.hPoint = hPoint;
		this.openDate = openDate;
		this.endDate = endDate;
	}

	

	public String gethNo() {
		return hNo;
	}


	public void sethNo(String hNo) {
		this.hNo = hNo;
	}


	public int getLecNo() {
		return lecNo;
	}


	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
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


	public String getOriginalFileName() {
		return originalFileName;
	}


	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}


	public String getRenameFileName() {
		return renameFileName;
	}


	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}


	public String getpNo() {
		return pNo;
	}


	public void setpNo(String pNo) {
		this.pNo = pNo;
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


	public String getsNo() {
		return sNo;
	}


	public void setsNo(String sNo) {
		this.sNo = sNo;
	}


	public String getsName() {
		return sName;
	}


	public void setsName(String sName) {
		this.sName = sName;
	}


	public String geteGrade() {
		return eGrade;
	}


	public void seteGrade(String eGrade) {
		this.eGrade = eGrade;
	}


	public String gethStatus() {
		return hStatus;
	}


	public void sethStatus(String hStatus) {
		this.hStatus = hStatus;
	}


	public String gethPoint() {
		return hPoint;
	}


	public void sethPoint(String hPoint) {
		this.hPoint = hPoint;
	}


	public String getOpenDate() {
		return openDate;
	}


	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	@Override
	public String toString() {
		return "LectureHomeWork [hNo=" + hNo + ", lecNo=" + lecNo + ", hTitle=" + hTitle + ", hContent=" + hContent
				+ ", originalFileName=" + originalFileName + ", renameFileName=" + renameFileName + ", pNo=" + pNo
				+ ", cNo=" + cNo + ", cName=" + cName + ", sNo=" + sNo + ", sName=" + sName + ", eGrade=" + eGrade
				+ ", hStatus=" + hStatus + ", hPoint=" + hPoint + ", openDate=" + openDate + ", endDate=" + endDate
				+ "]";
	}


	

}
