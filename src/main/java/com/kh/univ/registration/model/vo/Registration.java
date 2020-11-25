package com.kh.univ.registration.model.vo;

import java.util.ArrayList;

import com.kh.univ.testPage.model.vo.Grade;

public class Registration {
	
	private int semester;     // 학기 
	private String cNo;       // 강의 번호
	private String cName;     // 강의 이름
	private String cType;     // 강의 타입  
	private String pName;     // 교수 이름
	private String pNo;     // 교수 이름
	private String sNo;       // 학생 번호
	private int credit;       // 학점
	private String dNo;       // 학과번호 
	private String dName;     // 학과이름
	
	
	
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Registration(int semester, String cNo, String cName, String cType, String pName, String pNo, String sNo,
			int credit, String dNo, String dName) {
		super();
		this.semester = semester;
		this.cNo = cNo;
		this.cName = cName;
		this.cType = cType;
		this.pName = pName;
		this.pNo = pNo;
		this.sNo = sNo;
		this.credit = credit;
		this.dNo = dNo;
		this.dName = dName;
	}



	public int getSemester() {
		return semester;
	}



	public void setSemester(int semester) {
		this.semester = semester;
	}



	public String getcNo() {
		return cNo;
	}



	public void setcNo(String cNo) {
		this.cNo = cNo;
	}



	public String getcName() {
		return cName;
	}



	public void setcName(String cName) {
		this.cName = cName;
	}



	public String getcType() {
		return cType;
	}



	public void setcType(String cType) {
		this.cType = cType;
	}



	public String getpName() {
		return pName;
	}



	public void setpName(String pName) {
		this.pName = pName;
	}



	public String getpNo() {
		return pNo;
	}



	public void setpNo(String pNo) {
		this.pNo = pNo;
	}



	public String getsNo() {
		return sNo;
	}



	public void setsNo(String sNo) {
		this.sNo = sNo;
	}



	public int getCredit() {
		return credit;
	}



	public void setCredit(int credit) {
		this.credit = credit;
	}



	public String getdNo() {
		return dNo;
	}



	public void setdNo(String dNo) {
		this.dNo = dNo;
	}



	public String getdName() {
		return dName;
	}



	public void setdName(String dName) {
		this.dName = dName;
	}



	@Override
	public String toString() {
		return "Registration [semester=" + semester + ", cNo=" + cNo + ", cName=" + cName + ", cType=" + cType
				+ ", pName=" + pName + ", pNo=" + pNo + ", sNo=" + sNo + ", credit=" + credit + ", dNo=" + dNo
				+ ", dName=" + dName + "]";
	}



	



}
