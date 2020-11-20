package com.kh.univ.ad_Register.model.vo;

import java.util.Date;

public class grdExp {
	
	private String sNo; //학번
	private String CurrentState;//현재 유예/자퇴상태 (관리자업데이트부분)
	private String deptName; // 학과명
	private String sName; //학생이름
	private String semester; //학기 (학년)
	private String grdDelayStatus; //휴학신청상태 (학생업데이트부분)
	private String expStatus; //자퇴신청상태(학생업데이트부분)
	private String grdExpFileName; //첨부파일
	private Date expDate; //자퇴일
	private Date grdDelayDate; //유예일
	public grdExp() {
		super();
	}
	public grdExp(String sNo, String currentState, String deptName, String sName, String semester, String grdDelayStatus, String expStatus, String grdExpFileName, Date expDate, Date grdDelayDate) {
		super();
		this.sNo = sNo;
		CurrentState = currentState;
		this.deptName = deptName;
		this.sName = sName;
		this.semester = semester;
		this.grdDelayStatus = grdDelayStatus;
		this.expStatus = expStatus;
		this.grdExpFileName = grdExpFileName;
		this.expDate = expDate;
		this.grdDelayDate = grdDelayDate;
	}
	public String getsNo()
		{
			return sNo;
		}
	public void setsNo(String sNo)
		{
			this.sNo = sNo;
		}
	public String getCurrentState()
		{
			return CurrentState;
		}
	public void setCurrentState(String currentState)
		{
			CurrentState = currentState;
		}
	public String getDeptName()
		{
			return deptName;
		}
	public void setDeptName(String deptName)
		{
			this.deptName = deptName;
		}
	public String getsName()
		{
			return sName;
		}
	public void setsName(String sName)
		{
			this.sName = sName;
		}
	public String getSemester()
		{
			return semester;
		}
	public void setSemester(String semester)
		{
			this.semester = semester;
		}
	public String getGrdDelayStatus()
		{
			return grdDelayStatus;
		}
	public void setGrdDelayStatus(String grdDelayStatus)
		{
			this.grdDelayStatus = grdDelayStatus;
		}
	public String getExpStatus()
		{
			return expStatus;
		}
	public void setExpStatus(String expStatus)
		{
			this.expStatus = expStatus;
		}
	public String getGrdExpFileName()
		{
			return grdExpFileName;
		}
	public void setGrdExpFileName(String grdExpFileName)
		{
			this.grdExpFileName = grdExpFileName;
		}
	public Date getExpDate()
		{
			return expDate;
		}
	public void setExpDate(Date expDate)
		{
			this.expDate = expDate;
		}
	public Date getGrdDelayDate()
		{
			return grdDelayDate;
		}
	public void setGrdDelayDate(Date grdDelayDate)
		{
			this.grdDelayDate = grdDelayDate;
		}
	@Override
	public String toString()
		{
			return "grdExp [sNo=" + sNo + ", CurrentState=" + CurrentState + ", deptName=" + deptName + ", sName=" + sName + ", semester=" + semester + ", grdDelayStatus=" + grdDelayStatus
					+ ", expStatus=" + expStatus + ", grdExpFileName=" + grdExpFileName + ", expDate=" + expDate + ", grdDelayDate=" + grdDelayDate + "]";
		}

	
	
}
