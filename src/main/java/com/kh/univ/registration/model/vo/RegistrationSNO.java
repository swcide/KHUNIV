package com.kh.univ.registration.model.vo;

public class RegistrationSNO {
	
	private String cNo ;
	private String sNo ;
	
	
	
	public RegistrationSNO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public RegistrationSNO(String cNo, String sNo) {
		super();
		this.cNo = cNo;
		this.sNo = sNo;
	}



	public String getcNo() {
		return cNo;
	}



	public void setcNo(String cNo) {
		this.cNo = cNo;
	}



	public String getsNo() {
		return sNo;
	}



	public void setsNo(String sNo) {
		this.sNo = sNo;
	}



	@Override
	public String toString() {
		return "RegistrationSNO [cNo=" + cNo + ", sNo=" + sNo + "]";
	}

	
}
