package com.kh.univ.lecture.model.vo;

public class LectureClass {
	
	private int lId;					// 게시글 번호
	private String classNo; 		    // 과목번호
	private String className;			// 과목명
	private String lecAttendance;	    // 출석 
	private String lecLearningRate;     // 학습률
	private int Attendees;				// 수강인원
	
	
	public LectureClass() {
		
	}


	public LectureClass(int lId, String classNo, String className, String lecAttendance, String lecLearningRate, int attendees) {
		super();
		this.lId = lId;
		this.classNo = classNo;
		this.className = className;
		this.lecAttendance = lecAttendance;
		this.lecLearningRate = lecLearningRate;
		Attendees = attendees;
	}


	public int getlId() {
		return lId;
	}


	public void setlId(int lId) {
		this.lId = lId;
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


	public String getLecAttendance() {
		return lecAttendance;
	}


	public void setLecAttendance(String lecAttendance) {
		this.lecAttendance = lecAttendance;
	}


	public String getLecLearningRate() {
		return lecLearningRate;
	}


	public void setLecLearningRate(String lecLearningRate) {
		this.lecLearningRate = lecLearningRate;
	}


	public int getAttendees() {
		return Attendees;
	}


	public void setAttendees(int attendees) {
		Attendees = attendees;
	}


	@Override
	public String toString() {
		return "LectureClass [lId=" + lId + ", classNo=" + classNo + ", className=" + className + ", lecAttendance=" + lecAttendance
				+ ", lecLearningRate=" + lecLearningRate + ", Attendees=" + Attendees + "]";
	}



	
	
	
}