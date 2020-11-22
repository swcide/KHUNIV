package com.kh.univ.testPage.model.vo;

import java.util.ArrayList;

public class Grade {
	
	private int semester;
	private String sNo;
	private String cNo;
	private double point;
	private String pNo;
	private ArrayList<Grade> gList ;
	
	
	public Grade() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Grade(int semester, String sNo, String cNo, double point, String pNo, ArrayList<Grade> gList) {
		super();
		this.semester = semester;
		this.sNo = sNo;
		this.cNo = cNo;
		this.point = point;
		this.pNo = pNo;
		this.gList = gList;
	}


	public int getSemester() {
		return semester;
	}


	public void setSemester(int semester) {
		this.semester = semester;
	}


	public String getsNo() {
		return sNo;
	}


	public void setsNo(String sNo) {
		this.sNo = sNo;
	}


	public String getcNo() {
		return cNo;
	}


	public void setcNo(String cNo) {
		this.cNo = cNo;
	}


	public double getPoint() {
		return point;
	}


	public void setPoint(double point) {
		this.point = point;
	}


	public String getpNo() {
		return pNo;
	}


	public void setpNo(String pNo) {
		this.pNo = pNo;
	}


	public ArrayList<Grade> getgList() {
		return gList;
	}


	public void setgList(ArrayList<Grade> gList) {
		this.gList = gList;
	}


	@Override
	public String toString() {
		return "Grade [semester=" + semester + ", sNo=" + sNo + ", cNo=" + cNo + ", point=" + point + ", pNo=" + pNo
				+ ", gList=" + gList + "]";
	}



	
}
