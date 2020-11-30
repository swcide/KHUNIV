package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class LectureStudent {
	
	private String classNo; 		    // 과목번호 					
	private String className;			// 과목명					
	private String sNo;					// 학생번호
	private String sName;				// 학생이름
	private String lecAttendance;	    // 출석 					
	private int attendees;				// 수강인원				
	private String profName; 			// 교수이름
	private String pNo;					// 교수번호
	private String deptName; 			// 학과이름					
	private int lecNo;					// 주차
	private String hworkNo;				// 과제번호				
	private Date assignSubmitDate;		// 과제제출일
	private Date attendDate;			// 출석날짜
	private int weekDate;				// 절대주차	(1년중 몇번쨰 주인지)
	private Date startDate;				// 개강일
	
	public LectureStudent() {
		
	}

	public LectureStudent(String classNo, String className, String sNo, String sName, String lecAttendance, int attendees, String profName,
			String pNo, String deptName, int lecNo, String hworkNo, Date assignSubmitDate, Date attendDate, int weekDate, Date startDate) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.sNo = sNo;
		this.sName = sName;
		this.lecAttendance = lecAttendance;
		this.attendees = attendees;
		this.profName = profName;
		this.pNo = pNo;
		this.deptName = deptName;
		this.lecNo = lecNo;
		this.hworkNo = hworkNo;
		this.assignSubmitDate = assignSubmitDate;
		this.attendDate = attendDate;
		this.weekDate = weekDate;
		this.startDate = startDate;
	}

	public Date getStartDate() {
		return startDate;
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
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

	public String getLecAttendance() {
		return lecAttendance;
	}

	public void setLecAttendance(String lecAttendance) {
		this.lecAttendance = lecAttendance;
	}

	public int getAttendees() {
		return attendees;
	}

	public void setAttendees(int attendees) {
		this.attendees = attendees;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public int getLecNo() {
		return lecNo;
	}

	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
	}

	public String getHworkNo() {
		return hworkNo;
	}

	public void setHworkNo(String hworkNo) {
		this.hworkNo = hworkNo;
	}

	public Date getAssignSubmitDate() {
		return assignSubmitDate;
	}

	public void setAssignSubmitDate(Date assignSubmitDate) {
		this.assignSubmitDate = assignSubmitDate;
	}

	public Date getAttendDate() {
		return attendDate;
	}

	public void setAttendDate(Date attendDate) {
		this.attendDate = attendDate;
	}

	public int getWeekDate() {
		return weekDate;
	}

	public void setWeekDate(int weekDate) {
		this.weekDate = weekDate;
	}

	@Override
	public String toString() {
		return "LectureStudent [classNo=" + classNo + ", className=" + className + ", sNo=" + sNo + ", sName=" + sName + ", lecAttendance="
				+ lecAttendance + ", lecLearningRate="  + ", attendees=" + attendees + ", profName=" + profName + ", pNo=" + pNo
				+ ", deptName=" + deptName + ", lecNo=" + lecNo + ", hworkNo=" + hworkNo + ", assignSubmitDate=" + assignSubmitDate + ", attendDate="
				+ attendDate + ", weekDate=" + weekDate + ", startDate=" + startDate + "]";
	}
	
}
