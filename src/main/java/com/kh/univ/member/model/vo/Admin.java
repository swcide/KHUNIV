package com.kh.univ.member.model.vo;

public class Admin
	{
	private String aId; 
	private String aPwd;
	
	
	
	
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Admin(String aId, String aPwd) {
		super();
		this.aId = aId;
		this.aPwd = aPwd;
	}

	public String getaId() {
		return aId;
	}
	public void setaId(String aId) {
		this.aId = aId;
	}
	public String getaPwd() {
		return aPwd;
	}
	public void setaPwd(String aPwd) {
		this.aPwd = aPwd;
	}

	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aPwd=" + aPwd + "]";
	} 
	
	
	}
