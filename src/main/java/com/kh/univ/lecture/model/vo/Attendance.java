package com.kh.univ.lecture.model.vo;

import java.sql.Date;

public class Attendance {
	
	private String classNo;					// 과목번호					TB_ATTENDANCE
	protected String classType; 		    // 이수구분 					tb-class
	protected String className; 		    // 과목명 					tb-class
	protected String sNo; 		    	    // 학생번호					TB_ATTENDANCE
	protected int attendRate; 				// 출석률 					TB_ATTENDANCE
	private Date attendance;				// 출석일자
	private int assignment;					// 과제제출수					TB_ATTENDANCE
	private int week;						// 주차
	
	public Attendance() {
	}


	public Attendance(String classNo, String classType, String className, String sNo, int attendRate, Date attendance,
			int assignment, int week) {
		super();
		this.classNo = classNo;
		this.classType = classType;
		this.className = className;
		this.sNo = sNo;
		this.attendRate = attendRate;
		this.attendance = attendance;
		this.assignment = assignment;
		this.week = week;
	}


	public Date getAttendance() {
		return attendance;
	}


	public void setAttendance(Date attendance) {
		this.attendance = attendance;
	}


	public int getWeek() {
		return week;
	}


	public void setWeek(int week) {
		this.week = week;
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

	public int getAttendRate() {
		return attendRate;
	}

	public void setAttendRate(int attendRate) {
		this.attendRate = attendRate;
	}

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public int getAssignment() {
		return assignment;
	}

	public void setAssignment(int assignment) {
		this.assignment = assignment;
	}


	@Override
	public String toString() {
		return "Attendance [classNo=" + classNo + ", classType=" + classType + ", className=" + className + ", sNo="
				+ sNo + ", attendRate=" + attendRate + ", attendance=" + attendance + ", assignment=" + assignment
				+ ", week=" + week + "]";
	}


	
	
	
	
	
}