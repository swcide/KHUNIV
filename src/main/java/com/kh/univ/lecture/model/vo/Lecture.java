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
	
	/*아래로는 강의 주차별 제목*/
	private String lecPt1; 
	private String lecPt2;
	private String lecPt3;
	private String lecPt4;
	private String lecPt5;
	private String lecPt6;
	private String lecPt7;
	private String lecPt8;
	private String lecPt9;
	private String lecPt10;
	private String lecPt11;
	private String lecPt12;
	private String lecPt13;
	private String lecPt14;
	private String lecPt15;
	
	// 다운로드 가능한 주차별 참고자료
	private String lecPt1M;
	private String lecPt2M;
	private String lecPt3M;
	private String lecPt4M;
	private String lecPt5M;
	private String lecPt6M;
	private String lecPt7M;
	private String lecPt8M;
	private String lecPt9M;
	private String lecPt10M;
	private String lecPt11M;
	private String lecPt12M;
	private String lecPt13M;
	private String lecPt14M;
	private String lecPt15M;



	public Lecture() {
	}


	public Lecture(String classNo, String className, String classProf, String classType, String classSummary, String classGoal, String lecMethod, String evalMethod,
			String assignment, String lecExperiment, String relatedLec, String lecTextbook, String lecPt1, String lecPt2, String lecPt3,
			String lecPt4, String lecPt5, String lecPt6, String lecPt7, String lecPt8, String lecPt9, String lecPt10, String lecPt11, String lecPt12,
			String lecPt13, String lecPt14, String lecPt15, String lecPt1M, String lecPt2M, String lecPt3M, String lecPt4M, String lecPt5M,
			String lecPt6M, String lecPt7M, String lecPt8M, String lecPt9M, String lecPt10M, String lecPt11M, String lecPt12M, String lecPt13M,
			String lecPt14M, String lecPt15M) {
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
		this.lecPt1 = lecPt1;
		this.lecPt2 = lecPt2;
		this.lecPt3 = lecPt3;
		this.lecPt4 = lecPt4;
		this.lecPt5 = lecPt5;
		this.lecPt6 = lecPt6;
		this.lecPt7 = lecPt7;
		this.lecPt8 = lecPt8;
		this.lecPt9 = lecPt9;
		this.lecPt10 = lecPt10;
		this.lecPt11 = lecPt11;
		this.lecPt12 = lecPt12;
		this.lecPt13 = lecPt13;
		this.lecPt14 = lecPt14;
		this.lecPt15 = lecPt15;
		this.lecPt1M = lecPt1M;
		this.lecPt2M = lecPt2M;
		this.lecPt3M = lecPt3M;
		this.lecPt4M = lecPt4M;
		this.lecPt5M = lecPt5M;
		this.lecPt6M = lecPt6M;
		this.lecPt7M = lecPt7M;
		this.lecPt8M = lecPt8M;
		this.lecPt9M = lecPt9M;
		this.lecPt10M = lecPt10M;
		this.lecPt11M = lecPt11M;
		this.lecPt12M = lecPt12M;
		this.lecPt13M = lecPt13M;
		this.lecPt14M = lecPt14M;
		this.lecPt15M = lecPt15M;
	}







	public String getLecPt1M() {
		return lecPt1M;
	}

	public void setLecPt1M(String lecPt1M) {
		this.lecPt1M = lecPt1M;
	}

	public String getLecPt2M() {
		return lecPt2M;
	}

	public void setLecPt2M(String lecPt2M) {
		this.lecPt2M = lecPt2M;
	}

	public String getLecPt3M() {
		return lecPt3M;
	}

	public void setLecPt3M(String lecPt3M) {
		this.lecPt3M = lecPt3M;
	}

	public String getLecPt4M() {
		return lecPt4M;
	}

	public void setLecPt4M(String lecPt4M) {
		this.lecPt4M = lecPt4M;
	}

	public String getLecPt5M() {
		return lecPt5M;
	}

	public void setLecPt5M(String lecPt5M) {
		this.lecPt5M = lecPt5M;
	}
	public String getLecPt6M() {
		return lecPt6M;
	}

	public void setLecPt6M(String lecPt6M) {
		this.lecPt6M = lecPt6M;
	}

	public String getLecPt7M() {
		return lecPt7M;
	}


	public void setLecPt7M(String lecPt7M) {
		this.lecPt7M = lecPt7M;
	}

	public String getLecPt8M() {
		return lecPt8M;
	}

	public void setLecPt8M(String lecPt8M) {
		this.lecPt8M = lecPt8M;
	}

	public String getLecPt9M() {
		return lecPt9M;
	}

	public void setLecPt9M(String lecPt9M) {
		this.lecPt9M = lecPt9M;
	}

	public String getLecPt10M() {
		return lecPt10M;
	}

	public void setLecPt10M(String lecPt10M) {
		this.lecPt10M = lecPt10M;
	}

	public String getLecPt11M() {
		return lecPt11M;
	}

	public void setLecPt11M(String lecPt11M) {
		this.lecPt11M = lecPt11M;
	}

	public String getLecPt12M() {
		return lecPt12M;
	}


	public void setLecPt12M(String lecPt12M) {
		this.lecPt12M = lecPt12M;
	}

	public String getLecPt13M() {
		return lecPt13M;
	}

	public void setLecPt13M(String lecPt13M) {
		this.lecPt13M = lecPt13M;
	}

	public String getLecPt14M() {
		return lecPt14M;
	}

	public void setLecPt14M(String lecPt14M) {
		this.lecPt14M = lecPt14M;
	}


	public String getLecPt15M() {
		return lecPt15M;
	}

	public void setLecPt15M(String lecPt15M) {
		this.lecPt15M = lecPt15M;
	}

	public String getclassNo() {
		return classNo;
	}



	public void setclassNo(String classNo) {
		this.classNo = classNo;
	}



	public String getclassName() {
		return className;
	}



	public void setclassName(String className) {
		this.className = className;
	}



	public String getclassProf() {
		return classProf;
	}



	public void setclassProf(String classProf) {
		this.classProf = classProf;
	}



	public String getclassType() {
		return classType;
	}



	public void setclassType(String classType) {
		this.classType = classType;
	}



	public String getclassSummary() {
		return classSummary;
	}



	public void setclassSummary(String classSummary) {
		this.classSummary = classSummary;
	}



	public String getclassGoal() {
		return classGoal;
	}



	public void setclassGoal(String classGoal) {
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



	public String getLecPt1() {
		return lecPt1;
	}



	public void setLecPt1(String lecPt1) {
		this.lecPt1 = lecPt1;
	}



	public String getLecPt2() {
		return lecPt2;
	}



	public void setLecPt2(String lecPt2) {
		this.lecPt2 = lecPt2;
	}



	public String getLecPt3() {
		return lecPt3;
	}



	public void setLecPt3(String lecPt3) {
		this.lecPt3 = lecPt3;
	}



	public String getLecPt4() {
		return lecPt4;
	}



	public void setLecPt4(String lecPt4) {
		this.lecPt4 = lecPt4;
	}



	public String getLecPt5() {
		return lecPt5;
	}



	public void setLecPt5(String lecPt5) {
		this.lecPt5 = lecPt5;
	}



	public String getLecPt6() {
		return lecPt6;
	}



	public void setLecPt6(String lecPt6) {
		this.lecPt6 = lecPt6;
	}



	public String getLecPt7() {
		return lecPt7;
	}



	public void setLecPt7(String lecPt7) {
		this.lecPt7 = lecPt7;
	}



	public String getLecPt8() {
		return lecPt8;
	}



	public void setLecPt8(String lecPt8) {
		this.lecPt8 = lecPt8;
	}



	public String getLecPt9() {
		return lecPt9;
	}



	public void setLecPt9(String lecPt9) {
		this.lecPt9 = lecPt9;
	}



	public String getLecPt10() {
		return lecPt10;
	}



	public void setLecPt10(String lecPt10) {
		this.lecPt10 = lecPt10;
	}



	public String getLecPt11() {
		return lecPt11;
	}



	public void setLecPt11(String lecPt11) {
		this.lecPt11 = lecPt11;
	}



	public String getLecPt12() {
		return lecPt12;
	}



	public void setLecPt12(String lecPt12) {
		this.lecPt12 = lecPt12;
	}



	public String getLecPt13() {
		return lecPt13;
	}



	public void setLecPt13(String lecPt13) {
		this.lecPt13 = lecPt13;
	}



	public String getLecPt14() {
		return lecPt14;
	}



	public void setLecPt14(String lecPt14) {
		this.lecPt14 = lecPt14;
	}



	public String getLecPt15() {
		return lecPt15;
	}



	public void setLecPt15(String lecPt15) {
		this.lecPt15 = lecPt15;
	}



	@Override
	public String toString() {
		return "Lecture [classNo=" + classNo + ", className=" + className + ", classProf=" + classProf + ", classType=" + classType + ", classSummary=" + classSummary
				+ ", classGoal=" + classGoal + ", lecMethod=" + lecMethod + ", evalMethod=" + evalMethod + ", assignment=" + assignment
				+ ", lecExperiment=" + lecExperiment + ", relatedLec=" + relatedLec + ", lecTextbook=" + lecTextbook + ", lecPt1=" + lecPt1
				+ ", lecPt2=" + lecPt2 + ", lecPt3=" + lecPt3 + ", lecPt4=" + lecPt4 + ", lecPt5=" + lecPt5 + ", lecPt6=" + lecPt6 + ", lecPt7="
				+ lecPt7 + ", lecPt8=" + lecPt8 + ", lecPt9=" + lecPt9 + ", lecPt10=" + lecPt10 + ", lecPt11=" + lecPt11 + ", lecPt12=" + lecPt12
				+ ", lecPt13=" + lecPt13 + ", lecPt14=" + lecPt14 + ", lecPt15=" + lecPt15 + "]";
	}





}
