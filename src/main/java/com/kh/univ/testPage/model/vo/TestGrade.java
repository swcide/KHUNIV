package com.kh.univ.testPage.model.vo;

public class TestGrade {
	private String tNo;
	private String sNo;
	private String pNo;
	private String cNo;
	private String rTime;
	private int point;
	
	
	
	public TestGrade() {
		super();
		// TODO Auto-generated constructor stub
	}



	public TestGrade(String tNo, String sNo, String pNo, String cNo, String rTime, int point) {
		super();
		this.tNo = tNo;
		this.sNo = sNo;
		this.pNo = pNo;
		this.cNo = cNo;
		this.rTime = rTime;
		this.point = point;
	}



	public String gettNo() {
		return tNo;
	}



	public void settNo(String tNo) {
		this.tNo = tNo;
	}



	public String getsNo() {
		return sNo;
	}



	public void setsNo(String sNo) {
		this.sNo = sNo;
	}



	public String getpNo() {
		return pNo;
	}



	public void setpNo(String pNo) {
		this.pNo = pNo;
	}



	public String getcNo() {
		return cNo;
	}



	public void setcNo(String cNo) {
		this.cNo = cNo;
	}



	public String getrTime() {
		return rTime;
	}



	public void setrTime(String rTime) {
		this.rTime = rTime;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



	@Override
	public String toString() {
		return "TestGrade [tNo=" + tNo + ", sNo=" + sNo + ", pNo=" + pNo + ", cNo=" + cNo + ", rTime=" + rTime
				+ ", point=" + point + "]";
	}



	
	
	
}
