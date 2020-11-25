package com.kh.univ.lecture.model.vo;

import java.util.Date;

public class Assignment  {
	
	private String classNo;
	private String className;
	private String sNo;
	private String sName;
	private String assignExpl;
	private String assignFile;
	private Date submitDate;
	
	public Assignment() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Assignment(String classNo, String className, String sNo, String sName, String assignExpl, String assignFile,
			Date submitDate) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.sNo = sNo;
		this.sName = sName;
		this.assignExpl = assignExpl;
		this.assignFile = assignFile;
		this.submitDate = submitDate;
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



	public String getsNo() {
		return sNo;
	}

	public void setsNo(String sNo) {
		this.sNo = sNo;
	}

	public String getAssignExpl() {
		return assignExpl;
	}

	public void setAssignExpl(String assignExpl) {
		this.assignExpl = assignExpl;
	}

	public String getAssignFileName() {
		return assignFile;
	}

	public void setAssignFileName(String assignFileName) {
		this.assignFile = assignFileName;
	}

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}



	public String getsName() {
		return sName;
	}



	public void setsName(String sName) {
		this.sName = sName;
	}



	public String getAssignFile() {
		return assignFile;
	}



	public void setAssignFile(String assignFile) {
		this.assignFile = assignFile;
	}



	@Override
	public String toString() {
		return "Assignment [classNo=" + classNo + ", className=" + className + ", sNo=" + sNo + ", sName=" + sName
				+ ", assignExpl=" + assignExpl + ", assignFile=" + assignFile + ", submitDate=" + submitDate + "]";
	}


	
	

}
