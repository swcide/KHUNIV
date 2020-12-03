package com.kh.univ.lecture.model.vo;

import java.sql.Date;

import org.springframework.context.annotation.Primary;

public class Attendance {
	
	private String classNo;					// 과목번호				TB_ATTENDANCE
	protected String classType; 		    // 이수구분 				TB_CLASS
	protected String className; 		    // 과목명 					TB_CLASS
	protected String sNo; 		    	    // 학생번호				TB_ATTENDANCE
	private Date attendance;				// 출석일자				TB_ATTENDANCE
	private Date startDate;					// 개강일자				TB_CLASS
	protected int attendRate; 				// 출석률 					TB_ATTENDANCE
	private int assignment;					// 과제제출수				TB_ATTENDANCE
	private int week;						// 주차					TB_ATTENDANCE
	private String sName;					// 학생이름				
	private String testNo;   				// 시험번호				TB_TEST_GRADE
	private int point;						// 시험성적				TB_TEST_GRADE			
		
	
	
	public Attendance() {
	}



	public Attendance(String classNo, String classType, String className, String sNo, Date attendance, Date startDate,
			int attendRate, int assignment, int week, String sName, String testNo, int point) {
		super();
		this.classNo = classNo;
		this.classType = classType;
		this.className = className;
		this.sNo = sNo;
		this.attendance = attendance;
		this.startDate = startDate;
		this.attendRate = attendRate;
		this.assignment = assignment;
		this.week = week;
		this.sName = sName;
		this.testNo = testNo;
		this.point = point;
	}



	public String getClassNo() {
		return classNo;
	}



	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}



	public String getClassType() {
		return classType;
	}



	public void setClassType(String classType) {
		this.classType = classType;
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



	public Date getAttendance() {
		return attendance;
	}



	public void setAttendance(Date attendance) {
		this.attendance = attendance;
	}



	public Date getStartDate() {
		return startDate;
	}



	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}



	public int getAttendRate() {
		return attendRate;
	}



	public void setAttendRate(int attendRate) {
		this.attendRate = attendRate;
	}



	public int getAssignment() {
		return assignment;
	}



	public void setAssignment(int assignment) {
		this.assignment = assignment;
	}



	public int getWeek() {
		return week;
	}



	public void setWeek(int week) {
		this.week = week;
	}



	public String getsName() {
		return sName;
	}



	public void setsName(String sName) {
		this.sName = sName;
	}



	public String getTestNo() {
		return testNo;
	}



	public void setTestNo(String testNo) {
		this.testNo = testNo;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



	@Override
	public String toString() {
		return "Attendance [classNo=" + classNo + ", classType=" + classType + ", className=" + className + ", sNo="
				+ sNo + ", attendance=" + attendance + ", startDate=" + startDate + ", attendRate=" + attendRate
				+ ", assignment=" + assignment + ", week=" + week + ", sName=" + sName + ", testNo=" + testNo
				+ ", point=" + point + "]";
	}
	
	

	

	

}