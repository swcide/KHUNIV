package com.kh.univ.lecture.model.vo;

public class LecturePlan {
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
	private String lecVideoPath; 	// 동영상 파일경로
	private String lecAttendance; 	// 출석 
	
	
	
	// 
	public LecturePlan() {
	}

	public LecturePlan(String classNo, String className, String classProf, String classType, String classSummary, String classGoal, String lecMethod,
			String evalMethod, String assignment, String lecExperiment, String relatedLec, String lecTextbook, String lecImagePath,
			String lecVideoPath, String lecAttendance) {
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
		this.lecVideoPath = lecVideoPath;
		this.lecAttendance = lecAttendance;
	}

	

	
	
}
