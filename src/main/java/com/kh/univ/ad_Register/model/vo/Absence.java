package com.kh.univ.ad_Register.model.vo;

import java.util.Date;

public class Absence {

	private String absenceFileName; //첨부파일
	private String absenceStatus; //휴학신청상태 (학생업데이트부분)
	private String returnStatus; //복학신청상태(학생업데이트부분)
	private String sName; //학생이름
	private String sNo; //학번
	private String semester; //학기 (학년)
	private String deptName; // 학과명
	private String CurrentState; //현재 휴/복학상태 (관리자업데이트부분)
	private Date absDate; //휴학일자
	private String absReason; //휴학사유
	
	
	public Absence() {}


	public Absence(String absenceFileName, String absenceStatus, String returnStatus, String sName, String sNo, String semester, String deptName, String currentState, Date absDate, String absReason) {
		super();
		this.absenceFileName = absenceFileName;
		this.absenceStatus = absenceStatus;
		this.returnStatus = returnStatus;
		this.sName = sName;
		this.sNo = sNo;
		this.semester = semester;
		this.deptName = deptName;
		CurrentState = currentState;
		this.absDate = absDate;
		this.absReason = absReason;
	}


	public String getAbsenceFileName()
		{
			return absenceFileName;
		}


	public void setAbsenceFileName(String absenceFileName)
		{
			this.absenceFileName = absenceFileName;
		}


	public String getAbsenceStatus()
		{
			return absenceStatus;
		}


	public void setAbsenceStatus(String absenceStatus)
		{
			this.absenceStatus = absenceStatus;
		}


	public String getReturnStatus()
		{
			return returnStatus;
		}


	public void setReturnStatus(String returnStatus)
		{
			this.returnStatus = returnStatus;
		}


	public String getsName()
		{
			return sName;
		}


	public void setsName(String sName)
		{
			this.sName = sName;
		}


	public String getsNo()
		{
			return sNo;
		}


	public void setsNo(String sNo)
		{
			this.sNo = sNo;
		}


	public String getSemester()
		{
			return semester;
		}


	public void setSemester(String semester)
		{
			this.semester = semester;
		}


	public String getDeptName()
		{
			return deptName;
		}


	public void setDeptName(String deptName)
		{
			this.deptName = deptName;
		}


	public String getCurrentState()
		{
			return CurrentState;
		}


	public void setCurrentState(String currentState)
		{
			CurrentState = currentState;
		}


	public Date getAbsDate()
		{
			return absDate;
		}


	public void setAbsDate(Date absDate)
		{
			this.absDate = absDate;
		}


	public String getAbsReason()
		{
			return absReason;
		}


	public void setAbsReason(String absReason)
		{
			this.absReason = absReason;
		}


	@Override
	public String toString()
		{
			return "Absence [absenceFileName=" + absenceFileName + ", absenceStatus=" + absenceStatus + ", returnStatus=" + returnStatus + ", sName=" + sName + ", sNo=" + sNo + ", semester="
					+ semester + ", deptName=" + deptName + ", CurrentState=" + CurrentState + ", absDate=" + absDate + ", absReason=" + absReason + "]";
		}
	
	

	
}
