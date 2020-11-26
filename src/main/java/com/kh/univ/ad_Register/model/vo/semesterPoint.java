package com.kh.univ.ad_Register.model.vo;

public class semesterPoint {
private String sNo;
private String semYear;
private String semNo;
private String cNo;
private String cType;
private String mTest;
private String fTest;
private String report;
private String attendance;
private String point;
private String pNo;
private String count;
private String avgPoint;

public semesterPoint() {}

public semesterPoint(String sNo, String semYear, String semNo, String cNo, String cType, String mTest, String fTest, String report, String attendance, String point, String pNo, String count,
		String avgPoint) {
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

public String getmTest()
	{
		return mTest;
	}

public void setmTest(String mTest)
	{
		this.mTest = mTest;
	}

public String getfTest()
	{
		return fTest;
	}

public void setfTest(String fTest)
	{
		this.fTest = fTest;
	}

public String getReport()
	{
		return report;
	}

public void setReport(String report)
	{
		this.report = report;
	}

public String getAttendance()
	{
		return attendance;
	}

public void setAttendance(String attendance)
	{
		this.attendance = attendance;
	}

public String getPoint()
	{
		return point;
	}

public void setPoint(String point)
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

public String getCount()
	{
		return count;
	}

public void setCount(String count)
	{
		this.count = count;
	}

public String getAvgPoint()
	{
		return avgPoint;
	}

public void setAvgPoint(String avgPoint)
	{
		this.avgPoint = avgPoint;
	}

@Override
public String toString()
	{
		return "semesterPoint [sNo=" + sNo + ", semYear=" + semYear + ", semNo=" + semNo + ", cNo=" + cNo + ", cType=" + cType + ", mTest=" + mTest + ", fTest=" + fTest + ", report=" + report
				+ ", attendance=" + attendance + ", point=" + point + ", pNo=" + pNo + ", count=" + count + ", avgPoint=" + avgPoint + "]";
	}



}
