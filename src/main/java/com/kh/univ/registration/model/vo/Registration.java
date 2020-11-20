package com.kh.univ.registration.model.vo;

public class Registration {
	
	private String cNo;       // 강의 번호
	private String cName;     // 강의 이름
	private String cType;     // 강의 타입  
	private String pName;     // 교수 이름
//	private String sNo;       // 학생 번호
	private int credit;       // 학점
	private String dNo;       // 학과번호 
	private String dName;     // 학과이름
	
	
	
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Registration(String cNo, String cName, String cType, String pName, int credit, String dNo, String dName) {
		super();
		this.cNo = cNo;
		this.cName = cName;
		this.cType = cType;
		this.pName = pName;
		this.credit = credit;
		this.dNo = dNo;
		this.dName = dName;
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
		return "Registration [cNo=" + cNo + ", cName=" + cName + ", cType=" + cType + ", pName=" + pName + ", credit="
				+ credit + ", dNo=" + dNo + ", dName=" + dName + "]";
	}

	

}
