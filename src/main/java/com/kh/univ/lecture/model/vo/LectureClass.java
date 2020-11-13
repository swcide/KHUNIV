package com.kh.univ.lecture.model.vo;

public class LectureClass {
	
	protected String classNo; 		    // 과목번호 					tb-class
	protected String className;			// 과목명						tb-class
	protected String lecAttendance;	    // 출석 					tb-class-detail
	protected String lecLearningRate;     // 학습률					tb-class-detail
	protected int Attendees;			    	// 수강인원				tb-class-detail
	protected String classSummary;		// 교과목개요				tb_lectuerPlan
	protected String classImg; 			//과목사진					tb-class
	protected String profName; 			 //교수이름					tb-class-professor join tb-professor
	protected String profEmail; 			//교수이메일					tb-class-professor join tb-professor
	protected String deptName; 			//학과이름					tb-department
	
	
	
	public LectureClass() {
		
	}

	public LectureClass(String classNo, String className, String lecAttendance, String lecLearningRate, int attendees, String classSummary, String classImg, String profName, String profEmail,
			String deptName) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.lecAttendance = lecAttendance;
		this.lecLearningRate = lecLearningRate;
		Attendees = attendees;
		this.classSummary = classSummary;
		this.classImg = classImg;
		this.profName = profName;
		this.profEmail = profEmail;
		this.deptName = deptName;
	}

	public String getClassNo()
		{
			return classNo;
		}

	public void setClassNo(String classNo)
		{
			this.classNo = classNo;
		}

	public String getClassName()
		{
			return className;
		}

	public void setClassName(String className)
		{
			this.className = className;
		}

	public String getLecAttendance()
		{
			return lecAttendance;
		}

	public void setLecAttendance(String lecAttendance)
		{
			this.lecAttendance = lecAttendance;
		}

	public String getLecLearningRate()
		{
			return lecLearningRate;
		}

	public void setLecLearningRate(String lecLearningRate)
		{
			this.lecLearningRate = lecLearningRate;
		}

	public int getAttendees()
		{
			return Attendees;
		}

	public void setAttendees(int attendees)
		{
			Attendees = attendees;
		}

	public String getClassSummary()
		{
			return classSummary;
		}

	public void setClassSummary(String classSummary)
		{
			this.classSummary = classSummary;
		}

	public String getClassImg()
		{
			return classImg;
		}

	public void setClassImg(String classImg)
		{
			this.classImg = classImg;
		}

	public String getProfName()
		{
			return profName;
		}

	public void setProfName(String profName)
		{
			this.profName = profName;
		}

	public String getProfEmail()
		{
			return profEmail;
		}

	public void setProfEmail(String profEmail)
		{
			this.profEmail = profEmail;
		}

	public String getDeptName()
		{
			return deptName;
		}

	public void setDeptName(String deptName)
		{
			this.deptName = deptName;
		}

	@Override
	public String toString()
		{
			return "LectureClass [classNo=" + classNo + ", className=" + className + ", lecAttendance=" + lecAttendance + ", lecLearningRate=" + lecLearningRate + ", Attendees=" + Attendees
					+ ", classSummary=" + classSummary + ", classImg=" + classImg + ", profName=" + profName + ", profEmail=" + profEmail + ", deptName=" + deptName + "]";
		}



	

	
}
