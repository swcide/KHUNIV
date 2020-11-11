package com.kh.univ.lecture.model.vo;

public class Lecture {
	private String classNo; 		// 과목번호
	private String className;		// 과목명
	private String classProf;		// 강의교수
	private String classType;		// 과목구분
	private String classSummary;	// 교과목개요
	private String classGoal;		// 강의목표
	private String lecMethod;		// 강의방법
	private String evalMethod; 		// 평가방식
	private String assignment; 		// 과제물
	private String lecExperiment;	// 실험 및 실습계획
	private String relatedLec; 		// 관련강의
	private String lecTextbook; 	// 강의교재
	private String lecImagePath;    // 강의 이미지 경로
	// 동영상 파일경로
	// 출석 
	// 학습률
	// 
	public Lecture() {
	}

	public Lecture(String classNo, String className, String classProf, String classType, String classSummary, String classGoal, String lecMethod,
			String evalMethod, String assignment, String lecExperiment, String relatedLec, String lecTextbook, String lecImagePath) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.classProf = classProf;
		this.classType = classType;
		this.classSummary = classSummary;
		this.classGoal = classGoal;
		this.lecMethod = lecMethod;
		this.evalMethod = evalMethod;
		this.assignment = assignment;
		this.lecExperiment = lecExperiment;
		this.relatedLec = relatedLec;
		this.lecTextbook = lecTextbook;
		this.lecImagePath = lecImagePath;
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

	public String getClassSummary() {
		return classSummary;
	}

	public void setClassSummary(String classSummary) {
		this.classSummary = classSummary;
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

	public String getLecImagePath() {
		return lecImagePath;
	}

	public void setLecImagePath(String lecImagePath) {
		this.lecImagePath = lecImagePath;
	}

	@Override
	public String toString() {
		return "Lecture [classNo=" + classNo + ", className=" + className + ", classProf=" + classProf + ", classType=" + classType
				+ ", classSummary=" + classSummary + ", classGoal=" + classGoal + ", lecMethod=" + lecMethod + ", evalMethod=" + evalMethod
				+ ", assignment=" + assignment + ", lecExperiment=" + lecExperiment + ", relatedLec=" + relatedLec + ", lecTextbook=" + lecTextbook
				+ ", lecImagePath=" + lecImagePath + "]";
	}


	
	
}
