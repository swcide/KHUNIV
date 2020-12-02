package com.kh.univ.testPage.model.vo;

public class HomeworkGrade {
	
	private String hNo;
	private String sNo;
	private String pNo;
	private String cNo;
	private int point;
	private int lecNo;
	
	
	
	
	public HomeworkGrade() {
		super();
		// TODO Auto-generated constructor stub
	}




	public HomeworkGrade(String hNo, String sNo, String pNo, String cNo, int point, int lecNo) {
		super();
		this.hNo = hNo;
		this.sNo = sNo;
		this.pNo = pNo;
		this.cNo = cNo;
		this.point = point;
		this.lecNo = lecNo;
	}




	public String gethNo() {
		return hNo;
	}




	public void sethNo(String hNo) {
		this.hNo = hNo;
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




	public int getPoint() {
		return point;
	}




	public void setPoint(int point) {
		this.point = point;
	}




	public int getLecNo() {
		return lecNo;
	}




	public void setLecNo(int lecNo) {
		this.lecNo = lecNo;
	}




	@Override
	public String toString() {
		return "HomeworkGrade [hNo=" + hNo + ", sNo=" + sNo + ", pNo=" + pNo + ", cNo=" + cNo + ", point=" + point
				+ ", lecNo=" + lecNo + "]";
	}




}
