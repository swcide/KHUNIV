package com.kh.univ.lecture.model.vo;

public class LectureList extends LectureClass {
	
	
	private int credit;				// 학점
	private String classType;		// 과목분류
	private String pNo; 			// 교수번호
	
	public LectureList() {
		
	}

	public LectureList(String classNo, String className, String lecAttendance, String lecLearningRate, int attendees, String classSummary,
			String classImg, String profName, String profEmail, String deptName, int credit, String classType, String pNo) {
		super(classNo, className, lecAttendance, lecLearningRate, attendees, classSummary, classImg, profName, profEmail, deptName);
		this.credit = credit;
		this.classType = classType;
		this.pNo = pNo;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public String getpNo() {
		return pNo;
	}


	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "LectureList [credit=" + credit + ", classType=" + classType + ", pNo=" + pNo + ", classNo=" + classNo + ", className=" + className
				+ ", lecAttendance=" + lecAttendance + ", lecLearningRate=" + lecLearningRate + ", Attendees=" + Attendees + ", classSummary="
				+ classSummary + ", classImg=" + classImg + ", profName=" + profName + ", profEmail=" + profEmail + ", deptName=" + deptName + "]";
	}
	
}
