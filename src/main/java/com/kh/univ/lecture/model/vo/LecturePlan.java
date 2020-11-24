package com.kh.univ.lecture.model.vo;

// 교수용 강의계획서
// 학생용 강의계획서 
public class LecturePlan extends LectureClass{
	
	private String classProf;		// 강의교수
	private String classType;		// 과목구분
	private String classGoal;		// 강의목표
	private String lecMethod;		// 강의방법
	private String evalMethod; 		// 평가방식
	private String assignment; 		// 과제물
	private String lecExperiment;	// 실험 및 실습계획
	private String relatedLec; 		// 관련강의
	private String lecTextbook; 	// 강의교재
	private int examPoints;			// 과목의 시험 배점 (과목 배점 총합 100점)
	private int assignmentPoints;	// 과목의 과제 배점 (과목 배점 총합 100점)
	private int attendancePoints;	// 과목의 출석 배점 (과목 배점 총합 100점)
	private String profLab;			// 과목담당교수 강의실
	private int credit;				// 학점
	
	
	public LecturePlan() {
	}




	public LecturePlan(String classProf, String classType, String classGoal, String lecMethod, String evalMethod, String assignment,
			String lecExperiment, String relatedLec, String lecTextbook, int examPoints, int assignmentPoints, int attendancePoints, String profLab,
			int credit) {
		super();
		this.classProf = classProf;
		this.classType = classType;
		this.classGoal = classGoal;
		this.lecMethod = lecMethod;
		this.evalMethod = evalMethod;
		this.assignment = assignment;
		this.lecExperiment = lecExperiment;
		this.relatedLec = relatedLec;
		this.lecTextbook = lecTextbook;
		this.examPoints = examPoints;
		this.assignmentPoints = assignmentPoints;
		this.attendancePoints = attendancePoints;
		this.profLab = profLab;
		this.credit = credit;
	}




	public String getClassProf() {
		return classProf;
	}


	public void setClassProf(String classProf) {
		this.classProf = classProf;
	}


	public String getClassType() {
		return classType;
	}


	public void setClassType(String classType) {
		this.classType = classType;
	}


	public String getClassGoal() {
		return classGoal;
	}


	public void setClassGoal(String classGoal) {
		this.classGoal = classGoal;
	}


	public String getLecMethod() {
		return lecMethod;
	}


	public void setLecMethod(String lecMethod) {
		this.lecMethod = lecMethod;
	}


	public String getEvalMethod() {
		return evalMethod;
	}


	public void setEvalMethod(String evalMethod) {
		this.evalMethod = evalMethod;
	}


	public String getAssignment() {
		return assignment;
	}


	public void setAssignment(String assignment) {
		this.assignment = assignment;
	}


	public String getLecExperiment() {
		return lecExperiment;
	}


	public void setLecExperiment(String lecExperiment) {
		this.lecExperiment = lecExperiment;
	}


	public String getRelatedLec() {
		return relatedLec;
	}


	public void setRelatedLec(String relatedLec) {
		this.relatedLec = relatedLec;
	}


	public String getLecTextbook() {
		return lecTextbook;
	}


	public void setLecTextbook(String lecTextbook) {
		this.lecTextbook = lecTextbook;
	}


	public int getExamPoints() {
		return examPoints;
	}


	public void setExamPoints(int examPoints) {
		this.examPoints = examPoints;
	}


	public int getAssignmentPoints() {
		return assignmentPoints;
	}


	public void setAssignmentPoints(int assignmentPoints) {
		this.assignmentPoints = assignmentPoints;
	}


	public int getAttendancePoints() {
		return attendancePoints;
	}


	public void setAttendancePoints(int attendancePoints) {
		this.attendancePoints = attendancePoints;
	}


	public String getProfLab() {
		return profLab;
	}


	public void setProfLab(String profLab) {
		this.profLab = profLab;
	}


	public int getCredit() {
		return credit;
	}


	public void setCredit(int credit) {
		this.credit = credit;
	}




	@Override
	public String toString() {
		return "LecturePlan [classProf=" + classProf + ", classType=" + classType + ", classGoal=" + classGoal + ", lecMethod=" + lecMethod
				+ ", evalMethod=" + evalMethod + ", assignment=" + assignment + ", lecExperiment=" + lecExperiment + ", relatedLec=" + relatedLec
				+ ", lecTextbook=" + lecTextbook + ", examPoints=" + examPoints + ", assignmentPoints=" + assignmentPoints + ", attendancePoints="
				+ attendancePoints + ", profLab=" + profLab + ", credit=" + credit + ", classNo=" + classNo + ", className=" + className
				+ ", lecAttendance=" + lecAttendance + ", lecLearningRate=" + lecLearningRate + ", Attendees=" + Attendees + ", classSummary="
				+ classSummary + ", classImg=" + classImg + ", profName=" + profName + ", profEmail=" + profEmail + ", deptName=" + deptName + "]";
	}




	

	




	
	
}
