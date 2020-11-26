package com.kh.univ.ad_Register.model.vo;

import java.sql.Date;

public class semesterPoint {
private String sNo;
private String semYear;
private String semNo;
private String cNo;
private String cType;
private double mTest;
private double fTest;
private double report;
private int attendance;
private double point;
private String pNo;
private int count;
private double avgPoint;
private String profName;
private String deptName;
private String sName;
private String cName;
private Date sysdate;


public semesterPoint() {}


public semesterPoint(String sNo, String semYear, String semNo, String cNo, String cType, double mTest, double fTest, double report, int attendance, double point, String pNo, int count,
		double avgPoint, String profName, String deptName, String sName, String cName, Date sysdate) {
	super();
	this.sNo = sNo;
	this.semYear = semYear;
	this.semNo = semNo;
	this.cNo = cNo;
	this.cType = cType;
	this.mTest = mTest;
	this.fTest = fTest;
	this.report = report;
	this.attendance = attendance;
	this.point = point;
	this.pNo = pNo;
	this.count = count;
	this.avgPoint = avgPoint;
	this.profName = profName;
	this.deptName = deptName;
	this.sName = sName;
	this.cName = cName;
	this.sysdate = sysdate;
}


public String getsNo()
	{
		return sNo;
	}


public void setsNo(String sNo)
	{
		this.sNo = sNo;
	}


public String getSemYear()
	{
		return semYear;
	}


public void setSemYear(String semYear)
	{
		this.semYear = semYear;
	}


public String getSemNo()
	{
		return semNo;
	}


public void setSemNo(String semNo)
	{
		this.semNo = semNo;
	}


public String getcNo()
	{
		return cNo;
	}


public void setcNo(String cNo)
	{
		this.cNo = cNo;
	}


public String getcType()
	{
		return cType;
	}


public void setcType(String cType)
	{
		this.cType = cType;
	}


public double getmTest()
	{
		return mTest;
	}


public void setmTest(double mTest)
	{
		this.mTest = mTest;
	}


public double getfTest()
	{
		return fTest;
	}


public void setfTest(double fTest)
	{
		this.fTest = fTest;
	}


public double getReport()
	{
		return report;
	}


public void setReport(double report)
	{
		this.report = report;
	}


public int getAttendance()
	{
		return attendance;
	}


public void setAttendance(int attendance)
	{
		this.attendance = attendance;
	}


public double getPoint()
	{
		return point;
	}


public void setPoint(double point)
	{
		this.point = point;
	}


public String getpNo()
	{
		return pNo;
	}


public void setpNo(String pNo)
	{
		this.pNo = pNo;
	}


public int getCount()
	{
		return count;
	}


public void setCount(int count)
	{
		this.count = count;
	}


public double getAvgPoint()
	{
		return avgPoint;
	}


public void setAvgPoint(double avgPoint)
	{
		this.avgPoint = avgPoint;
	}


public String getProfName()
	{
		return profName;
	}


public void setProfName(String profName)
	{
		this.profName = profName;
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


public String getcName()
	{
		return cName;
	}


public void setcName(String cName)
	{
		this.cName = cName;
	}


public Date getSysdate()
	{
		return sysdate;
	}


public void setSysdate(Date sysdate)
	{
		this.sysdate = sysdate;
	}


@Override
public String toString()
	{
		return "semesterPoint [sNo=" + sNo + ", semYear=" + semYear + ", semNo=" + semNo + ", cNo=" + cNo + ", cType=" + cType + ", mTest=" + mTest + ", fTest=" + fTest + ", report=" + report
				+ ", attendance=" + attendance + ", point=" + point + ", pNo=" + pNo + ", count=" + count + ", avgPoint=" + avgPoint + ", profName=" + profName + ", deptName=" + deptName + ", sName="
				+ sName + ", cName=" + cName + ", sysdate=" + sysdate + "]";
	}









}
