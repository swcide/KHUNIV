package com.kh.univ.lecture.model.vo;

public class Attendance {
	
	protected String classType; 		    // 이수구분 					tb-class
	protected String className; 		    // 과목명 					tb-class
	protected int attendanceRate; 			// 출석률 					TB_ATTENDANCE
	public Attendance() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Attendance(String classType, String className, int attendanceRate) {
		super();
		this.classType = classType;
		this.className = className;
		this.attendanceRate = attendanceRate;
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
	public int getAttendanceRate() {
		return attendanceRate;
	}
	public void setAttendanceRate(int attendanceRate) {
		this.attendanceRate = attendanceRate;
	}
	@Override
	public String toString() {
		return "Attendance [classType=" + classType + ", className=" + className + ", attendanceRate=" + attendanceRate
				+ "]";
	}
	
	

}
