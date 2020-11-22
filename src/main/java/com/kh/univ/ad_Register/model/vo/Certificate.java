package com.kh.univ.ad_Register.model.vo;

public class Certificate {

	private int seqPrint;
	private String  deptName;
	private String sNo;
	private String sName;
	private int semester;
	private int year;
	private int month;
	private int day;
	private int sysYear;
	private int sysMonth;
	private int sysDay;
	
	
	public Certificate() {
		super();
	}


	public Certificate(int seqPrint, String deptName, String sNo, String sName, int semester, int year, int month, int day, int sysYear, int sysMonth, int sysDay) {
		super();
		this.seqPrint = seqPrint;
		this.deptName = deptName;
		this.sNo = sNo;
		this.sName = sName;
		this.semester = semester;
		this.year = year;
		this.month = month;
		this.day = day;
		this.sysYear = sysYear;
		this.sysMonth = sysMonth;
		this.sysDay = sysDay;
	}



	public int getSeqPrint()
		{
			return seqPrint;
		}



	public void setSeqPrint(int seqPrint)
		{
			this.seqPrint = seqPrint;
		}



	public String getDeptName()
		{
			return deptName;
		}



	public void setDeptName(String deptName)
		{
			this.deptName = deptName;
		}



	public String getsNo()
		{
			return sNo;
		}



	public void setsNo(String sNo)
		{
			this.sNo = sNo;
		}



	public String getsName()
		{
			return sName;
		}



	public void setsName(String sName)
		{
			this.sName = sName;
		}



	public int getSemester()
		{
			return semester;
		}



	public void setSemester(int semester)
		{
			this.semester = semester;
		}



	public int getYear()
		{
			return year;
		}



	public void setYear(int year)
		{
			this.year = year;
		}



	public int getMonth()
		{
			return month;
		}



	public void setMonth(int month)
		{
			this.month = month;
		}



	public int getDay()
		{
			return day;
		}



	public void setDay(int day)
		{
			this.day = day;
		}



	public int getSysYear()
		{
			return sysYear;
		}



	public void setSysYear(int sysYear)
		{
			this.sysYear = sysYear;
		}



	public int getSysMonth()
		{
			return sysMonth;
		}



	public void setSysMonth(int sysMonth)
		{
			this.sysMonth = sysMonth;
		}



	public int getSysDay()
		{
			return sysDay;
		}



	public void setSysDay(int sysDay)
		{
			this.sysDay = sysDay;
		}



	@Override
	public String toString()
		{
			return "Certificate [seqPrint=" + seqPrint + ", deptName=" + deptName + ", sNo=" + sNo + ", sName=" + sName + ", semester=" + semester + ", year=" + year + ", month=" + month + ", day="
					+ day + ", sysYear=" + sysYear + ", sysMonth=" + sysMonth + ", sysDay=" + sysDay + "]";
		}


	
	
	
}
